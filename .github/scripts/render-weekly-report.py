#!/usr/bin/env python3
"""render-weekly-report.py - Render a weekly report from fetch-lore.sh output.

Usage: fetch-lore.sh START END | render-weekly-report.py > report.md

Reads the structured output produced by fetch-lore.sh on stdin and emits the
markdown body of the weekly report on stdout.

This renderer is fully deterministic: every figure and link in the output is
derived from the input data. No inference service is involved.
"""

import re
import sys
from collections import defaultdict

LORE = "https://lore.kernel.org/linux-bluetooth"

# Subsystem prefixes that identify a kernel patch rather than a BlueZ one.
KERNEL_RE = re.compile(
    r"^(Bluetooth|net|dt-bindings|arm64|arm|riscv|power|block|sdio|mmc|"
    r"usb|serial|crypto|remoteproc|firmware|ASoC|wifi|nfc):",
    re.IGNORECASE,
)

# A lowercase "module: subject" prefix is the BlueZ userspace convention.
BLUEZ_RE = re.compile(r"^[a-z0-9][a-z0-9_.+/-]*:")

MONTHS = ("January", "February", "March", "April", "May", "June", "July",
          "August", "September", "October", "November", "December")


def link(msg_id, text):
    """Build a markdown link to a lore.kernel.org message."""
    if not msg_id:
        return text
    return f"[{text}]({LORE}/{msg_id}/)"


def esc(text):
    """Escape pipes so table cells do not break."""
    return text.replace("|", "\\|")


def parse(stream):
    """Split the fetch-lore.sh output into its labelled sections."""
    data = {
        "period": {}, "stats": {}, "bots": [], "contributors": [],
        "threads": [], "applied": [], "pushed": [], "versions": [],
    }
    section = None

    for raw in stream:
        line = raw.rstrip("\n")

        m = re.match(r"^=== (.+?) ===$", line)
        if m:
            section = m.group(1)
            continue

        m = re.match(r"^Period: (\S+) to (\S+) \(Week (\d+), (\d+)\)", line)
        if m:
            data["period"] = {
                "start": m.group(1), "end": m.group(2),
                "week": int(m.group(3)), "year": int(m.group(4)),
            }
            continue

        if not line.strip():
            continue

        if section == "STATISTICS":
            m = re.match(r"^(Total|Human|Bot) messages: (\d+)$", line)
            if m:
                data["stats"][m.group(1).lower()] = int(m.group(2))

        elif section == "BOT BREAKDOWN":
            m = re.match(r"^\s+(.+): (\d+)$", line)
            if m:
                data["bots"].append((m.group(1), int(m.group(2))))

        elif section == "TOP HUMAN CONTRIBUTORS":
            m = re.match(r"^\s+(.+) \((.*)\): (\d+)$", line)
            if m:
                data["contributors"].append(
                    (m.group(1), m.group(2) or "Independent", int(m.group(3))))

        elif section == "THREADS":
            if not line.startswith("- "):
                continue
            parts = line[2:].rsplit(" | ", 3)
            if len(parts) != 4:
                continue
            subject, who, meta, msg_id = parts
            m = re.match(r"^(.*)\((.*)\)$", who)
            name = m.group(1).strip() if m else who.strip()
            aff = (m.group(2).strip() if m else "") or "Independent"

            msgs = int(m.group(1)) if (m := re.search(r"(\d+)msgs", meta)) else 0
            ver = int(m.group(1)) if (m := re.search(r"v(\d+)", meta)) else 1
            pat = int(m.group(1)) if (m := re.search(r"(\d+)patches", meta)) else 1

            data["threads"].append({
                "subject": subject.strip(), "name": name, "aff": aff,
                "msgs": msgs, "version": ver, "patches": pat,
                "msg_id": msg_id.strip(),
            })

        elif section == "APPLIED (patchwork-bot notifications)":
            m = re.match(r"^- \[(\w+)\] (.+?) \| (\S+) \| (\S+)$", line)
            if m:
                data["applied"].append({
                    "category": m.group(1), "subject": m.group(2).strip(),
                    "date": m.group(3), "msg_id": m.group(4),
                })

        elif section == "PUSHED TO BLUEZ MASTER":
            if not line.startswith("- "):
                continue
            parts = line[2:].rsplit(" | ", 3)
            if len(parts) != 4:
                continue
            subject, who, date, msg_id = parts
            msg_id = msg_id.strip()
            # fetch-lore.sh flags any message-id containing "github.com" as a
            # push notification, which also catches mail from
            # @users.noreply.github.com addresses. Real push notifications are
            # addressed to a bluez org repository.
            if "bluez%2F" not in msg_id and "bluez/" not in msg_id:
                continue
            m = re.match(r"^(.*)\((.*)\)$", who)
            data["pushed"].append({
                "subject": subject.strip(),
                "name": m.group(1).strip() if m else who.strip(),
                "date": date.strip(), "msg_id": msg_id,
            })

        elif section == "SERIES WITH MULTIPLE VERSIONS":
            if not line.startswith("- "):
                continue
            parts = line[2:].rsplit(" | ", 3)
            if len(parts) == 4:
                data["versions"].append({
                    "subject": parts[0].strip(), "progression": parts[2].strip(),
                    "msg_id": parts[3].strip(),
                })

    return data


