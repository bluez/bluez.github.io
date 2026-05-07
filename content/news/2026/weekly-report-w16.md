---
title: "Weekly Report: linux-bluetooth Mailing List - April 13-19, 2026 (W16)"
date: 2026-04-19
summary: "A week dominated by Naga Bhavani Akella's extraordinary Channel Sounding iteration — posting v3 through v10 (8 revisions, 32 messages) of the BlueZ Channel Sounding implementation, making her the most prolific contributor by a wide margin."
draft: false
---

## April 13 - April 19, 2026 (Week 16)

**Total messages: 315 (168 human, 147 CI/bot)**

Note: Of the 315 messages, 168 are human-generated, 147 are CI/bot (bluez.test.bot 64, BluezTestBot 44, patchwork-bot+bluetooth 22, bugzilla-daemon 9, kernel test robot 7, patchwork-bot+netdevbpf 1).

---

## Summary

A week dominated by Naga Bhavani Akella's extraordinary Channel Sounding iteration — posting v3 through v10 (8 revisions, 32 messages) of the BlueZ Channel Sounding implementation, making her the most prolific contributor by a wide margin. Luiz Augusto von Dentz resubmitted the `[GIT PULL] bluetooth-next 2026-04-13` with corrected Fixes tags (addressing Jakub Kicinski's W15 review), which Paolo Abeni reviewed and patchwork-bot+netdevbpf applied. Luiz also posted bass: Fix crashing on BT_BASS_MOD_SRC (v1/v2, applied to master), hci_event OOB read fix v4/v5 (continuing Binbin Huang's original), and conducted reviews across multiple threads. Tristan Madani posted a trio of security OOB read fixes: btintel TLV parser (v2), hci_bcm4377 firmware event (v2/v3), and btmtk WMT event (v2/v3) — all iterating through review feedback. Michal Dzik (Stream Unlimited) posted v1 and v2 of a 4-patch BAP broadcast fixes series. Bastien Nocera contributed 10 messages spanning sixaxis DS4 bdaddr fix, btmon-cs documentation, monitor manufacturer company IDs, and the glib removal series (shared/queue iterator + shared/ad.c) which was applied to master. StefanCondorache posted the DisableDiscoveryOnConnect adapter option (3 revisions) paired with a kernel-side HCI_QUIRK_NO_SCAN_WHILE_CONNECTED patch for combo chip coexistence. Frédéric Danis (Collabora) submitted btpclient GATT discovery and BAP discover support patches, both applied. The btintel_pcie ACPI build error found by kernel test robot prompted fixes from Siwei Zhang (v1/v2) and Luiz's review. Pauli Virtanen posted the SCO hold sk fix continuing his W15 SCO rework.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [GIT PULL] bluetooth-next 2026-04-13 | Luiz Augusto von Dentz | Intel | 56 (resubmission) | Resubmission of Apr 10 pull with corrected Fixes tags; Paolo Abeni reviewed, patchwork-bot+netdevbpf applied |
| [PATCH v4/v5] Bluetooth: hci_event: Fix OOB read and infinite loop in hci_le_create_big_complete_evt | Luiz Augusto von Dentz | Intel | 1 (2 revisions) | v4 (Apr 13), v5 applied (patchwork notification Apr 14); continuing rework of Binbin Huang's original |
| [PATCH v2] Bluetooth: btintel: fix OOB read from short TLV values in version parser | Tristan Madani | Independent | 1 | v2 (Apr 15); btintel TLV parser OOB read fix |
| [PATCH v2/v3] Bluetooth: hci_bcm4377: validate firmware event length in completion ring | Tristan Madani | Independent | 1 (2 revisions) | v2 (Apr 15), v3 (Apr 17); hci_bcm4377 firmware event OOB read fix |
| [PATCH v2/v3] Bluetooth: btmtk: validate WMT event SKB length before struct access | Tristan Madani | Independent | 1 (2 revisions) | v2 (Apr 15), v3 (Apr 17); btmtk WMT event OOB read fix |
| [PATCH v3/v4/v5] Bluetooth: l2cap: defer conn param update to avoid conn->lock/hdev->lock inversion | Mikhail Gavrilov | Independent | 1 (3 revisions) | v3 (Apr 14), v4 (Apr 14), v5 (Apr 14); L2CAP lock inversion fix continuing from W14/W15 |
| [PATCH v4] Bluetooth: hci_conn: fix potential UAF in create_big_sync | David Carlier | Independent | 1 | Applied (patchwork notification Apr 13); continuing from W15 |
| [PATCH v2] Bluetooth: L2CAP: Fix ECRED reconf rsp channel teardown race | Feng Ning | Independent | 1 | v2 (Apr 15); L2CAP ECRED reconfiguration response race fix |
| [PATCH v1/v2] Bluetooth: btintel_pcie: Fix build error when CONFIG_ACPI is disabled | Siwei Zhang | Intel | 1 (2 revisions) | v1 (Apr 16), v2 (Apr 16); fixes ACPI build error flagged by kernel test robot; Luiz reviewed |
| [PATCH] Bluetooth: btintel_pcie: Add ACPI dependency | Luiz Augusto von Dentz | Intel | 1 | Apr 16; alternative ACPI fix via Kconfig dependency |
| [PATCH] Bluetooth: SCO: hold sk properly in sco_conn_ready | Pauli Virtanen | Independent | 1 | Apr 18; continuing SCO rework from W15, proper sock_hold in sco_conn_ready |
| [PATCH v2] Bluetooth: Add Broadcom channel priority commands | Sasha Finkelstein | Apple | 2 | v2 (Apr 15); continuing from W15, Broadcom vendor HCI commands for A2DP/LE priority |
| [PATCH v4] Bluetooth: hci_qca: Convert timeout from jiffies to ms | Shuai Zhang | Qualcomm | 1 | v4 (Apr 15); continued from W14/W15 |
| [PATCH v4] Bluetooth: btmtk: add event filter to filter specific event | Chris Lu | MediaTek | 1 | Applied (patchwork notification Apr 16); continuing from W15 v1-v3 |
| [PATCH v3] Bluetooth: btintel_pcie: Support Product level reset | Chandrashekar Devegowda | Intel | 1 | Applied (patchwork notification Apr 13); v3 continuing from W15 |
| [PATCH v1] Bluetooth: btintel_pcie: treat boot stage bit 12 as warning | Kiran K | Intel | 1 | Apr 19; treat boot stage bit 12 as non-fatal warning |
| [PATCH v3] Bluetooth: L2CAP: Fix null-ptr-deref in l2cap_sock_new_connection_cb() | Dudu Lu | Independent | 1 | Applied (patchwork notification Apr 16) |
| [PATCH v2 RESEND] Bluetooth: L2CAP: Fix null-ptr-deref in l2cap_sock_state_change_cb() | Dudu Lu | Independent | 1 | Applied (patchwork notification Apr 16) |
| [PATCH v3] Bluetooth: L2CAP: Fix null-ptr-deref in l2cap_sock_get_sndtimeo_cb() | Dudu Lu | Independent | 1 | Applied (patchwork notification Apr 16) |
| [PATCH 1/2] adapter: add DisableDiscoveryOnConnect option for combo chip coexistence | StefanCondorache | Independent | 2 | Apr 18; paired with kernel-side HCI_QUIRK_NO_SCAN_WHILE_CONNECTED |
| [PATCH] Bluetooth: Add HCI_QUIRK_NO_SCAN_WHILE_CONNECTED for combo chips | StefanCondorache / Pauli Virtanen | Independent | 1 | Apr 19; kernel quirk to disable scan during connection for combo chips; Pauli posted the kernel patch |
| [PATCH v1 0/6] sdio: About pointers in sdio_device_id::driver_data | Uwe Kleine-König | BayLibre | 6 | Apr 17; SDIO driver_data pointer type cleanup affecting btsdio |
| [PATCH v7 0/8] Add support for handling PCIe M.2 Key E connectors in devicetree | Andy Shevchenko | Intel | 8 | Apr 14/16; cross-subsystem PCIe M.2 Key E DT support |
| [PATCH v3 0/8] Bluetooth, wifi, arm64: extend WCN driver to support WCN399x device | Manivannan Sadhasivam | Qualcomm | 8 | Apr 18; WCN399x BT+WiFi+arm64 cross-subsystem series |
| [PATCH v2] Bluetooth: RFCOMM: validate skb length in MCC handlers | SeungJu Cheon | Independent | 1 | v2 (Apr 14); continuing from W15 |
| [PATCH 0/2] Bluetooth: ISO: Fix KCSAN data-races on iso_pi(sk) | SeungJu Cheon | Independent | 2 | Apr 18; ISO socket KCSAN data race fixes |
| [PATCH] Bluetooth: L2CAP: handle zero txwin_size in ERTM RFC option | Michael Bommarito | Independent | 1 | Apr 17; L2CAP ERTM zero txwin_size handling |
| [PATCH] Bluetooth: virtio_bt: clamp rx length before skb_put | Michael Bommarito | Independent | 1 | Apr 18; virtio_bt rx length validation |
| [PATCH] Bluetooth: RFCOMM: require a credit byte before consuming it | Pengpeng Hou | ISCAS | 1 | Apr 17; RFCOMM credit byte validation |
| [PATCH] Bluetooth: btusb: Add Mercusys MA530 HWID 0x2c4e/0x0115 for Realtek 8761BUV | Kryštof Korb | Independent | 1 | Apr 15; new Realtek device ID |
| [PATCH v1] mediatek MT7925: update bluetooth firmware to 20260414153243 | Chris Lu | MediaTek | 1 | Apr 16; MT7925 firmware update |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [PATCH BlueZ v3-v10 0/3] Add initial Channel Sounding support | Naga Bhavani Akella | Qualcomm | 3 (8 revisions) | v3 (Apr 13) through v10 (Apr 17); 32 messages total; RAP interface, CS config parsing, Reflector role event handling; rapid iteration through Luiz's reviews |
| [PATCH BlueZ v1/v2] bass: Fix crashing on BT_BASS_MOD_SRC | Luiz Augusto von Dentz | Intel | 1 (2 revisions) | v1 (Apr 14), v2 (Apr 14); BT_BASS_MOD_SRC crash fix; applied to master |
| [PATCH BlueZ 0/4 and v2 0/4] BAP broadcast fixes | Michal Dzik | Stream Unlimited | 4 (2 revisions) | v1 (Apr 17), v2 (Apr 17); BAP broadcast metadata and transport fixes |
| [PATCH BlueZ v2 0/3] Remove glib dep from non-glib shared library | Bastien Nocera | Red Hat | 3 | Applied (patchwork notification Apr 16); shared/ad.c glib removal |
| [PATCH BlueZ 1/4] shared/queue: Add way to iterate over queue contents | Bastien Nocera | Red Hat | 4 | Applied (patchwork notification Apr 16); queue iterator for glib removal |
| [PATCH BlueZ v1 1/3] monitor: Add L2CAP channel details to analyze output | Bastien Nocera | Red Hat | 3 | Applied (patchwork notification Apr 16) |
| [PATCH BlueZ 1/2] monitor: define manufacturer company IDs | Bastien Nocera | Red Hat | 2 | Applied (patchwork notification Apr 14) |
| [PATCH BlueZ] doc: Add missing btmon-cs doc to btmon.rst | Bastien Nocera | Red Hat | 1 | v1 (Apr 16), v2 applied (patchwork notification Apr 16) |
| [PATCH BlueZ] sixaxis: DS4: use 0x12 cmd to get device bdaddr | Bastien Nocera | Red Hat | 1 | Apr 16; DualShock 4 bdaddr retrieval fix |
| [PATCH BlueZ v1 1/3] github: Add YAML issue template and btsnoop-analyzer workflow | Luiz Augusto von Dentz | Intel | 3 | Applied (patchwork notification Apr 16); GitHub issue template + btsnoop-analyzer |
| [PATCH BlueZ 1/2] unit: Add unit test for new MIN/MAX macros | Luiz Augusto von Dentz | Intel | 2 | Applied (patchwork notification Apr 17); MIN/MAX unit tests |
| [PATCH BlueZ] client/btpclient: Add GATT discovery supports | Frédéric Danis | Collabora | 1 | Applied to master (Apr 16) |
| [PATCH BlueZ] client/btpclient: Add BTP_OP_BAP_DISCOVER support | Frédéric Danis | Collabora | 1 | Applied to master (Apr 16) |
| [PATCH BlueZ] client/btpclient: Add GATT read and write value supports | Frédéric Danis | Collabora | 1 | Applied (patchwork notification Apr 16) |
| [PATCH BlueZ] monitor: Add decoding for Microsoft defined event | Archie Pusaka | Google | 1 | Apr 15; Microsoft vendor-specific event decoding for btmon |
| [PATCH BlueZ] audio/player: Ensure metadata string is valid UTF-8 | Luiz Augusto von Dentz | Intel | 1 | Applied (patchwork notification Apr 13) |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [Bug 221339] AX200 -19 errors on boot after firmware 20260313-1.1 | bugzilla-daemon | Continued (Apr 14, ongoing); Intel AX200 firmware regression |
| [Bug 221346] btintel_pcie (8086:e476) may hang in shutdown path (synchronize_irq) | bugzilla-daemon | Continued (Apr 15, ongoing); btintel_pcie reboot stress test hang |
| btintel_pcie ACPI build error | kernel test robot / Siwei Zhang / Luiz | kernel test robot flagged acpi_has_method undeclared function (Apr 16); Siwei Zhang posted v1/v2 fix; Luiz posted alternative ACPI Kconfig dependency fix |
| [BUG] net: caif: potential UAF in cfusbl_device_notify() | Wxm-233 | Apr 15; cross-subsystem CAIF/Bluetooth UAF report |
| [PATCH 5.10.y] Bluetooth: SCO: Fix use-after-free in sco_recv_frame() | Greg KH | Stable backport review (Apr 13); Greg KH response to stable submission |
| [PATCH 00/61] treewide: Use IS_ERR_OR_NULL over manual NULL check - refactor | (treewide) | Apr 16; cross-subsystem treewide refactoring CC'd to bluetooth |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Naga Bhavani Akella | Qualcomm | 32 |
| Luiz Augusto von Dentz | Intel | 29 |
| Michal Dzik | Stream Unlimited | 10 |
| Bastien Nocera | Red Hat | 10 |
| Tristan Madani | Independent | 6 |
| StefanCondorache | Independent | 5 |
| Dudu Lu | Independent | 5 |
| Uwe Kleine-König | BayLibre | 5 |
| Siwei Zhang | Intel | 4 |
| SeungJu Cheon | Independent | 4 |
| Manivannan Sadhasivam | Qualcomm | 4 |
| Chen-Yu Tsai | MediaTek | 4 |
| Chandrashekar Devegowda | Intel | 4 |
| Pauli Virtanen | Independent | 3 |
| Paolo Abeni | Red Hat | 3 |
| Mikhail Gavrilov | Independent | 3 |
| Frédéric Danis | Collabora | 3 |
| Archie Pusaka | Google | 3 |
| Andy Shevchenko | Intel | 3 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications and GIT PULL)

