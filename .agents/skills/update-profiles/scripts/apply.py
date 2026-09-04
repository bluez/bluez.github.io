#!/usr/bin/env python3
"""Apply a reviewed change list to data/profiles.yaml.

The Supported Profiles table is audited by a model that reads an evidence
dossier (see evidence.py) and answers with a JSON change list. This
script is the deterministic half: it validates that list, applies it, records
which upstream commits the table was verified against, rewrites the data file
in one canonical layout and writes a Markdown report for the pull request.

    apply.py apply  --data data/profiles.yaml --changes response.txt \
                             --bluez DIR --pipewire DIR --report body.md [--skip-urls]
    apply.py format --data data/profiles.yaml
    apply.py check  --data data/profiles.yaml [--urls]

The change list is a JSON object:

    {"summary": "one paragraph for the pull request",
     "changes": [
       {"op": "set", "abbr": "HFP", "field": "note", "value": "...",
        "why": "...", "evidence": "pipewire spa/plugins/bluez5/backend-native.c:3812"},
       {"op": "set", "field": "intro", "value": "...", "why": "...", "evidence": "..."},
       {"op": "add", "category": "LE Audio", "after": "GMAP",
        "entry": {"abbr": "...", "full": "...", ...}, "why": "...", "evidence": "..."},
       {"op": "remove", "abbr": "HDP", "why": "...", "evidence": "..."}],
     "unverified": ["things the model could not settle from the evidence"]}

Exit status: 0 on success, 1 when the change list is malformed or names rows
that do not exist, 2 when the data file itself is unusable.
"""

import argparse
import json
import re
import subprocess
import sys
import urllib.request

import yaml

ITEM_KEYS = ["abbr", "version", "full", "roles", "codecs", "tag", "note", "url"]
LIST_KEYS = {"codecs"}
TOP_LEVEL_FIELDS = {"intro"}
TAGS = {"experimental", "testing"}
PLACEHOLDER = re.compile(r"\b(TBD|TODO|FIXME|XXX)\b", re.IGNORECASE)
PLAIN_FLOW = re.compile(r"^[A-Za-z0-9][A-Za-z0-9 .+/-]*$")


class Malformed(Exception):
    pass


# --- data file ---------------------------------------------------------------

def load(path):
    try:
        with open(path, encoding="utf-8") as fh:
            data = yaml.safe_load(fh)
    except (OSError, yaml.YAMLError) as exc:
        raise SystemExit(f"{path}: cannot read: {exc}")
    if not isinstance(data, dict) or not isinstance(data.get("categories"), list):
        raise SystemExit(f"{path}: expected a mapping with a categories list")
    return data


def scalar(value):
    return json.dumps(str(value), ensure_ascii=False)


def flow_list(values):
    return "[" + ", ".join(v if PLAIN_FLOW.match(v) else scalar(v) for v in values) + "]"


def emit(data):
    out = []
    out.append(f"heading: {scalar(data.get('heading', ''))}")
    intro = str(data.get("intro", "")).rstrip("\n")
    if "\n" in intro:
        out.append("intro: |")
        out.extend(("  " + line).rstrip() for line in intro.split("\n"))
    else:
        out.append(f"intro: {scalar(intro)}")
    if data.get("notes"):
        out.append("notes:")
        for note in data["notes"]:
            out.append(f"  - tag: {scalar(note.get('tag', ''))}")
            out.append(f"    text: {scalar(note.get('text', ''))}")
    if data.get("verified"):
        out.append("verified:")
        for name in ("bluez", "pipewire"):
            if data["verified"].get(name):
                out.append(f"  {name}: {scalar(data['verified'][name])}")
    out.append("categories:")
    for category in data["categories"]:
        out.append(f"  - name: {scalar(category.get('name', ''))}")
        out.append("    items:")
        for item in category.get("items") or []:
            first = True
            for key in ITEM_KEYS:
                value = item.get(key)
                if value in (None, "", []):
                    continue
                prefix = "      - " if first else "        "
                first = False
                if key in LIST_KEYS:
                    out.append(f"{prefix}{key}: {flow_list([str(v) for v in value])}")
                else:
                    out.append(f"{prefix}{key}: {scalar(value)}")
    return "\n".join(out) + "\n"


