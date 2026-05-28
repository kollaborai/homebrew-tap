#!/usr/bin/env python3
"""Update the Kollab Homebrew formula from PyPI wheel metadata."""

from __future__ import annotations

import argparse
import json
import re
import sys
import urllib.error
import urllib.request
from pathlib import Path


WORKSPACE_PACKAGES = (
    "kollabor-agent",
    "kollabor-ai",
    "kollabor-config",
    "kollabor-engine",
    "kollabor-events",
    "kollabor-plugins",
    "kollabor-rpc",
    "kollabor-tui",
    "kollabor-webui",
)


def normalize_version(version: str) -> str:
    cleaned = version.strip()
    if cleaned.startswith("v"):
        cleaned = cleaned[1:]
    if not re.fullmatch(r"\d+\.\d+\.\d+(?:[a-zA-Z0-9_.-]+)?", cleaned):
        raise SystemExit(f"invalid version: {version!r}")
    return cleaned


def get_wheel(project: str, version: str) -> tuple[str, str]:
    url = f"https://pypi.org/pypi/{project}/{version}/json"
    try:
        with urllib.request.urlopen(url, timeout=30) as response:
            data = json.load(response)
    except urllib.error.HTTPError as exc:
        raise SystemExit(f"pypi lookup failed for {project} {version}: {exc}") from exc

    wheels = [
        item
        for item in data.get("urls", [])
        if item.get("packagetype") == "bdist_wheel"
        and item.get("filename", "").endswith("py3-none-any.whl")
    ]
    if not wheels:
        raise SystemExit(f"no py3-none-any wheel found for {project} {version}")

    wheel = sorted(wheels, key=lambda item: item["filename"])[0]
    return wheel["url"], wheel["digests"]["sha256"]


def replace_one(pattern: str, replacement: str, text: str, label: str) -> str:
    updated, count = re.subn(pattern, replacement, text, count=1, flags=re.MULTILINE)
    if count != 1:
        raise SystemExit(f"could not update formula block for {label}")
    return updated


def update_formula(text: str, version: str) -> str:
    root_url, root_sha = get_wheel("kollab", version)
    text = replace_one(
        r'(^  url ")[^"]+("\n  sha256 ")[^"]+(")',
        rf"\g<1>{root_url}\g<2>{root_sha}\g<3>",
        text,
        "kollab",
    )

    for package in WORKSPACE_PACKAGES:
        package_url, package_sha = get_wheel(package, version)
        escaped = re.escape(package)
        text = replace_one(
            rf'(^  resource "{escaped}" do\n    url ")[^"]+("\n    sha256 ")[^"]+(")',
            rf"\g<1>{package_url}\g<2>{package_sha}\g<3>",
            text,
            package,
        )

    return text


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