- [GIT PULL] bluetooth-next 2026-04-13 (Luiz, resubmission with corrected Fixes tags; applied by patchwork-bot+netdevbpf)
- Bluetooth: hci_event: Fix OOB read and infinite loop in hci_le_create_big_complete_evt (Luiz, v5, Apr 14)
- Bluetooth: btintel_pcie: Support Product level reset (Chandrashekar Devegowda, v3, Apr 13)
- Bluetooth: hci_conn: fix potential UAF in create_big_sync (David Carlier, v4, Apr 13)
- Bluetooth: SCO: fix sleeping under spinlock in sco_conn_ready (Pauli Virtanen, Apr 13)
- Bluetooth: btmtk: add event filter to filter specific event (Chris Lu, v4, Apr 16)
- Bluetooth: L2CAP: Fix null-ptr-deref in l2cap_sock_new_connection_cb() (Dudu Lu, v3, Apr 16)
- Bluetooth: L2CAP: Fix null-ptr-deref in l2cap_sock_state_change_cb() (Dudu Lu, v2 RESEND, Apr 16)
- Bluetooth: L2CAP: Fix null-ptr-deref in l2cap_sock_get_sndtimeo_cb() (Dudu Lu, v3, Apr 16)

### Pushed to bluez/bluez master

- 516099..1ab128: audio/player: Ensure metadata string is valid UTF-8 (Luiz, Apr 13)
- 1ab128..d6171b: bass: Fix crashing on BT_BASS_MOD_SRC (Luiz, Apr 14), workflow/ci: Add checks:write permission (Apr 14)
- d6171b..b3e1ac: monitor: define manufacturer company IDs (Bastien Nocera, Apr 14)
- 510623..590bed: monitor: Add L2CAP channel details to analyze output (Bastien Nocera, Apr 16)
- 590bed..07a0b8: shared: Remove glib dependency from src/shared/ad.c + shared/queue iterator (Bastien Nocera, Apr 16)
- 07a0b8..150806: client/btpclient: Add GATT read and write value supports (Frédéric Danis, Apr 16), github: Add YAML issue template and btsnoop-analyzer workflow (Luiz, Apr 16)
- 150806..ce07e9: client/btpclient: Add GATT discovery + BTP_OP_BAP_DISCOVER (Frédéric Danis, Apr 16), doc: btmon-cs (Bastien Nocera, Apr 16)
- ce07e9..73c694: unit: Add unit test for new MIN/MAX macros (Luiz, Apr 17)

