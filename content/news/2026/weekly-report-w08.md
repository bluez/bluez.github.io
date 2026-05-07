---
title: "Weekly Report: linux-bluetooth Mailing List - February 16 - 22, 2026 (Week 08)"
date: 2026-02-22
summary: "Busy week with 203 messages in the archive (145 human). Activity centered on kernel device enablement (MediaTek/Quectel), Qualcomm QCC2072 enablement and reviews, BlueZ userspace work (doc/btmon, btpclient reorganization, BAP fixes), and mesh/mgmt robustness fixes."
draft: false
---

**Total messages: 203 (145 human, 58 CI/bot)**

Note: Of the 203 messages in the archive, 145 are human-generated and 58 are CI/bot messages. CI/bot messages are excluded from the Top Contributors table and from the Key Patch listings below.

---

## Summary

Busy week with 203 messages in the archive (145 human). Activity centered on kernel device enablement (MediaTek/Quectel), Qualcomm QCC2072 enablement and reviews, BlueZ userspace work (doc/btmon, btpclient reorganization, BAP fixes), and mesh/mgmt robustness fixes. Build/test automation notifications were present in the archive but are not counted in the human-focused items below.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Status/Notes |
|-------|------|-------------|--------------|
| **Bluetooth: btusb / MediaTek MT7902 / MT7925 device enablement** | Sean Wang | MediaTek | Patch series and linux-firmware updates; driver + SDIO patches posted Feb 19–21 |
| **dt-bindings & qca: QCC2072 enablement** | Vivek Sahu | Qualcomm | v4-v5 series; active review and binding updates Feb 17–18 |
| **L2CAP: Fix not checking output MTU on L2CAP_ECRED_CONN_REQ** | Luiz Augusto von Dentz | Intel | v1-v3 posted Feb 17–20; iterative fixes and CI feedback |
| **mgmt: Fix heap overflow and race condition in mesh handling** | Maiquel Paiva | Independent | Ongoing iterations and discussion Feb 19–20 |
| **hci_qca: Fix shutdown()/power_off() naming + power-off on rmmod** | Bartosz Golaszewski / Hans de Goede reviews | Qualcomm | Patch discussion and rework Feb 16–20 |
| **btintel_pcie: snprintf -> strscpy** | Thorsten Blum | Independent | Cleanups with testbot feedback Feb 20 |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Status/Notes |
|-------|------|-------------|--------------|
| **doc/btmon: Large documentation & analyze features** (multiple patches) | Luiz Augusto von Dentz | Intel | Multi-patch doc/monitor series posted Feb 18–20; merged/pushed to repo |
| **tools/btpclient: Move to client/btpclient & add GATT support** | Frédéric Danis | Collabora | v1-v3 series; refactor and GATT name support posted Feb 16–18 |
| **shared/bap: Fix endpoint configuration / BAP fixes** | Frederic Danis / Sarveshwar Bajaj | Collabora / NXP | Endpoint configuration fix posted and follow-ups Feb 20 |
| **bass: Fix use-after-free when rescanning broadcast sources** | Sarveshwar Bajaj | NXP | v1 posted Feb 17; CI and review activity |
| **a2dp: connect source profile after sink** | Pauli Virtanen | Independent | Posted Feb 16; discussion and minor fixes |

### Build & Infrastructure

- Automated CI and testbot notifications were present in the inbox (build successes/failures, patchwork notifications). These automated messages are noted here for completeness but are excluded from contributor counts and the Key Patch listings.

### Community

- BlueZ maintainers and contributors continue heavy collaboration on docs and tooling (doc/btmon, btpclient reorganize).
- Bug reports and firmware requests for MediaTek devices received (see Bugzilla / linux-firmware updates).

### Bug Reports

- Bug reports requesting MediaTek MT7927/MT7922/RT R8852CE device additions and firmware updates surfaced and were discussed.

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | ~30 |
| Vivek Sahu | Qualcomm | ~8 |
| Sean Wang | MediaTek | ~6 |
| Frédéric Danis | Collabora | ~6 |
| Sarveshwar Bajaj | NXP | ~4 |
| Maiquel Paiva | Independent | ~4 |
| Bartosz Golaszewski | Independent | ~3 |

---

## Merged to master (BlueZ)

Commits pushed to `bluez/bluez` master during this period (examples):
1. `doc/btmon: Add missing documentation` -- Luiz Augusto von Dentz (Intel)
2. `shared/bap: Fix endpoint configuration` -- Frederic Danis (Collabora)
3. `client/btpclient: Move btpclient to client/btpclient` -- Frédéric Danis (Collabora)
4. `bass: Fix use-after-free when rescanning broadcast sources` -- Sarveshwar Bajaj (NXP)

---

## Company Focus Areas

### Intel
Continued maintainer-driven work: L2CAP correctness fixes, monitor/doc improvements (`doc/btmon`), and test/monitor helper changes. Luiz (Intel) authored several multi-patch doc/monitor series and protocol fixes that shaped the week's discussions.

### Qualcomm
Focus on chipset enablement and bindings (QCC2072), driver refactoring, and reliability fixes for QCA platforms. Multiple patch series advanced through review, with active feedback from maintainers and CI.

### MediaTek
Device enablement and firmware updates for MT7902 / MT7925 families dominated several threads (driver additions, SDIO/USB IDs, and linux-firmware updates).

### Collabora
Reorganizing `btpclient` into `client/btpclient` and adding GATT Device Name support; also contributed BlueZ userspace fixes and push notifications.

### NXP
Worked on BAP/broadcast stability (use-after-free fixes) and endpoint configuration patches.

### Others
- Independent contributors and smaller companies (reviewers, maintainers) focused on mesh/mgmt robustness, btintel cleanups, and a2dp improvements.

---

## Notable Trends

1. Hardware enablement remains strong: MediaTek device IDs + firmware updates and Qualcomm QCC2072 enablement.
2. Documentation & tooling work: Large `doc/btmon` documentation series and `btpclient` reorganization improved testability and maintainability.
3. Continued CI-driven iteration: testbot/patchwork feedback and kernel test robot messages triggered rapid follow-ups and small fixes.
