---
title: "Weekly Report: linux-bluetooth Mailing List - March 9 - March 15, 2026 (Week 11)"
date: 2026-03-15
summary: "This week saw 175 bluetooth-relevant messages. Activity was dominated by Luiz's [GIT PULL] bluetooth 2026-03-12 submission to net-next, a major btmon documentation overhaul (v1 6-patch + v2 7-patch series), and the v4 L2CAP ECRED fix (applied)."
draft: false
---

**Total messages: 175 (124 human, 46 CI/bot, 5 excluded)**

Note: Of the 175 messages, 124 are human-generated, 46 are CI/bot (BluezTestBot, bluez.test.bot, patchwork-bot+bluetooth, syzbot, github-actions[bot]), and 5 Jeff Layton messages (cross-subsystem vfs thread) are excluded per standing policy.

---

## Summary

This week saw 175 bluetooth-relevant messages. Activity was dominated by Luiz's [GIT PULL] bluetooth 2026-03-12 submission to net-next, a major btmon documentation overhaul (v1 6-patch + v2 7-patch series), and the v4 L2CAP ECRED fix (applied). Pauli Virtanen posted two RFC series for ISO TX timestamp support (kernel + BlueZ test sides). Lukas Johannes Möller contributed L2CAP security fixes (type confusion + info response validation, applied). Dmitry Baryshkov posted WCN399x support v4 (applied). Other notable activity included MediaTek firmware updates (MT7920, MT7921, MT7922), bug reports for ad_replace_name() and bthost_set_pin_code buffer overflows, Bastien Nocera's btmgmt --help fix and mesh-gatt dist fix, and continued LE connection timeout discussion from Dajid Morel.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [GIT PULL] bluetooth 2026-03-12 | Luiz Augusto von Dentz | Intel | — | Pull request to net-next; discussion with Jakub Kicinski (Mar 14-15) and Konstantin Ryabitsev (Mar 15) |
| [PATCH v4] Bluetooth: L2CAP: Fix accepting multiple L2CAP_ECRED_CONN_REQ | Luiz Augusto von Dentz | Intel | 1 | Applied to bluetooth-next (patchwork notification Mar 11) |
| [PATCH v3] Bluetooth: L2CAP: Fix accepting multiple L2CAP_ECRED_CONN_REQ | Luiz Augusto von Dentz | Intel | 1 | Superseded by v4 (Mar 9) |
| [PATCH 1/2] Bluetooth: L2CAP: Fix type confusion in l2cap_ecred_reconf_rsp() | Lukas Johannes Möller | Independent | 2 | Applied to bluetooth-next (patchwork notification Mar 11); includes L2CAP_INFO_RSP payload validation |
| [RFC PATCH 0/2] Bluetooth: ISO: support setting send Time_Stamp and LE Read ISO TX Sync | Pauli Virtanen | Independent | 2 | Kernel RFC for ISO TX timestamp support; discussion with Luiz and Tailu Shi (Mar 11-13) |
| [PATCH] Bluetooth: ISO: add timestamp for outgoing HCI ISO packet | Tailu Shi | Samsung | 1 | Related ISO timestamp work; discussed with Pauli Virtanen and Paul Menzel (Mar 11-13) |
| [PATCH v4 0/2] Bluetooth: extend WCN driver to support WCN399x device | Dmitry Baryshkov | Qualcomm | 2 | Applied to bluetooth-next (patchwork notification Mar 12); ROM version fix + pwrseq support |
| [RESEND] Bluetooth: L2CAP: Fix use-after-free in l2cap_unregister_user | (from prior week) | — | 1 | Applied to bluetooth-next (patchwork notification Mar 9) |
| [PATCH] Bluetooth: L2CAP: Fix stack-out-of-bounds read in l2cap_ecred_conn_req | Minseo Park | Independent | 1 | New L2CAP bounds-check fix (Mar 15) |
| [PATCH] Bluetooth: hci_sync: annotate data-races around hdev->req_status | Cen Zhang | Independent | 1 | Data race annotation (Mar 15) |
| [PATCH v1/v2] Bluetooth: hci_ll: Fix firmware leak on error path | Anas Iqbal | Independent | 1 (2 revisions) | Firmware leak fix; reviewed by Paul Menzel (Mar 14-15) |
| [PATCH] Bluetooth: SCO: Fix use-after-free in sco_recv_frame() | Hyunwoo Kim | Independent | 1 | SCO UAF fix (Mar 12) |
| [PATCH] Bluetooth: L2CAP: Validate PDU length before reading SDU length | Hyunwoo Kim | Independent | 1 | L2CAP validation fix (Mar 12) |
| [PATCH] bluetooth: btusb: Fix whitespace in btusb.c | Lukas Kraft | Independent | 1 | Whitespace cleanup (Mar 13) |
| [PATCH v1] arm64: dts: qcom: hamoa-iot-evk: support Bluetooth over both USB and UART | Shuai Zhang | Qualcomm | 1 | DTS enablement; reviewed by Konrad Dybcio, Dmitry Baryshkov (Mar 11-13) |
| [PATCH v1] Bluetooth: btusb: MT7925: Add VID/PID 0e8d/8c38 | Chris Lu | MediaTek | 1 | New device ID (Mar 9) |
| [PATCH v1] Bluetooth: btusb: MT7922: Add VID/PID 0e8d/223c | Chris Lu | MediaTek | 1 | New device ID (Mar 9) |
| [PATCH v1] mediatek MT7920: update bluetooth firmware to 20260224111231 | Chris Lu | MediaTek | 1 | Firmware update (Mar 13) |
| [PATCH v1] mediatek MT7921: update bluetooth firmware to 20260224111243 | Chris Lu | MediaTek | 1 | Firmware update (Mar 13) |
| [PATCH v1] mediatek MT7922: update bluetooth firmware to 20260224103448 | Chris Lu | MediaTek | 1 | Firmware update (Mar 9); discussed by Josh Boyer |
| [PATCH 5.15.y/6.1.y] Bluetooth: hci_core: Fix use-after-free in vhci_flush() | Ruohan Lan | Independent | 2 | Stable kernel backports (Mar 9) |
| [PATCH v3] Bluetooth: L2CAP: Fix not tracking outstanding TX ident | Joan Bruguera Micó | Independent | — | Follow-up reply (Mar 15, continued from prior week) |
| Re: [PATCH v4] Bluetooth: Increase LE connection timeout for industrial sensors | Dajid Morel / Luiz / Paul Menzel | Volvo / Intel | — | Continued discussion (Mar 9-10, 5+ messages) |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [PATCH BlueZ v1 1/6] doc/btmon: Split documentation | Luiz Augusto von Dentz | Intel | 6 | v1: Split btmon docs into advertising, SMP, L2CAP, LE Audio, GATT, connections (Mar 10) |
| [PATCH BlueZ v2 1/7] doc/btmon: Add GATT database reconstruction guide | Luiz Augusto von Dentz | Intel | 7 | v2: Added BIG Sync flow, advertising/scanning, error codes, L2CAP, SMP, LE Audio docs; applied (patchwork notification Mar 11) |
| [RFC PATCH BlueZ 0/4] iso-tester: add tests for set & receive ISO HW timestamps | Pauli Virtanen | Independent | 4 | BlueZ test side for ISO TX timestamp RFC; bthost + btdev + iso-tester changes (Mar 11) |
| [PATCH BlueZ 0/1] tools/btmgmt: Fix btmgmt --help hanging | Bastien Nocera | Red Hat | 1 | Applied (push to master, Mar 11) |
| mesh-gatt: Fix JSON files missing from dist | Bastien Nocera (hadess) | Red Hat | 1 | Applied (push to master, Mar 12) |
| [PATCH BlueZ 0/1] client: add bluetoothctl broadcast-name helper | Raghavendra Rao | Collabora | 1 | Broadcast-name advertise helper (Mar 13) |
| [PATCH BlueZ 0/1] Stop and start some actions on suspend and resume | berend de schouwer | Independent | 1 | Pause discovery on suspend; discussion with Luiz (Mar 9, 12) |
| [PATCH BlueZ 0/2] lib/bluetooth/mgmt: Add missing mgmt_op entry for HCI_CMD_SYNC | Gabriel Woloz | Independent | 2 (2 submissions) | v1 + v2; applied (patchwork notification Mar 9) |
| [PATCH v3] transport: Fix set volume failure with invalid device volume | Jinwang Li | Qualcomm | 1 | v3; applied (patchwork notification Mar 9) |
| Re: [PATCH BlueZ v2 1/6] shared/gatt: make secondary discovery optional | Martin BTS / Luiz | Independent / Intel | — | Continued Nintendo Switch 2 series discussion (Mar 9) |
| Re: [PATCH BlueZ v2 0/6] Nintendo Switch 2 support | Vicki Pfau | Independent | — | Review reply (Mar 10) |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [BUG] ad_replace_name() buffer overflow | 候朋朋 | ad_replace_name() copies up to 254 bytes into utf8_name[250] (Mar 11) |
| [BUG] bluez: Buffer overflow in bthost_set_pin_code | 候朋朋 | bthost.c bthost_set_pin_code buffer overflow (Mar 11) |
| syzbot: KASAN stack-out-of-bounds Read in l2cap_send_cmd | syzbot | Stack OOB read report (Mar 14) |
| syzbot: WARNING in l2cap_conn_start | syzbot | Warning report (Mar 12) |
| Re: [PATCH v2] Bluetooth: HIDP: cap report descriptor size | Benjamin Tissoires | Follow-up from prior week (Mar 11) |
| Re: [PATCH v1] Bluetooth: btusb: Allow firmware re-download when version matches | Shuai Zhang / Dmitry Baryshkov | Continued discussion (Mar 13) |
| Re: [PATCH v3 00/10] Fix up WCN6855 RFA power supply name | Konrad Dybcio | Qualcomm power supply naming (Mar 11) |
| Re: [PATCH v2 4/4] arm64: dts: qcom: sm7225-fairphone-fp4: Add Bluetooth | Conor Dooley / Luca Weiss | Fairphone 4 BT DTS review (Mar 10-11) |
| Re: [PATCH v1] mediatek MT7922: update firmware | Josh Boyer | Discussion about MT7922 firmware update (Mar 9) |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 34 |
| Pauli Virtanen | Independent | 12 |
| Gabriel Woloz | Independent | 6 |
| Chris Lu | MediaTek | 5 |
| Dmitry Baryshkov | Qualcomm | 5 |
| Bastien Nocera | Red Hat | 4 |
| Dajid Morel | Volvo | 4 |
| Konrad Dybcio | Qualcomm | 4 |
| Paul Menzel | Independent | 4 |
| Shuai Zhang | Qualcomm | 3 |
| Tailu Shi | Samsung | 3 |
| Raghavendra Rao | Collabora | 3 |
| Anas Iqbal | Independent | 3 |
| berend de schouwer | Independent | 3 |
| Jakub Kicinski | Independent | 3 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- Bluetooth: L2CAP: Fix accepting multiple L2CAP_ECRED_CONN_REQ (v4, Luiz, Mar 11)
- Bluetooth: L2CAP: Fix type confusion in l2cap_ecred_reconf_rsp() + Validate L2CAP_INFO_RSP payload length (Lukas Johannes Möller, 2 patches, Mar 11)
- Bluetooth: extend WCN driver to support WCN399x device (v4, Dmitry Baryshkov, 2 patches, Mar 12)
- Bluetooth: L2CAP: Fix use-after-free in l2cap_unregister_user (RESEND, Mar 9)