### Also applied to bluez.git (via patchwork notifications)

- audio/player: Ensure metadata string is valid UTF-8 (Luiz, Apr 13)
- gatt-database: remove database from dbs list when destroyed (Pauli Virtanen, Apr 13)
- monitor: define manufacturer company IDs (Bastien Nocera, 2-patch series, Apr 14)
- monitor: Add L2CAP channel details to analyze output (Bastien Nocera, 3-patch series, Apr 16)
- shared/queue: Add way to iterate over queue contents (Bastien Nocera, 4-patch series, Apr 16)
- Remove glib dep from non-glib shared library (Bastien Nocera, v2, 3-patch series, Apr 16)
- doc: Add missing btmon-cs doc to btmon.rst (Bastien Nocera, v2, Apr 16)
- client/btpclient: Add GATT read and write value supports (Frédéric Danis, Apr 16)
- github: Add YAML issue template and btsnoop-analyzer workflow (Luiz, 3-patch series, Apr 16)
- unit: Add unit test for new MIN/MAX macros (Luiz, 2-patch series, Apr 17)

---

## Company Focus Areas

### Intel
Luiz Augusto von Dentz led with 29 messages: resubmitted `[GIT PULL] bluetooth-next 2026-04-13` with corrected Fixes tags (Paolo Abeni reviewed and applied), posted bass: Fix crashing on BT_BASS_MOD_SRC (v1/v2, applied to master), hci_event OOB read v4/v5 (applied), btintel_pcie ACPI dependency fix, github YAML issue template + btsnoop-analyzer workflow (applied), MIN/MAX unit tests (applied), audio/player UTF-8 metadata fix (applied), and conducted reviews across multiple threads including Channel Sounding, l2cap, RFCOMM, and btintel patches. Siwei Zhang posted v1/v2 of the btintel_pcie ACPI build error fix. Chandrashekar Devegowda's v3 btintel_pcie product level reset was applied. Kiran K posted btintel_pcie boot stage bit 12 warning treatment. Andy Shevchenko contributed to the PCIe M.2 Key E DT series.

