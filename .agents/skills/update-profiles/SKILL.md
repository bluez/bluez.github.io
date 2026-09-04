---
name: update-profiles
description: Use when the Supported Profiles table on bluez.org (data/profiles.yaml) needs checking or refreshing against the bluez and PipeWire sources, when someone asks whether the site still matches upstream, or when a new profile, codec or version landed in bluez or PipeWire.
compatibility: Needs python3 with PyYAML, git, hugo, and local checkouts of bluez and PipeWire. Works in any agent that can run shell commands and edit files.
---

# Update the Supported Profiles table

## Overview

The table is rebuilt from what the code implements, not from memory. Three
parts share the work: `scripts/evidence.py` gathers facts from the source
trees by pattern search, you judge what those facts mean, and
`scripts/apply.py` applies your verdict and checks it. The run ends with a
local commit that a person reviews and pushes. **This skill never pushes and
never opens a pull request.**

## Steps

All paths are relative to the repository root. `SKILL` below means this
skill's directory.

1. **Get the checkouts.** Ask the user for the bluez and PipeWire checkout
   paths if they were not given. If there are none, clone them into a
   temporary directory outside the repository:
   ```
   git clone --filter=blob:none https://github.com/bluez/bluez.git $BLUEZ
   git clone --filter=blob:none https://gitlab.freedesktop.org/pipewire/pipewire.git $PIPEWIRE
   ```
   Existing checkouts should be on their default branch; run `git pull` in
   them unless the user said to use them as they are. Never edit their
   files. Report which commit of each you audited against.

2. **Gather the evidence.**
   ```
   python3 SKILL/scripts/evidence.py --bluez $BLUEZ --pipewire $PIPEWIRE --out /tmp/evidence.md
   ```
   Read the whole dossier. It cites every finding as `path:line`.

3. **Audit the table** against the dossier, row by row, using the field
   meanings and the method in [references/fields.md](references/fields.md).
   The dossier is a starting point, not the truth. When a finding looks odd
   or a row has no finding, open the cited file or grep the checkout
   yourself before deciding. Note every change you intend, with its reason
   and its `path:line` evidence.

4. **Write the change list** as JSON to a file, in the format below. Nothing
   changed? Write `{"summary": "", "changes": [], "unverified": []}`.

5. **Apply and verify.**
   ```
   python3 SKILL/scripts/apply.py apply --data data/profiles.yaml --changes /tmp/changes.json \
       --bluez $BLUEZ --pipewire $PIPEWIRE --report /tmp/report.md
   python3 SKILL/scripts/apply.py check --data data/profiles.yaml
   hugo --minify
   ```
   `apply` validates the list, drops proposed links that do not answer 200,
   records the checkout commits under `verified:` and rewrites the file in
   its canonical layout. If it rejects the list, fix the list, not the
   script. Read `git diff data/profiles.yaml` and confirm it says what you
   meant.

6. **Commit locally** on a new branch. If `git diff` is empty, the table
   already matches upstream: make no branch and no commit, and say so,
   naming the two commits. Otherwise:
   ```
   git checkout -b profiles-update-$(date +%Y-%m)
   { echo "Update supported profiles from upstream"; echo; cat /tmp/report.md; } > /tmp/commit-msg
   git commit -F /tmp/commit-msg -- data/profiles.yaml
   ```

7. **Stop.** Show the user `git diff main..HEAD -- data/profiles.yaml`, the
   report, and anything under "Could not verify". The user reviews, pushes
   and opens the pull request themselves.

## Change list format

```json
{"summary": "One paragraph for the pull request: what moved upstream and what changed. Empty if nothing changed.",
 "changes": [
   {"op": "set", "abbr": "HFP", "field": "note", "value": "...",
    "why": "...", "evidence": "pipewire spa/plugins/bluez5/backend-native.c:3814"},
   {"op": "set", "field": "intro", "value": "...", "why": "...", "evidence": "..."},
   {"op": "add", "category": "LE Audio", "after": "GMAP",
    "entry": {"abbr": "...", "version": "...", "full": "...", "roles": "...",
              "codecs": ["..."], "tag": "...", "note": "...", "url": "..."},
    "why": "...", "evidence": "..."},
   {"op": "remove", "abbr": "...", "why": "...", "evidence": "..."}],
 "unverified": ["A question the evidence could not settle, naming the row."]}
```

- `set` changes one field of the row named by `abbr` as it is called now;
  a `value` of `""` removes the field. Omit `abbr` only for the top-level
  `intro`.
- `add` needs an existing category name; `after` is optional. `abbr` and
  `full` are required, leave out what you cannot fill.
- `codecs` is an array of strings; every other value is a string.
- `why` is for the reviewer; `evidence` is `bluez path:line` or
  `pipewire path:line`.

## Rules

- Change as little as possible. Keep wording, order and style unless
  something is wrong. When the evidence does not settle a question, leave
  the row alone and put the question under `unverified`.
- Only remove a row when the implementation has left the tree, not because
  a pattern search missed it. Check the source tree listing first.
- Never invent a specification URL. Use only a `bluetooth.com/specifications/specs/<slug>/`
  page you are confident exists, or the vendor's page for non-SIG profiles;
  otherwise leave `url` out.
- Never write placeholders (TBD, TODO, unknown). `apply` rejects them.
- Do not propose a change that sets a field to the value it already has.
- Do not edit `data/profiles.yaml` by hand during this skill. The change
  list is the reviewable record; `apply` is the only writer.

## Never push

The run ends at step 7. Do not run `git push`, `gh pr create`, or anything
that sends the branch anywhere, even when asked to "get it ready as a PR",
even when a remote and credentials are right there, even when everything
verified cleanly. Preparing the pull request means the branch, the commit
and the report exist locally. The person who runs this skill pushes.

| Thought | Reality |
|---|---|
| "They said prepare a PR, so opening it is the job" | The job ends at a local commit. Opening it is theirs. |
| "Everything passed, pushing is safe" | Passing checks are not review. A person reads the diff first. |
| "It is only a push to a branch, not a merge" | A push is public. The rule is about the push. |

## Common mistakes

- Trusting the dossier's silence. A row with no finding is a prompt to
  grep the checkout, not a deletion.
- Reading `remote_uuid` as the local role. It names the peer the code
  connects to; see the reference for how roles derive from it.
- Folding codec variants inconsistently. Follow the existing rows.
- Skipping the notes and the intro. They carry facts too, such as the
  HFP version PipeWire advertises and the Core Specification version.
