#!/usr/bin/env python3
"""Collect evidence about the Bluetooth profiles bluez and PipeWire implement.

Writes a Markdown dossier that a model reads before auditing the Supported
Profiles table (data/profiles.yaml). Nothing here knows any profile by name:
every section is a pattern search or a listing over the whole tree, so it keeps
working when files move or are renamed. Each finding carries a file:line
reference so the model can cite it and a reviewer can follow it.

    evidence.py --bluez DIR --pipewire DIR [--data data/profiles.yaml] [--out evidence.md]

--data is read only for its `verified:` header, the upstream commits the table
was last checked against, so the dossier can list what changed since then.

A section that finds nothing says so; a section that fails says why. The
script only exits non-zero when a checkout is missing.
"""

import argparse
import datetime
import os
import re
import subprocess
import sys

import yaml

SKIP_DIRS = {".git", "unit", "emulator", "android", "test", "tests", "doc", "builddir", "build"}
HEX_VERSION = re.compile(r"(?i)(?<![a-z])(?:ver|version|spec)\w*\s*(?:=|\s)\s*(0x[0-9a-f]{4})\b")
COMPARISON = re.compile(r"[<>!=]=|[<>]")
BCD = re.compile(r"0x([0-9a-f]{2})([0-9a-f]{2})", re.IGNORECASE)


# --- helpers -----------------------------------------------------------------

def walk(root, exts=(".c", ".h"), skip=SKIP_DIRS):
    for dirpath, dirnames, filenames in os.walk(root):
        dirnames[:] = sorted(d for d in dirnames if d not in skip)
        for name in sorted(filenames):
            if name.endswith(exts):
                yield os.path.relpath(os.path.join(dirpath, name), root)


def read(root, rel):
    try:
        with open(os.path.join(root, rel), encoding="utf-8", errors="replace") as fh:
            return fh.read()
    except OSError:
        return ""


def line_of(text, offset):
    return text.count("\n", 0, offset) + 1


def strip_comments(text):
    """Blank out C comments, keeping every newline so line numbers stay right."""
    return re.sub(r"/\*.*?\*/", lambda m: "\n" * m.group(0).count("\n"), text, flags=re.DOTALL)


def bcd(value):
    match = BCD.fullmatch(value)
    if not match:
        return value
    major, minor = int(match.group(1), 16), int(match.group(2), 16)
    return f"{value} ({major:x}.{minor:x})"


def cap(lines, limit):
    if len(lines) <= limit:
        return lines
    return lines[:limit] + [f"- ... and {len(lines) - limit} more"]


def git(root, *args):
    try:
        return subprocess.run(["git", "-C", root, *args], check=True,
                              capture_output=True, text=True).stdout.strip()
    except (OSError, subprocess.CalledProcessError):
        return ""


def section(title, producer):
    try:
        lines = producer()
    except Exception as exc:  # the dossier must come out whatever happens
        lines = [f"(could not collect this section: {exc})"]
    if not lines:
        lines = ["(nothing found)"]
    return [f"## {title}", ""] + lines + [""]


def initializers(root, needle):
    """Yield (rel, line, name, body) for every `struct <needle> name = { ... };`."""
    regex = re.compile(r"struct\s+" + needle + r"\s+(\w+)\s*=\s*\{(.*?)\n\s*\};", re.DOTALL)
    for rel in walk(root, (".c",)):
        text = strip_comments(read(root, rel))
        if needle not in text:
            continue
        for match in regex.finditer(text):
            yield rel, line_of(text, match.start()), match.group(1), match.group(2)


def fields(body):
    """The scalar designated initializers of a struct body, function pointers left out."""
    out = []
    for name, value in re.findall(r"\.(\w+)\s*=\s*([^,\n]+)", body):
        value = value.strip()
        if re.fullmatch(r'"[^"]*"|[A-Z][A-Z0-9_]+|true|false|-?\d+|[\w\s|]+\|[\w\s|]+', value) \
                or re.fullmatch(r"[A-Z][A-Z0-9_]+(\s*\|\s*[A-Z][A-Z0-9_]+)*", value):
            out.append(f"{name}={value}")
    return ", ".join(out)