def classify(thread):
    """Bucket a thread as a kernel patch, a BlueZ patch, or a discussion."""
    subject = thread["subject"]
    if KERNEL_RE.match(subject):
        return "kernel"
    if thread["patches"] > 1 or thread["version"] > 1 or BLUEZ_RE.match(subject):
        return "bluez"
    return "discussion"


def pretty_range(start, end):
    """Render '2026-09-07', '2026-09-13' as '7 - 13 September 2026'."""
    try:
        sy, sm, sd = (int(x) for x in start.split("-"))
        ey, em, ed = (int(x) for x in end.split("-"))
    except ValueError:
        return f"{start} to {end}"
    if (sy, sm) == (ey, em):
        return f"{sd} - {ed} {MONTHS[em - 1]} {ey}"
    if sy == ey:
        return f"{sd} {MONTHS[sm - 1]} - {ed} {MONTHS[em - 1]} {ey}"
    return f"{sd} {MONTHS[sm - 1]} {sy} - {ed} {MONTHS[em - 1]} {ey}"


def patch_table(rows, out):
    """Emit the shared table layout used for kernel and BlueZ patch series."""
    out.append("| Topic | From | Affiliation | Patches | Status/Notes |")
    out.append("|-------|------|-------------|---------|--------------|")
    for t in rows:
        note = f"Version {t['version']}" if t["version"] > 1 else "Initial version"
        out.append(
            f"| {link(t['msg_id'], esc(t['subject']))} | {esc(t['name'])} "
            f"| {esc(t['aff'])} | {t['patches']} | {note} |")
    out.append("")