### Qualcomm
Naga Bhavani Akella was the week's most prolific contributor (32 messages), posting v3 through v10 of the BlueZ Channel Sounding implementation — 8 revisions in 5 days — rapidly iterating on the RAP interface, CS config parsing, and Reflector role event handling based on Luiz's feedback. This is one of the most intensive single-feature development sprints seen on the mailing list. Manivannan Sadhasivam posted v3 of the WCN399x BT+WiFi+arm64 cross-subsystem enablement series (4 messages). Shuai Zhang posted v4 of the hci_qca jiffies-to-ms conversion.

### Red Hat
Bastien Nocera contributed 10 messages across multiple BlueZ improvements: sixaxis DS4 bdaddr fix, btmon-cs documentation (v1/v2), monitor manufacturer company IDs (2-patch series), L2CAP channel analyze output (3-patch series), shared/queue iterator (4-patch series), and the glib removal from shared/ad.c (v2, 3-patch series). Most of these were applied to bluez.git master during the week, representing significant BlueZ code quality improvements.

### Stream Unlimited
Michal Dzik contributed 10 messages with v1 and v2 of the BAP broadcast fixes 4-patch series, addressing broadcast transport metadata and configuration issues.

### Apple
Sasha Finkelstein posted v2 (2 messages) of the Broadcom channel priority commands, continuing from W15.