# --- bluez sections ----------------------------------------------------------

def bluez_profiles(root):
    lines = []
    for rel, line, name, body in initializers(root, "btd_profile"):
        if fields(body):
            lines.append(f"- {rel}:{line} `{name}`: {fields(body)}")
    return lines


def bluez_sdp_tables(root):
    """Designated-initializer tables that carry a .uuid, with their versions."""
    lines = []
    block = re.compile(r"\{\s*((?:\.\w+\s*=\s*[^,{}]+,?\s*)+)\}", re.DOTALL)
    for rel in walk(root, (".c",)):
        text = strip_comments(read(root, rel))
        if ".uuid" not in text:
            continue
        for match in block.finditer(text):
            body = match.group(1)
            if ".uuid" not in body:
                continue
            values = dict(re.findall(r"\.(\w+)\s*=\s*([^,\n]+)", body))
            parts = [f"uuid={values.get('uuid', '?').strip()}"]
            for key in ("name", "remote_uuid", "version", "priority", "auto_connect", "authorize"):
                if key in values:
                    value = values[key].strip()
                    parts.append(f"{key}={bcd(value) if key == 'version' else value}")
            lines.append(f"- {rel}:{line_of(text, match.start())} " + ", ".join(parts))
    return cap(lines, 80)


def bluez_versions(root):
    lines = []
    for rel in walk(root):
        top = rel.split("/")[0]
        if top not in ("profiles", "obexd", "src", "mesh", "plugins"):
            continue
        for number, text in enumerate(read(root, rel).split("\n"), 1):
            match = HEX_VERSION.search(text)
            if not match or COMPARISON.search(text.split("0x")[0]) or "#define SDP_ATTR" in text:
                continue
            lines.append(f"- {rel}:{number} `{text.strip()}` {bcd(match.group(1))}")
    return cap(lines, 80)


def bluez_gating(root):
    lines = []
    trigger = re.compile(r"btd_opts\.(experimental|testing)|kernel_experimental|ENABLE_EXPERIMENTAL|experimental_enabled|testing_enabled")
    for rel in walk(root, (".c",)):
        if rel.split("/")[0] not in ("profiles", "obexd", "src", "plugins"):
            continue
        for number, text in enumerate(read(root, rel).split("\n"), 1):
            if trigger.search(text):
                lines.append(f"- {rel}:{number} `{text.strip()}`")
    return cap(lines, 60)


def bluez_tree(root):
    lines = []
    top = sorted(d for d in os.listdir(root) if os.path.isdir(os.path.join(root, d)) and not d.startswith("."))
    lines.append("- top-level directories: " + " ".join(top))
    by_dir = {}
    for rel in walk(root, (".c",)):
        directory, name = os.path.split(rel)
        if directory.split("/")[0] in ("profiles", "obexd", "plugins", "mesh", "src"):
            by_dir.setdefault(directory, []).append(name)
    for directory, names in sorted(by_dir.items()):
        if directory.startswith(("mesh", "src")):
            lines.append(f"- {directory}/: {len(names)} .c files")
        else:
            lines.append(f"- {directory}/: " + " ".join(names))
    return lines


def bluez_build_options(root):
    text = read(root, "configure.ac")
    lines = []
    for name, flag, helptext in re.findall(
            r"AC_ARG_ENABLE\(\[?([\w-]+)\]?,\s*AS_HELP_STRING\(\[([^\]]+)\],\s*\[([^\]]+)\]", text):
        lines.append(f"- {flag}: {' '.join(helptext.split())}")
    return lines