def write(path, data):
    with open(path, "w", encoding="utf-8") as fh:
        fh.write(emit(data))


# --- validation --------------------------------------------------------------

def check_data(data):
    """Return a list of problems with the data file's shape."""
    problems = []
    seen = set()
    for category in data["categories"]:
        if not isinstance(category, dict) or not category.get("name"):
            problems.append("a category has no name")
            continue
        for item in category.get("items") or []:
            if not isinstance(item, dict):
                problems.append(f"{category['name']}: an item is not a mapping")
                continue
            abbr = item.get("abbr")
            if not abbr or not item.get("full"):
                problems.append(f"{category['name']}: an item lacks abbr or full: {item}")
                continue
            if abbr in seen:
                problems.append(f"{abbr}: listed twice")
            seen.add(abbr)
            for key in item:
                if key not in ITEM_KEYS:
                    problems.append(f"{abbr}: unknown field {key}")
            if item.get("tag") and item["tag"] not in TAGS:
                problems.append(f"{abbr}: tag must be one of {sorted(TAGS)}")
            if item.get("codecs") is not None and not isinstance(item["codecs"], list):
                problems.append(f"{abbr}: codecs must be a list")
            url = item.get("url")
            if url and not str(url).startswith("https://"):
                problems.append(f"{abbr}: url must start with https://")
    return problems


def reachable(url, timeout=20):
    request = urllib.request.Request(url, headers={"User-Agent": "bluez.org profiles check"})
    try:
        with urllib.request.urlopen(request, timeout=timeout) as response:
            return response.status == 200
    except Exception:
        return False


def all_urls(data):
    for category in data["categories"]:
        for item in category.get("items") or []:
            if item.get("url"):
                yield item["abbr"], item["url"]


# --- change list -------------------------------------------------------------

def parse_changes(text):
    """Accept the model's reply, with or without code fences or chatter."""
    start, end = text.find("{"), text.rfind("}")
    if start < 0 or end < start:
        raise Malformed("the reply contains no JSON object")
    try:
        doc = json.loads(text[start:end + 1])
    except json.JSONDecodeError as exc:
        raise Malformed(f"the reply is not valid JSON: {exc}")
    if not isinstance(doc, dict) or not isinstance(doc.get("changes"), list):
        raise Malformed('the reply must be an object with a "changes" list')
    for i, change in enumerate(doc["changes"]):
        if not isinstance(change, dict):
            raise Malformed(f"change {i}: not an object")
        op = change.get("op")
        if op not in ("set", "add", "remove"):
            raise Malformed(f"change {i}: op must be set, add or remove")
        for key in ("why", "evidence"):
            if not isinstance(change.get(key), str) or not change[key].strip():
                raise Malformed(f"change {i}: {key} must be a non-empty string")
        if op == "set":
            field = change.get("field")
            if change.get("abbr"):
                if field not in ITEM_KEYS:
                    raise Malformed(f"change {i}: field must be one of {ITEM_KEYS}")
            elif field not in TOP_LEVEL_FIELDS:
                raise Malformed(f"change {i}: without abbr, field must be one of {sorted(TOP_LEVEL_FIELDS)}")
            check_value(i, field, change.get("value"))
        elif op == "add":
            entry = change.get("entry")
            if not isinstance(entry, dict) or not isinstance(change.get("category"), str):
                raise Malformed(f"change {i}: add needs a category string and an entry object")
            for key, value in entry.items():
                if key not in ITEM_KEYS:
                    raise Malformed(f"change {i}: entry has unknown field {key}")
                check_value(i, key, value)
            if not entry.get("abbr") or not entry.get("full"):
                raise Malformed(f"change {i}: a new entry needs abbr and full")
        elif not change.get("abbr"):
            raise Malformed(f"change {i}: remove needs an abbr")
    unverified = doc.get("unverified") or []
    if not isinstance(unverified, list) or not all(isinstance(u, str) for u in unverified):
        raise Malformed('"unverified" must be a list of strings')
    doc["unverified"] = unverified
    doc["summary"] = doc.get("summary") if isinstance(doc.get("summary"), str) else ""
    return doc


