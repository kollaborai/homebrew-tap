#!/usr/bin/env python3
"""Update the Kollab Homebrew formula from PyPI wheel metadata.

Resilience notes
----------------
``twine upload`` returns before PyPI's indexes finish propagating, so a
``repository_dispatch`` that fires immediately after a release can race ahead
of availability and fail with "No matching distribution found" (this is what
froze the tap at 0.5.14). Two mechanisms guard against drift:

* ``wait_for_pypi`` / the pip-download retry below poll until the requested
  version (root + every pinned sub-package) is actually resolvable, so the
  fast dispatch path no longer dies on propagation lag.
* ``get_latest_version`` + ``--latest`` let a scheduled job reconcile the
  formula against whatever PyPI currently calls latest, so even a *missed* or
  permanently-failed dispatch self-heals on the next cron tick.
"""

from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
import tempfile
import time
import urllib.error
import urllib.request
from pathlib import Path


TARGET_PLATFORM = "macosx_11_0_arm64"
TARGET_PYTHON_VERSION = "312"
TARGET_ABI = "cp312"

PROJECT = "kollab"

# PyPI propagation budget: poll up to RETRY_ATTEMPTS times, RETRY_SLEEP apart
# (~5 min total) before giving up. Long-published versions resolve on the
# first try, so this only adds latency right after a fresh release.
RETRY_ATTEMPTS = 20
RETRY_SLEEP_SECONDS = 15


def _fetch_json(url: str) -> dict:
    with urllib.request.urlopen(url, timeout=30) as response:
        return json.load(response)


def get_latest_version(project: str = PROJECT) -> str:
    """Return the version PyPI currently considers latest for ``project``."""
    try:
        data = _fetch_json(f"https://pypi.org/pypi/{project}/json")
    except urllib.error.URLError as exc:
        raise SystemExit(f"could not query PyPI for latest {project}: {exc}") from exc
    version = (data.get("info") or {}).get("version", "").strip()
    if not version:
        raise SystemExit(f"could not determine latest {project} version from PyPI")
    return version


def wait_for_pypi(project: str, version: str) -> None:
    """Block until ``project==version`` exposes a py3-none-any wheel on PyPI.

    Tolerates the post-upload window where the per-version JSON 404s or has no
    artifacts yet. Raises after the retry budget is exhausted.
    """
    url = f"https://pypi.org/pypi/{project}/{version}/json"
    for attempt in range(1, RETRY_ATTEMPTS + 1):
        try:
            data = _fetch_json(url)
            wheels = [
                item
                for item in data.get("urls", [])
                if item.get("packagetype") == "bdist_wheel"
                and item.get("filename", "").endswith("py3-none-any.whl")
            ]
            if wheels:
                return
        except urllib.error.HTTPError as exc:
            if exc.code != 404:
                raise SystemExit(
                    f"pypi lookup failed for {project} {version}: {exc}"
                ) from exc
        except urllib.error.URLError:
            pass

        if attempt < RETRY_ATTEMPTS:
            print(
                f"waiting for {project}=={version} to appear on PyPI "
                f"(attempt {attempt}/{RETRY_ATTEMPTS})...",
                file=sys.stderr,
            )
            time.sleep(RETRY_SLEEP_SECONDS)

    raise SystemExit(
        f"{project}=={version} not resolvable on PyPI after "
        f"{RETRY_ATTEMPTS} attempts"
    )


def normalize_version(version: str) -> str:
    cleaned = version.strip()
    if cleaned.startswith("v"):
        cleaned = cleaned[1:]
    if not re.fullmatch(r"\d+\.\d+\.\d+(?:[a-zA-Z0-9_.-]+)?", cleaned):
        raise SystemExit(f"invalid version: {version!r}")
    return cleaned


def get_wheel(project: str, version: str, filename: str | None = None) -> tuple[str, str]:
    url = f"https://pypi.org/pypi/{project}/{version}/json"
    try:
        with urllib.request.urlopen(url, timeout=30) as response:
            data = json.load(response)
    except urllib.error.HTTPError as exc:
        raise SystemExit(f"pypi lookup failed for {project} {version}: {exc}") from exc

    wheels = [item for item in data.get("urls", []) if item.get("packagetype") == "bdist_wheel"]
    if filename is not None:
        wheels = [item for item in wheels if item.get("filename") == filename]
    else:
        wheels = [item for item in wheels if item.get("filename", "").endswith("py3-none-any.whl")]
    if not wheels:
        label = filename or "py3-none-any wheel"
        raise SystemExit(f"no {label} found for {project} {version}")

    wheel = sorted(wheels, key=lambda item: item["filename"])[0]
    return wheel["url"], wheel["digests"]["sha256"]


def replace_one(pattern: str, replacement: str, text: str, label: str) -> str:
    updated, count = re.subn(pattern, replacement, text, count=1, flags=re.MULTILINE)
    if count != 1:
        raise SystemExit(f"could not update formula block for {label}")
    return updated