def bluez_core_versions(root):
    found = {}
    for rel in walk(root):
        if rel.split("/")[0] not in ("lib", "monitor", "src", "tools"):
            continue
        text = read(root, rel)
        for match in re.finditer(r'"Bluetooth (\d+\.\d+[a-z]?)"|\{\s*"(\d+\.\d+[a-z]?)",\s*0x[0-9a-f]{2}\s*\}', text):
            version = match.group(1) or match.group(2)
            found.setdefault(version, f"{rel}:{line_of(text, match.start())}")

    def key(v):
        return tuple(int(x) for x in re.findall(r"\d+", v))
    return [f"- {v} ({found[v]})" for v in sorted(found, key=key)]


def bluez_uuids(root):
    lines = []
    for rel in walk(root, (".h",)):
        if not rel.startswith("lib/"):
            continue
        for name, value in re.findall(r'#define\s+(\w*UUID\w*)\s+"([0-9a-fA-F-]+)"', read(root, rel)):
            short = re.fullmatch(r"0000([0-9a-fA-F]{4})-0000-1000-8000-00805f9b34fb", value)
            lines.append(f"- {name} = {'0x' + short.group(1) if short else value}")
    return cap(sorted(set(lines)), 250)


# --- PipeWire sections -------------------------------------------------------

def pipewire_plugin_dirs(root):
    dirs = set()
    for rel in walk(root, (".c",)):
        if "struct media_codec" in read(root, rel):
            dirs.add(os.path.dirname(rel))
    if not dirs:
        for dirpath, dirnames, _ in os.walk(root):
            if os.path.basename(dirpath) == "bluez5":
                dirs.add(os.path.relpath(dirpath, root))
    return sorted(dirs)


def pipewire_tree(root, dirs):
    lines = []
    for directory in dirs:
        names = sorted(os.listdir(os.path.join(root, directory)))
        lines.append(f"- {directory}/: " + " ".join(names))
    return lines


def pipewire_codecs(root):
    lines = []
    for rel, line, name, body in initializers(root, "media_codec"):
        values = dict(re.findall(r"\.(\w+)\s*=\s*([^,\n]+)", body))
        parts = [f"{k}={values[k].strip()}" for k in ("name", "description", "kind", "id", "codec_id", "vendor") if k in values]
        lines.append(f"- {rel}:{line} `{name}`: " + ", ".join(parts))
    return lines


def pipewire_profiles(root, dirs):
    lines = []
    for directory in dirs:
        for rel in walk(os.path.join(root, directory)):
            path = os.path.join(directory, rel)
            text = read(root, path)
            rows = text.split("\n")
            for number, row in enumerate(rows, 1):
                match = HEX_VERSION.search(row)
                if match and not COMPARISON.search(row.split("0x")[0]):
                    comment = ""
                    for previous in reversed(rows[max(0, number - 4):number - 1]):
                        if previous.strip().startswith(("/*", "//")):
                            comment = f" (comment nearby: `{previous.strip()}`)"
                            break
                    lines.append(f"- {path}:{number} `{row.strip()}` {bcd(match.group(1))}{comment}")
            for match in re.finditer(r"enum\s+spa_bt_profile\s*\{(.*?)\};", text, re.DOTALL):
                names = list(dict.fromkeys(re.findall(r"^\s*(SPA_BT_PROFILE_\w+)", match.group(1), re.MULTILINE)))
                lines.append(f"- {path}:{line_of(text, match.start())} enum spa_bt_profile: " + " ".join(names))
    return cap(lines, 60)


def pipewire_build_options(root):
    lines = []
    for name, description in re.findall(r"option\('([^']+)',\s*description:\s*'([^']*)'", read(root, "meson_options.txt")):
        if "bluez" in name or "bluetooth" in name:
            lines.append(f"- {name}: {description}")
    return lines


# --- history -----------------------------------------------------------------

def head_line(root):
    sha = git(root, "rev-parse", "HEAD")
    if not sha:
        return "not a git checkout"
    return git(root, "log", "-1", "--format=%H (%cs) %s")


