---
title: "Weekly Report: linux-bluetooth Mailing List - February 23 - March 1, 2026 (W09)"
date: 2026-03-01
summary: "Active week with 277 messages in the archive (218 human). Major activity included L2CAP fixes, HIDP work, BlueZ functional testing and emulator improvements, a sizable set of btintel/PCIe device-id patches, and community discussion around testing and qualification."
draft: false
---

## February 23 - March 1, 2026 (Week 09)

**Total messages: 277 (218 human, 59 CI/bot)**

Note: Of the 277 messages in the archive, 218 are human-generated and 59 are CI/bot messages. Messages from Sasha Levin were discarded and are not counted; CI/bot messages are excluded from the Top Contributors table and from the Key Patch listings below.

---

## Summary

Active week with 277 messages in the archive (218 human). Major activity included L2CAP fixes, HIDP work, BlueZ functional testing and emulator improvements, a sizable set of btintel/PCIe device-id patches, and community discussion around testing and qualification. Documentation and tooling patches continued alongside hardware enablement and robustness fixes.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Status/Notes |
|-------|------|-------------|--------------|
| **Bluetooth: L2CAP: Fix not tracking outstanding TX ident** | Joan Bruguera Micó | Independent | v3 discussion and follow-ups Feb 28–Mar 1 |
| **Bluetooth: btintel_pcie / btintel: ScP2 device IDs & support** | Kiran K | Intel | v3 series adding device ids and ScP2 support, multiple patches Feb 28 |
| **HIDP: cap report descriptor size / HID setup fixes** | Bastien Nocera | Red Hat | v2 discussion and reviews Feb 25–Mar 1 |
| **Functional/integration testing + emulator improvements** | Pauli Virtanen | Independent | Large 11-patch series adding functional testing targets and emulator fixes Feb 28 |
| **Various a2dp / shared/att / plugins (Nintendo Switch 2)** | Martin BTS | Independent | Multi-patch BlueZ series adding Switch2 support and ATT handling Mar 1 |
| **Mesh / mgmt and other reliability fixes** | Christian Eggers | ARRI | Ongoing discussion and many follow-ups across the week |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Status/Notes |
|-------|------|-------------|--------------|
| **emulator & test-runner functional tests** | Pauli Virtanen | Independent | Functional testing framework and related docs/tests; v00..v11 posted Feb 28 |
| **btvirt / plugins: Nintendo Switch 2 controller support** | Martin BTS | Independent | Multi-patch series and plugins added Mar 1 |
| **shared/shell and input initialization recoveries** | Ronan Pigott | Independent | Fixes and follow-ups Feb 28–Mar 1 |

### Build & Infrastructure

- Automated CI and testbot messages were present (build failures, monthly syzbot reports, patchwork notifications); these are noted but excluded from human-focused listings.

### Community

- Active discussion on testing/qualification, especially around functional tests and emulator behavior; maintainers coordinated on test infrastructure changes.
- Several reviewers and maintainers provided detailed feedback on device enablement and HIDP issues.

### Bug Reports

- A number of firmware/driver bug reports and patch failures were visible in the archive and discussed; CI-sourced failure notices were observed but are not counted as human contributions in this report.

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Christian Eggers | ARRI | 49 |
| Luiz Augusto von Dentz | Intel | 30 |
| Kiran K | Intel | 25 |
| Pauli Virtanen | Independent | 14 |
| Konrad Dybcio | Qualcomm | 13 |
| Manivannan Sadhasivam | Qualcomm | 11 |
| Sean Wang | MediaTek | 8 |
| Bastien Nocera | Red Hat | 8 |
| Stefano Radaelli | Variscite | 7 |
| Martin BTS | Independent | 6 |
| Krzysztof Kozlowski | Independent | 6 |
| Mengshi Wu | Qualcomm | 5 |
| Frédéric Danis | Collabora | 5 |
| Wei Deng | Qualcomm | 4 |
| Bartosz Golaszewski | Independent | 3 |

---

## Merged to master (BlueZ & bluetooth-next)