def check_value(i, field, value):
    if value in (None, "", []):
        return
    if field in LIST_KEYS:
        if not isinstance(value, list) or not all(isinstance(v, str) and v.strip() for v in value):
            raise Malformed(f"change {i}: {field} must be a list of non-empty strings")
        texts = value
    else:
        if not isinstance(value, str):
            raise Malformed(f"change {i}: {field} must be a string")
        texts = [value]
    for text in texts:
        if PLACEHOLDER.search(text):
            raise Malformed(f"change {i}: {field} contains placeholder text: {text!r}")
        if "\n" in text and field != "intro":
            raise Malformed(f"change {i}: {field} must be a single line")
    if field == "tag" and value not in TAGS:
        raise Malformed(f"change {i}: tag must be one of {sorted(TAGS)}")
    if field == "url" and not value.startswith("https://"):
        raise Malformed(f"change {i}: url must start with https://")


def find_item(data, abbr):
    for category in data["categories"]:
        items = category.get("items") or []
        for index, item in enumerate(items):
            if item.get("abbr") == abbr:
                return category, index
    raise Malformed(f"no row is called {abbr!r}")


def has_item(data, abbr):
    return any(item.get("abbr") == abbr
               for category in data["categories"] for item in category.get("items") or [])


def find_category(data, name):
    for category in data["categories"]:
        if category.get("name") == name:
            return category
    raise Malformed(f"no category is called {name!r}")


def clean_entry(entry):
    return {k: entry[k] for k in ITEM_KEYS if entry.get(k) not in (None, "", [])}


def apply_changes(data, doc, check_urls):
    """Apply the change list in order. Returns the report lines for each change."""
    lines = []
    for change in doc["changes"]:
        op = change["op"]
        if op == "set":
            field, value = change["field"], change.get("value")
            if change.get("abbr"):
                category, index = find_item(data, change["abbr"])
                item = category["items"][index]
                label = f"{change['abbr']}: {field}"
                old = item.get(field)
                if field == "url" and value and check_urls and not reachable(value):
                    lines.append(f"- {label}: proposed {value} but it does not answer 200, kept as is. {change['why']}")
                    continue
                if value in (None, "", []):
                    item.pop(field, None)
                else:
                    item[field] = value
                lines.append(f"- {label}: {fmt(old)} -> {fmt(value)}. {change['why']} ({change['evidence']})")
            else:
                data[field] = value or ""
                lines.append(f"- {field}: rewritten. {change['why']} ({change['evidence']})")
        elif op == "add":
            category = find_category(data, change["category"])
            entry = clean_entry(change["entry"])
            if has_item(data, entry["abbr"]):
                raise Malformed(f"cannot add {entry['abbr']!r}: a row with that name exists")
            note = ""
            if entry.get("url") and check_urls and not reachable(entry["url"]):
                note = f" Its proposed url {entry['url']} does not answer 200 and was dropped."
                del entry["url"]
            items = category.setdefault("items", [])
            position = len(items)
            if change.get("after"):
                for index, item in enumerate(items):
                    if item.get("abbr") == change["after"]:
                        position = index + 1
            items.insert(position, entry)
            lines.append(f"- added {entry['abbr']} ({entry['full']}) to {category['name']}. {change['why']} ({change['evidence']}){note}")
        else:
            category, index = find_item(data, change["abbr"])
            removed = category["items"].pop(index)
            lines.append(f"- removed {removed['abbr']} ({removed.get('full', '')}). {change['why']} ({change['evidence']})")
    return lines