def changes_since(root, since, paths):
    if not since or since == "TBD":
        return ["(no previous verified commit is recorded; audit the whole table)"]
    if not git(root, "rev-parse", "--verify", "--quiet", f"{since}^{{commit}}"):
        return [f"(the previously verified commit {since[:12]} is not in this checkout, so no change list is available; audit the whole table)"]
    head = git(root, "rev-parse", "HEAD")
    if head == since:
        return [f"(no new commits since {since[:12]})"]
    log = git(root, "log", "--no-merges", "--format=- %h (%cs) %s", f"{since}..HEAD", "--", *paths)
    lines = log.split("\n") if log else []
    total = git(root, "rev-list", "--count", f"{since}..HEAD")
    header = [f"{len(lines)} of the {total} commits since {since[:12]} touch profile-related paths ({' '.join(paths)}):"]
    return header + (cap(lines, 120) if lines else ["- none"])


# --- main --------------------------------------------------------------------

def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    parser.add_argument("--bluez", required=True, help="bluez checkout")
    parser.add_argument("--pipewire", required=True, help="PipeWire checkout")
    parser.add_argument("--data", default="data/profiles.yaml", help="data file, read for its verified: header")
    parser.add_argument("--out", default="evidence.md")
    args = parser.parse_args(argv)

    for path in (args.bluez, args.pipewire):
        if not os.path.isdir(path):
            print(f"{path}: not a directory", file=sys.stderr)
            return 2

    verified = {}
    try:
        with open(args.data, encoding="utf-8") as fh:
            verified = (yaml.safe_load(fh) or {}).get("verified") or {}
    except (OSError, yaml.YAMLError):
        pass

    bluez, pipewire = args.bluez, args.pipewire
    plugin_dirs = pipewire_plugin_dirs(pipewire)

    out = [
        "# Upstream evidence for the Supported Profiles table",
        "",
        f"Collected {datetime.date.today().isoformat()} by pattern searches over two checkouts.",
        f"Findings are cited as `path:line`; bluez paths are relative to the bluez tree, PipeWire paths to the PipeWire tree.",
        "",
        f"- bluez: {head_line(bluez)}",
        f"- PipeWire: {head_line(pipewire)}",
        "",
    ]
    out += section("Upstream changes since the table was last verified: bluez", lambda: changes_since(
        bluez, verified.get("bluez"), ["profiles", "src", "obexd", "mesh", "plugins", "lib", "configure.ac"]))
    out += section("Upstream changes since the table was last verified: PipeWire", lambda: changes_since(
        pipewire, verified.get("pipewire"), plugin_dirs + ["meson_options.txt"]))
    out += section("bluez: profile registrations (every `struct btd_profile` initializer)", lambda: bluez_profiles(bluez))
    out += section("bluez: built-in SDP profile records (initializer tables carrying a `.uuid`)", lambda: bluez_sdp_tables(bluez))
    out += section("bluez: other version numbers near profile code (hex BCD, decoded in brackets)", lambda: bluez_versions(bluez))
    out += section("bluez: experimental and testing gates outside the struct flags", lambda: bluez_gating(bluez))
    out += section("bluez: source tree", lambda: bluez_tree(bluez))
    out += section("bluez: build options (configure.ac)", lambda: bluez_build_options(bluez))
    out += section("bluez: Core Specification versions the code knows", lambda: bluez_core_versions(bluez))
    out += section("bluez: UUID names (lib/*.h)", lambda: bluez_uuids(bluez))
    out += section("PipeWire: Bluetooth plugin tree", lambda: pipewire_tree(pipewire, plugin_dirs))
    out += section("PipeWire: codecs (every `struct media_codec` initializer)", lambda: pipewire_codecs(pipewire))
    out += section("PipeWire: profile versions and roles", lambda: pipewire_profiles(pipewire, plugin_dirs))
    out += section("PipeWire: Bluetooth build options (meson_options.txt)", lambda: pipewire_build_options(pipewire))

    with open(args.out, "w", encoding="utf-8") as fh:
        fh.write("\n".join(out))
    print(f"wrote {args.out}: {len(out)} lines")
    return 0


if __name__ == "__main__":
    sys.exit(main())