### Pushed to bluez/bluez master (from push listing lines in the archive)

- a035be: build: Remove legacy hcidump utility (Marcel Holtmann, Mar 13)
- 1d4e25: doc/btmon: Add GATT database reconstruction guide + 6 more btmon docs (Luiz, v2 7-patch series, Mar 11)
- 994184: mesh-gatt: Fix JSON files missing from dist (Bastien Nocera / hadess, Mar 12)
- 8e04c2: tools/btmgmt: Fix btmgmt --help hanging (Bastien Nocera / hadess, Mar 11)
- 13a23d: client: add advertise broadcast-name helper (Raghavendra Rao, Mar 13)
- 9c6e97: lib/mgmt: Added missing command "HCI Cmd Sync" to mgmt_op (Gabriel Woloz, Mar 9)

### Also applied to bluez.git (via patchwork notifications)

- doc/btmon: Add GATT database reconstruction guide (v2 1/7 series, Mar 11)
- transport: Fix set volume failure with invalid device volume (v3, Jinwang Li, Mar 9)
- lib/bluetooth/mgmt: Add missing mgmt_op entry for HCI_CMD_SYNC (Mar 9)
- Add missing string to list of commands in mgmt (Mar 9)

---

## Company Focus Areas

### Intel
Luiz Augusto von Dentz led with 34 messages: submitted the [GIT PULL] bluetooth 2026-03-12 to net-next (with review discussion from Jakub Kicinski and Konstantin Ryabitsev), posted a major btmon documentation overhaul in two iterations (v1 6-patch splitting existing docs + v2 7-patch adding GATT, SMP, L2CAP, LE Audio, BIG Sync, advertising/scanning, error codes; v2 applied), landed the v4 L2CAP ECRED fix, continued LE connection timeout review with Dajid Morel, and reviewed Nintendo Switch 2 patches. Marcel Holtmann pushed removal of the legacy hcidump utility to master.