Detected applied/merged items (identified via patchwork/push notifications in the archive):
1. [v3] Bluetooth: L2CAP: Fix not checking output MTU is acceptable on L2CAP_ECRED_CONN_REQ — Luiz Augusto von Dentz (Intel) — applied to bluetooth/bluetooth-next.git (master) (commit: https://git.kernel.org/bluetooth/bluetooth-next/c/6a4f124c550d)
2. [v1] Bluetooth: L2CAP: Fix missing key size check for L2CAP_LE_CONN_REQ — Luiz Augusto von Dentz (Intel) — applied to bluetooth/bluetooth-next.git (master) (commit: https://git.kernel.org/bluetooth/bluetooth-next/c/ea5263dc9312)
3. [BlueZ,v2] l2test: Attempt to use BT_SNDMTU if output MTU has been set — Luiz Augusto von Dentz (Intel) — applied to bluetooth/bluez.git (master) (commit: https://git.kernel.org/pub/scm/bluetooth/bluez.git/?id=290f9973c906)
4. Bluetooth: btintel_pcie: Use struct_size to improve hci_drv_read_info — (applied to bluetooth/bluetooth-next.git (master)) (commit: https://git.kernel.org/bluetooth/bluetooth-next/c/932fa6b5adb7)
5. [v2,1/8] mmc: sdio: add MediaTek MT7902 SDIO device ID (series) — (series applied to bluetooth/bluetooth-next.git (master)) (series head: https://git.kernel.org/bluetooth/bluetooth-next/c/30c211ed0440)
6. [BlueZ,v1] shared/att: Simplify logic of DB out of sync recovery — Luiz Augusto von Dentz (Intel) — applied to bluetooth/bluez.git (master) (commit: https://git.kernel.org/pub/scm/bluetooth/bluez.git/?id=a96f5f4eba9a)
7. [BlueZ,01/12] client/mgmt: fix compiler error (series) — (series applied to bluetooth/bluez.git (master)) (series head: https://git.kernel.org/pub/scm/bluetooth/bluez.git/?id=451fff520c8a)
8. [1/4] Bluetooth: L2CAP: CoC: Disconnect if received packet's SDU exceeds IMTU (series) — (series applied to bluetooth/bluetooth-next.git (master)) (example commit: https://git.kernel.org/bluetooth/bluetooth-next/c/0911d455d881)
9. [BlueZ,v2] shared/bap: Fix endpoint configuration — (applied to bluetooth/bluez.git (master)) (commit: https://git.kernel.org/pub/scm/bluetooth/bluez.git/?id=21459ac269ed)
10. [BlueZ,1/2] Revert "shared/shell: Don't init input for non-interactive shells" — (applied to bluetooth/bluez.git (master)) (commit: https://git.kernel.org/pub/scm/bluetooth/bluez.git/?id=b33e923b55e4)
11. [BlueZ,1/4] shared/mgmt: Add mgmt_parse_io_capability (series) — (series applied to bluetooth/bluez.git (master)) (series head: https://git.kernel.org/pub/scm/bluetooth/bluez.git/?id=61f25f9aacdc)
12. [v2] Bluetooth: L2CAP: CoC: Disconnect if received packet size exceeds MPS — Christian Eggers (ARRI) — applied to bluetooth/bluetooth-next.git (master) (commit: https://git.kernel.org/bluetooth/bluetooth-next/c/cb75c9a0505b)

Notes: entries above were detected by fetching raw message bodies for candidate patch/push messages from the saved search pages and searching for "applied to bluetooth" markers (patchwork notifications and push notices). Where the applied notice was a patchwork notification the applier is often the maintainer (Luiz Augusto von Dentz for many entries); some series entries reference the patchwork bot notification as the message in the archive — the upstream commit links are included in the original notifications where available.

---

## Company Focus Areas

### Intel
Continued driver/device focus: btintel PCIe device-id additions and ScP2-related support work led by Intel contributors; minor protocol reviews and maintenance activity.

### Red Hat
HIDP and portability fixes; review and discussion participation on HIDP cap report descriptor changes and related input handling.

### MediaTek
Device enablement and firmware/driver follow-ups from prior weeks continued in discussions and patches.

### Collabora
Participation in BlueZ userspace improvements and reviews, particularly tooling and shared component fixes.

### ARRI
Focused on testing and qualification issues, providing multiple follow-ups and detailed discussion threads on mesh/mgmt behavior.

---

## Notable Trends

1. Testing & CI: Emphasis on functional/integration testing and emulator robustness with a sizable patch series improving test infrastructure.
2. Device enablement: btintel device-id additions and plugin expansions (Switch 2) continued to bring new hardware and test plugins upstream.
3. Ongoing maintenance: HIDP, L2CAP, and mesh/mgmt discussions produced active fixes and reviewer feedback across the week.