### MediaTek
Chris Lu's btmtk event filter v4 was applied to bluetooth-next (patchwork notification Apr 16). Chris also posted an MT7925 firmware update. Chen-Yu Tsai contributed 4 messages in cross-subsystem discussions.

### Collabora
Frédéric Danis contributed 3 messages with btpclient GATT discovery, BTP_OP_BAP_DISCOVER, and GATT read/write value supports — all applied to bluez.git master.

### Google
Archie Pusaka posted the monitor Microsoft vendor-specific event decoding patch (3 messages).

### BayLibre
Uwe Kleine-König posted the 6-patch SDIO driver_data pointer type cleanup series (5 messages), affecting btsdio among other SDIO drivers.

### ISCAS
Pengpeng Hou posted the RFCOMM credit byte validation patch (1 message).

### Independent Contributors
Tristan Madani was the most active independent contributor (6 messages) with a trio of security OOB read fixes: btintel TLV parser v2, hci_bcm4377 firmware event v2/v3, and btmtk WMT event v2/v3. StefanCondorache contributed 5 messages with the DisableDiscoveryOnConnect adapter option (3 revisions) plus the kernel-side HCI_QUIRK_NO_SCAN_WHILE_CONNECTED combo chip quirk. Dudu Lu posted 5 messages with three L2CAP null-ptr-deref fixes (all applied to bluetooth-next). SeungJu Cheon contributed 4 messages: RFCOMM skb validation v2 and ISO KCSAN data-race fixes. Pauli Virtanen posted 3 messages continuing the SCO rework with sco_conn_ready sock_hold fix. Mikhail Gavrilov iterated the l2cap lock inversion fix through v3-v5 (3 messages). Michael Bommarito posted 2 new patches: L2CAP ERTM zero txwin_size handling and virtio_bt rx length clamping. Other contributors: Feng Ning (2, L2CAP ECRED reconf race fix), Paul Menzel (2, reviews), Neal Gompa (2), Herve Codina (2), Krzysztof Kozlowski (2), Kryštof Korb (1, Mercusys MA530 device ID), Conor Kotwasinski (1, sysfs kobj fix CC'd to bluetooth), Wxm-233 (1, CAIF UAF bug report), Thorsten Leemhuis (1), Venkat Rao Bagalkote (1), Jakub Kicinski (1), Greg KH (1, stable backport review), Dmitry Baryshkov (1), Luca Weiss (1).

---

## Notable Trends

1. **Channel Sounding sprint: v3 to v10 in five days**: Naga Bhavani Akella (Qualcomm) posted 8 revisions of the BlueZ Channel Sounding implementation between April 13-17, generating 32 messages — the highest single-contributor volume this week. This rapid iteration cycle demonstrates both the complexity of the CS feature and the tight feedback loop with maintainer Luiz.

2. **GIT PULL resubmission and corrected Fixes tags**: The `[GIT PULL] bluetooth-next 2026-04-13` resubmission — addressing Jakub Kicinski's W15 review of broken Fixes tag SHA1s — was reviewed by Paolo Abeni and applied. This marks the fifth bluetooth pull request in six weeks.

3. **Security OOB read fix wave**: Tristan Madani submitted three independent OOB read fixes (btintel, hci_bcm4377, btmtk) in a single burst, each iterating through v2/v3. This focused security audit pattern across multiple driver subsystems is a positive trend for bluetooth stack hardening.

4. **Bastien Nocera's glib removal campaign**: The shared/queue iterator and shared/ad.c glib removal patches were applied to master, continuing the systematic effort to eliminate glib dependencies from BlueZ's shared library. Combined with the monitor and documentation patches, this represents significant BlueZ modernization.

5. **Combo chip coexistence work**: StefanCondorache's DisableDiscoveryOnConnect option and HCI_QUIRK_NO_SCAN_WHILE_CONNECTED kernel quirk address a practical problem for combo BT/WiFi chips where scanning interferes with active connections — a new area of BlueZ configuration.

6. **btpclient expansion for PTS testing**: Frédéric Danis (Collabora) contributed three btpclient patches (GATT discovery, BAP discover, GATT read/write) — all applied — expanding BlueZ's automated Bluetooth Profile Tuning Suite (PTS) testing infrastructure.

7. **btintel_pcie ACPI build regression**: The kernel test robot caught a CONFIG_ACPI build dependency issue in btintel_pcie, prompting competing fixes from Siwei Zhang (conditional compilation) and Luiz (Kconfig dependency). This highlights the value of automated build testing across configurations.