def render(data):
    p = data["period"]
    s = data["stats"]
    total = s.get("total", 0)
    human = s.get("human", 0)
    bot = s.get("bot", 0)

    threads = data["threads"]
    kernel = [t for t in threads if classify(t) == "kernel"]
    bluez = [t for t in threads if classify(t) == "bluez"]
    discussion = [t for t in threads if classify(t) == "discussion"]

    out = []
    out.append(f"**Total messages: {total} ({human} human, {bot} CI/bot)**")
    out.append("")

    if data["bots"]:
        breakdown = ", ".join(f"{n}: {c}" for n, c in data["bots"])
        out.append(f"Note: Of the {total} messages, {human} are human-generated, "
                   f"{bot} are CI/bot ({breakdown}).")
        out.append("")

    out.append("---")
    out.append("")

    # ---- Summary -----------------------------------------------------------
    out.append("## Summary")
    sentences = [
        f"During week {p.get('week', '?')} "
        f"({pretty_range(p.get('start', ''), p.get('end', ''))}) the "
        f"linux-bluetooth mailing list carried {total} messages, "
        f"{human} from contributors and {bot} from CI and bots."
    ]
    if threads:
        sentences.append(
            f"There were {len(threads)} human-initiated threads: "
            f"{len(kernel)} kernel patch series, {len(bluez)} BlueZ userspace "
            f"series and {len(discussion)} discussions or reports.")
    if data["applied"] or data["pushed"]:
        sentences.append(
            f"{len(data['applied'])} patches were applied via patchwork and "
            f"{len(data['pushed'])} commits were pushed to bluez repositories.")
    if data["contributors"]:
        name, aff, count = data["contributors"][0]
        sentences.append(
            f"The most active contributor was {name} ({aff}) with "
            f"{count} messages.")
    if data["versions"]:
        sentences.append(
            f"{len(data['versions'])} series went through more than one "
            f"revision during the week.")
    out.append(" ".join(sentences))
    out.append("")
    out.append("---")
    out.append("")

    # ---- Patch series and discussions --------------------------------------
    out.append("## Key Patch Series & Discussions")
    out.append("")

    out.append("### Kernel Patches")
    out.append("")
    if kernel:
        patch_table(kernel[:12], out)
    else:
        out.append("No kernel patch series were posted this week.")
        out.append("")

    out.append("### BlueZ Userspace Patches")
    out.append("")
    if bluez:
        patch_table(bluez[:12], out)
    else:
        out.append("No BlueZ userspace patch series were posted this week.")
        out.append("")

    out.append("### Discussions & Bug Reports")
    out.append("")
    if discussion:
        out.append("| Topic | From | Notes |")
        out.append("|-------|------|-------|")
        for t in discussion[:8]:
            plural = "message" if t["msgs"] == 1 else "messages"
            out.append(
                f"| {link(t['msg_id'], esc(t['subject']))} | {esc(t['name'])} "
                f"| {t['msgs']} {plural} |")
        out.append("")
    else:
        out.append("No standalone discussions were recorded this week.")
        out.append("")

    # ---- Revised series ----------------------------------------------------
    if data["versions"]:
        out.append("---")
        out.append("")
        out.append("## Series Revised This Week")
        out.append("")
        out.append("| Topic | Revisions |")
        out.append("|-------|-----------|")
        for v in data["versions"][:12]:
            out.append(
                f"| {link(v['msg_id'], esc(v['subject']))} "
                f"| {esc(v['progression'])} |")
        out.append("")

    # ---- Contributors ------------------------------------------------------
    out.append("---")
    out.append("")
    out.append("## Top Contributors (by message count)")
    out.append("")
    out.append("| Contributor | Affiliation | Messages |")
    out.append("|-------------|-------------|----------|")
    for name, aff, count in data["contributors"][:10]:
        out.append(f"| {esc(name)} | {esc(aff)} | {count} |")
    out.append("")

    # ---- Merged ------------------------------------------------------------
    out.append("---")
    out.append("")
    out.append("## Merged to master (BlueZ & bluetooth-next)")
    out.append("")

    kernel_applied = [a for a in data["applied"] if a["category"] == "kernel"]
    bluez_applied = [a for a in data["applied"] if a["category"] != "kernel"]

    out.append("### Applied to bluetooth-next (kernel, via patchwork notifications)")
    out.append("")
    if kernel_applied:
        for a in kernel_applied:
            out.append(f"- {link(a['msg_id'], esc(a['subject']))}")
    else:
        out.append("- None recorded this week.")
    out.append("")

    if bluez_applied:
        out.append("### Applied to BlueZ (via patchwork notifications)")
        out.append("")
        for a in bluez_applied:
            out.append(f"- {link(a['msg_id'], esc(a['subject']))}")
        out.append("")

    out.append("### Pushed to bluez repositories")
    out.append("")
    if data["pushed"]:
        for c in data["pushed"]:
            out.append(f"- {link(c['msg_id'], esc(c['subject']))}")
    else:
        out.append("- None recorded this week.")
    out.append("")

    # ---- Company focus -----------------------------------------------------
    by_aff = defaultdict(list)
    for t in threads:
        by_aff[t["aff"]].append(t)

    if by_aff:
        out.append("---")
        out.append("")
        out.append("## Company Focus Areas")
        out.append("")
        ordered = sorted(by_aff.items(),
                         key=lambda kv: (-len(kv[1]), kv[0]))
        for aff, items in ordered[:8]:
            heading = ("Independent Contributors"
                       if aff == "Independent" else aff)
            out.append(f"### {heading}")
            out.append("")
            for t in sorted(items, key=lambda x: -x["msgs"])[:4]:
                out.append(f"- {link(t['msg_id'], esc(t['subject']))}")
            out.append("")

    return "\n".join(out).rstrip() + "\n"


def main():
    data = parse(sys.stdin)
    if not data["stats"].get("total"):
        sys.stderr.write("error: no statistics found in input\n")
        return 1
    sys.stdout.write(render(data))
    return 0


if __name__ == "__main__":
    sys.exit(main())