### Qualcomm
Dmitry Baryshkov posted WCN399x v4 support (ROM version fix + pwrseq, applied to bluetooth-next) and provided review on DTS and firmware patches. Konrad Dybcio reviewed the hamoa-iot-evk DTS and WCN6855 power supply patches. Shuai Zhang posted the hamoa-iot-evk DTS patch and followed up on btusb firmware re-download.

### Red Hat
Bastien Nocera contributed 4 messages: fixed btmgmt --help hanging (applied) and fixed mesh-gatt JSON files missing from dist (applied).

### MediaTek
Chris Lu posted 5 firmware/device ID patches: MT7920 and MT7921 firmware updates, MT7922 firmware update (discussed by Josh Boyer), and new VID/PID additions for MT7922 and MT7925.

### Samsung
Tailu Shi posted an ISO timestamp patch for outgoing HCI ISO packets and engaged in detailed technical discussion with Pauli Virtanen about the ISO TX timestamp approach.

### Collabora
Raghavendra Rao added a broadcast-name helper to bluetoothctl's advertise command (pushed to master).

### Volvo
Dajid Morel continued the LE connection timeout discussion (4 messages, v4 from prior week), engaging with Luiz and Paul Menzel.

### Independent Contributors
Pauli Virtanen posted two RFC series for ISO TX timestamp support — kernel-side (allowing userspace to set seqnum/timestamp, LE Read ISO TX Sync for HW timestamps) and BlueZ-side (bthost, btdev, iso-tester). Lukas Johannes Möller contributed two L2CAP security fixes (type confusion + info response validation, both applied). Gabriel Woloz added the missing HCI_CMD_SYNC mgmt_op entry (2 iterations, applied). Anas Iqbal fixed a firmware leak in hci_ll (2 revisions). Hyunwoo Kim posted SCO UAF and L2CAP PDU validation fixes. berend de schouwer proposed pausing discovery on suspend/resume. 候朋朋 filed two buffer overflow bug reports (ad_replace_name, bthost_set_pin_code). Minseo Park posted an L2CAP stack-out-of-bounds fix. Cen Zhang annotated data races in hci_sync.

