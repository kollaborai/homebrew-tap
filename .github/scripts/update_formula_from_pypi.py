#!/usr/bin/env python3
"""Update the Kollab Homebrew formula from PyPI wheel metadata."""

from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
import tempfile
import urllib.error
import urllib.request
from pathlib import Path


TARGET_PLATFORM = "macosx_11_0_arm64"
TARGET_PYTHON_VERSION = "312"
TARGET_ABI = "cp312"


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
        result = subprocess.run(
            command,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            text=True,
            check=False,
        )
        if result.returncode != 0:
            print(result.stdout, file=sys.stderr)
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
    parser.add_argument("--version", required=True)
    args = parser.parse_args()

    version = normalize_version(args.version)
    formula_path = Path(args.formula)
    original = formula_path.read_text()
    updated = update_formula(original, version)

    formula_path.write_text(updated)
    print(f"updated {formula_path} to kollab {version}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