def parse_wheel_filename(filename: str) -> tuple[str, str]:
    if not filename.endswith(".whl"):
        raise SystemExit(f"not a wheel filename: {filename}")

    parts = filename[:-4].split("-")
    if len(parts) < 5:
        raise SystemExit(f"invalid wheel filename: {filename}")

    project = parts[0].replace("_", "-").replace(".", "-").lower()
    return project, parts[1]


def resolve_wheels(version: str) -> list[tuple[str, str, str]]:
    with tempfile.TemporaryDirectory(prefix="kollab-wheels-") as tmpdir:
        command = [
            sys.executable,
            "-m",
            "pip",
            "download",
            "--dest",
            tmpdir,
            "--only-binary=:all:",
            "--platform",
            TARGET_PLATFORM,
            "--python-version",
            TARGET_PYTHON_VERSION,
            "--implementation",
            "cp",
            "--abi",
            TARGET_ABI,
            f"kollab=={version}",
        ]

        # pip resolves against the simple index, which can lag behind the JSON
        # API right after a release. Retry until the whole pinned graph (root +
        # every sub-package) is downloadable instead of failing on the race.
        result = None
        for attempt in range(1, RETRY_ATTEMPTS + 1):
            result = subprocess.run(
                command,
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
                text=True,
                check=False,
            )
            if result.returncode == 0:
                break
            if attempt < RETRY_ATTEMPTS:
                print(
                    f"pip could not resolve kollab=={version} yet "
                    f"(attempt {attempt}/{RETRY_ATTEMPTS}); retrying...",
                    file=sys.stderr,
                )
                time.sleep(RETRY_SLEEP_SECONDS)

        if result is None or result.returncode != 0:
            print(result.stdout if result else "", file=sys.stderr)
            raise SystemExit("pip failed to resolve formula wheels")

        filenames = []
        for line in result.stdout.splitlines():
            if line.startswith("Saved ") and line.endswith(".whl"):
                filenames.append(Path(line.removeprefix("Saved ").strip()).name)

        if not filenames:
            filenames = [path.name for path in sorted(Path(tmpdir).glob("*.whl"))]

    resources = []
    seen = set()
    for filename in filenames:
        project, wheel_version = parse_wheel_filename(filename)
        if project == "kollab" or project in seen:
            continue

        url, sha = get_wheel(project, wheel_version, filename)
        resources.append((project, url, sha))
        seen.add(project)

    # Deterministic order so re-running on an unchanged version produces a
    # byte-identical formula -- otherwise pip's nondeterministic download order
    # would make the hourly self-heal churn a new commit every run.
    resources.sort(key=lambda item: item[0])
    return resources


def resource_block(name: str, url: str, sha: str) -> str:
    return f'  resource "{name}" do\n    url "{url}"\n    sha256 "{sha}"\n  end'


def replace_resources(text: str, resources: list[tuple[str, str, str]]) -> str:
    match = re.search(r'\n  resource "[^"]+" do\n', text)
    if not match:
        raise SystemExit("could not find first resource block")

    marker = "\n  def install"
    end = text.find(marker, match.start())
    if end == -1:
        raise SystemExit("could not find install block")

    blocks = "\n\n".join(resource_block(*resource) for resource in resources)
    return f"{text[:match.start()]}\n{blocks}\n{text[end:]}"


def update_formula(text: str, version: str) -> str:
    # Make sure the release has actually propagated before we read wheel
    # metadata, so a dispatch racing a fresh upload waits instead of failing.
    wait_for_pypi(PROJECT, version)

    root_url, root_sha = get_wheel("kollab", version)
    text = replace_one(
        r'(^  url ")[^"]+("\n  sha256 ")[^"]+(")',
        rf"\g<1>{root_url}\g<2>{root_sha}\g<3>",
        text,
        "kollab",
    )
    return replace_resources(text, resolve_wheels(version))


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--formula", default="Formula/kollab.rb")
    parser.add_argument(
        "--version",
        help="explicit version to publish; omit (or use --latest) to resolve from PyPI",
    )
    parser.add_argument(
        "--latest",
        action="store_true",
        help="resolve the latest version from PyPI (scheduled self-heal mode)",
    )
    parser.add_argument(
        "--print-latest",
        action="store_true",
        help="print the latest PyPI version and exit (used by the workflow)",
    )
    args = parser.parse_args()

    if args.print_latest:
        print(normalize_version(get_latest_version()))
        return 0

    if args.latest or not args.version:
        version = normalize_version(get_latest_version())
    else:
        version = normalize_version(args.version)

    formula_path = Path(args.formula)
    original = formula_path.read_text()
    updated = update_formula(original, version)

    formula_path.write_text(updated)
    print(f"updated {formula_path} to kollab {version}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