---

## Notable Trends

1. **GIT PULL to net-next**: Luiz submitted the bluetooth 2026-03-12 pull request, with Jakub Kicinski and Konstantin Ryabitsev discussing pull process details — a significant milestone for getting recent bluetooth-next work into the mainline networking tree.
2. **btmon documentation overhaul**: Two iterations of documentation splitting and additions (GATT, SMP, L2CAP, LE Audio, BIG Sync, advertising/scanning, error codes) represent the largest single documentation effort for btmon to date.
3. **ISO TX timestamps gaining momentum**: Pauli Virtanen's dual RFC series (kernel + BlueZ tests) and Tailu Shi's related patch signal active development of ISO timestamp support, important for LE Audio quality and synchronization.
4. **Continued L2CAP security focus**: Multiple L2CAP fixes this week (ECRED v4, type confusion, info response validation, PDU length, stack OOB, ECRED conn_req bounds) continue the trend of hardening L2CAP against malformed input.
5. **Legacy hcidump removed**: Marcel Holtmann pushed removal of the legacy hcidump utility from BlueZ master, marking the end of this long-deprecated tool.
6. **Buffer overflow reports**: Two new bug reports from 候朋朋 (ad_replace_name and bthost_set_pin_code) highlight potential security issues in name handling and emulator code.