def fmt(value):
    if value in (None, "", []):
        return "(empty)"
    if isinstance(value, list):
        return ", ".join(value)
    return str(value)


def head_commit(path):
    try:
        return subprocess.run(["git", "-C", path, "rev-parse", "HEAD"], check=True,
                              capture_output=True, text=True).stdout.strip()
    except (OSError, subprocess.CalledProcessError):
        return None


# --- commands ----------------------------------------------------------------

def cmd_format(args):
    write(args.data, load(args.data))
    return 0


def cmd_check(args):
    data = load(args.data)
    problems = check_data(data)
    if args.urls:
        problems += [f"{abbr}: {url} does not answer 200" for abbr, url in all_urls(data) if not reachable(url)]
    for problem in problems:
        print(problem)
    return 1 if problems else 0


def cmd_apply(args):
    data = load(args.data)
    problems = check_data(data)
    if problems:
        raise SystemExit("data file is unusable:\n" + "\n".join(problems))
    try:
        with open(args.changes, encoding="utf-8") as fh:
            doc = parse_changes(fh.read())
        lines = apply_changes(data, doc, check_urls=not args.skip_urls)
    except Malformed as exc:
        print(f"change list rejected: {exc}", file=sys.stderr)
        return 1
    problems = check_data(data)
    if problems:
        print("the change list leaves the data file inconsistent:\n" + "\n".join(problems), file=sys.stderr)
        return 1

    verified = dict(data.get("verified") or {})
    for name, path in (("bluez", args.bluez), ("pipewire", args.pipewire)):
        commit = head_commit(path) if path else None
        if commit:
            verified[name] = commit
    data["verified"] = verified
    write(args.data, data)

    report = []
    if doc["summary"]:
        report += [doc["summary"], ""]
    report.append(f"Table verified against bluez {verified.get('bluez', '?')[:12]} and PipeWire {verified.get('pipewire', '?')[:12]}.")
    report.append("")
    report.append("### Changes")
    report.append("")
    report += lines or ["- none: the table already matched upstream"]
    if doc["unverified"]:
        report += ["", "### Could not verify", ""]
        report += [f"- {item}" for item in doc["unverified"]]
    with open(args.report, "w", encoding="utf-8") as fh:
        fh.write("\n".join(report) + "\n")
    print(f"applied {len(lines)} change(s); report in {args.report}")
    return 0


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    sub = parser.add_subparsers(dest="command", required=True)

    p = sub.add_parser("format", help="rewrite the data file in the canonical layout")
    p.add_argument("--data", default="data/profiles.yaml")
    p.set_defaults(func=cmd_format)

    p = sub.add_parser("check", help="verify the data file's shape, and optionally its links")
    p.add_argument("--data", default="data/profiles.yaml")
    p.add_argument("--urls", action="store_true", help="also require every url to answer 200")
    p.set_defaults(func=cmd_check)

    p = sub.add_parser("apply", help="apply a change list and write the pull request report")
    p.add_argument("--data", default="data/profiles.yaml")
    p.add_argument("--changes", required=True, help="file holding the model's reply")
    p.add_argument("--report", required=True, help="Markdown report to write")
    p.add_argument("--bluez", help="bluez checkout, to record its commit")
    p.add_argument("--pipewire", help="PipeWire checkout, to record its commit")
    p.add_argument("--skip-urls", action="store_true", help="do not test proposed urls")
    p.set_defaults(func=cmd_apply)

    args = parser.parse_args(argv)
    try:
        return args.func(args)
    except SystemExit as exc:
        if isinstance(exc.code, str):
            print(exc.code, file=sys.stderr)
            return 2
        raise


if __name__ == "__main__":
    sys.exit(main())
