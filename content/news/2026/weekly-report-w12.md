---
title: "Weekly Report: linux-bluetooth Mailing List - March 16 - March 22, 2026 (Week 12)"
date: 2026-03-22
summary: "This was a high-activity week dominated by the bluetooth regression fix saga and Pauli Virtanen's massive functional testing series. Luiz submitted [GIT PULL] bluetooth 2026-03-19 which was applied to netdev/net.git, but not before Thorsten Leemhuis flagged that the L2CAP ident regression fix was \"likely to miss -rc5\"..."
draft: false
---

**Total messages: 267 (182 human, 74 CI/bot, 11 excluded)**

Note: Of the 267 messages, 182 are human-generated, 74 are CI/bot (BluezTestBot, bluez.test.bot, patchwork-bot+bluetooth, patchwork-bot+netdevbpf, kernel test robot, bugzilla-daemon), and 11 are excluded (3 treewide IS_ERR_OR_NULL replies + 8 non-BT cross-subsystem M.2 connector patches/reviews).

---

## Summary

This was a high-activity week dominated by the bluetooth regression fix saga and Pauli Virtanen's massive functional testing series. Luiz submitted `[GIT PULL] bluetooth 2026-03-19` which was applied to netdev/net.git, but not before Thorsten Leemhuis flagged that the L2CAP ident regression fix was "likely to miss -rc5", sparking a multi-day thread involving Linus Torvalds, Jakub Kicinski, and Luiz (4 patch revisions, v1-v4, ultimately applied). Hyunwoo Kim posted 5 new security fixes (L2CAP UAF, deadlock, ERTM infinite loop; SCO UAF; RFCOMM MTU validation) with v2 follow-ups. Pauli Virtanen posted v2 and v3 of a 20-patch functional/integration testing framework for BlueZ (btvirt improvements, test-runner enhancements, Pipewire audio tests, OBEX tests). Bastien Nocera landed 3 BlueZ fixes (adapter system config warning, shared/shell crash, shared/shell SIGSEGV review). Wouter contributed the shared/shell SIGSEGV fix (v1 + v2, applied). Other significant activity included Shuai Zhang's hci_qca WCN7850 power control series, Martin BTS's Nintendo Switch 2 v3 patches, Helen Koike's L2CAP null-ptr-deref fix (applied), and multiple bug reports.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [GIT PULL] bluetooth 2026-03-19 | Luiz Augusto von Dentz | Intel | — | Applied to netdev/net.git (main); patchwork-bot+netdevbpf notification Mar 20 |
| [PATCH v1/v2/v3/v4] Bluetooth: L2CAP: Fix regressions caused by reusing ident | Luiz Augusto von Dentz | Intel | 1 (4 revisions) | v4 applied to bluetooth-next; reviewed by Christian Eggers (ARRI); central to the regression fix drama |
| [PATCH v1 1/2] Bluetooth: L2CAP: Fix printing wrong information if SDU length exceeds MTU + [PATCH v1 2/2] MGMT: Fix dangling pointer on mgmt_add_adv_patterns_monitor_complete | Luiz Augusto von Dentz | Intel | 2 | Applied to bluetooth-next (patchwork notification Mar 17); reviewed by Paul Menzel |
| [PATCH] Bluetooth: L2CAP: Fix null-ptr-deref on l2cap_sock_ready_cb | Helen Koike | Igalia | 1 | Applied to bluetooth-next (patchwork notification Mar 19) |
| [PATCH] bluetooth: btusb: Fix whitespace in btusb.c | Lukas Kraft | Independent | 1 | Applied to bluetooth-next (patchwork notification Mar 19; patch from prior week) |
| [PATCH] Bluetooth: hci_sync: annotate data-races around hdev->req_status | Cen Zhang | Independent | 1 | Applied to bluetooth-next (patchwork notification Mar 18; patch from prior week) |
| [PATCH v2] Bluetooth: hci_ll: Fix firmware leak on error path | Anas Iqbal | Independent | 1 | Applied to bluetooth-next (patchwork notification Mar 18; patch from prior week) |
| [PATCH] Bluetooth: L2CAP: Validate PDU length before reading SDU length in l2cap_ecred_data_rcv() | Hyunwoo Kim | Independent | 1 | Applied to bluetooth-next (patchwork notification Mar 16; from prior week) |
| [PATCH] Bluetooth: L2CAP: Fix stack-out-of-bounds read in l2cap_ecred_conn_req | Minseo Park | Independent | 1 | Applied to bluetooth-next (patchwork notification Mar 16; from prior week) |
| [PATCH] Bluetooth: SCO: Fix use-after-free in sco_recv_frame() | Hyunwoo Kim | Independent | 1 | Applied to bluetooth-next (patchwork notification Mar 16; from prior week) |
| [GIT PULL] bluetooth 2026-02-23 | Luiz Augusto von Dentz | Intel | — | Applied to bluetooth-next (patchwork notification Mar 16; belated notification) |
| [PATCH] Bluetooth: L2CAP: Fix use-after-free in l2cap_chan_timeout() | Hyunwoo Kim | Independent | 1 (+v2) | New; v2 posted Mar 20; reviewed by Luiz |
| [PATCH] Bluetooth: SCO: Fix use-after-free in sco_conn_ready() | Hyunwoo Kim | Independent | 1 | New security fix (Mar 19) |
| [PATCH] Bluetooth: RFCOMM: Validate MTU in rfcomm_apply_pn() | Hyunwoo Kim | Independent | 1 | New; prevents infinite loop (Mar 19) |
| [PATCH] Bluetooth: L2CAP: Fix ERTM re-init and zero pdu_len infinite loop | Hyunwoo Kim | Independent | 1 (+v2) | New; v2 posted Mar 20; reviewed by Luiz |
| [PATCH] Bluetooth: L2CAP: Fix deadlock in l2cap_conn_del() | Hyunwoo Kim | Independent | 1 (+v2) | New; v2 posted Mar 20; reviewed by Luiz |
| [PATCH v1/v2] Bluetooth: hci_qca: disable power control for WCN7850 when bt_en is not defined | Shuai Zhang | Qualcomm | 1 (2 revisions) | Discussion with Dmitry Baryshkov, Bartosz Golaszewski (Mar 19) |
| [PATCH] Bluetooth: hci_h4: Fix race during initialization | Jonathan Rissanen | Axis Communications | 1 | New; reviewed by Luiz (Mar 20) |
| [PATCH] Bluetooth: btusb: cancel pending HCI commands before USB suspend | Frederik Berg | Independent | 1 | New; discussion with Luiz (Mar 20) |
| [PATCH] Bluetooth: btusb: clear remote wake on idle Intel ACPI paths | Sean Rhodes | Star Labs | 1 | New (Mar 18) |
| [PATCH v1] Bluetooth: hci_release_dev: disable delayed devcoredump work | Aby Sam Ross | Independent | 1 | New (Mar 22) |
| [PATCH v2] Bluetooth: btintel: serialize btintel_hw_error() with hci_req_sync_lock | Cen Zhang | Independent | 1 | New v2 (Mar 18) |
| [PATCH] Bluetooth: btintel_pcie: validate RX packet length against buffer size | moonafterrain | Independent | 1 | New; discussed by Junrui Luo, Paul Menzel (Mar 17-19) |
| [PATCH] Bluetooth: L2CAP: Fix send LE flow credits in ACL link | zhangchen200426 | Independent | 1 | New (Mar 19) |
| [PATCH] Bluetooth: HCI: Fix hci0 not release in usb disconnect process | zhangchen200426 | Independent | 1 | New (Mar 18) |
| [PATCH v5] Bluetooth: btrtl: Add firmware format v3 support | Hilda Wu | Realtek | 1 | v5 (Mar 16) |
| [PATCH v6 7/9] Bluetooth: hci_qca: Add M.2 Bluetooth device support using pwrseq | Manivannan Sadhasivam | Qualcomm | 1 | Part of cross-subsystem M.2 series; BT-specific patch |
| [PATCH v6 9/9] power: sequencing: pcie-m2: Create serdev device for WCN7850 bluetooth | Manivannan Sadhasivam | Qualcomm | 1 | Part of cross-subsystem M.2 series; BT-specific patch; discussed with Bartosz Golaszewski, kernel test robot |
| Re: [PATCH V4] arm64: dts: qcom: qcs8300-ride: Enable Bluetooth support | Bjorn Andersson | Independent | — | Merged to qcom DTS tree (Mar 18) |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [PATCH BlueZ v2/v3 00/20] Functional/integration testing | Pauli Virtanen | Independent | 20 (2 iterations) | Massive series: btvirt improvements (pkt length checks, SCO support, unix socket paths), test-runner enhancements (virtio-serial, -o/--option, -k source root), functional testing framework, Pipewire audio tests, OBEX tests, kernel warning detection, Python formatting; v2 Mar 20, v3 Mar 22 |
| [PATCH BlueZ v3 0/6] BLE-HID/Nintendo Switch 2 support | Martin BTS | Independent | 6 | v3: GATT skip_secondary, secondary service timeout, device alias rename, Gaming appearance, gatt-uhid bridge, Switch 2 plugin (Mar 17) |
| [PATCH BlueZ 0/1] adapter: Fix "Failed to set default system config" startup warning | Bastien Nocera | Red Hat | 1 | Applied to bluez.git master (patchwork Mar 19, push Mar 19) |
| [PATCH BlueZ 0/1] shared/shell: Fix crash on bluetoothctl command completion | Bastien Nocera | Red Hat | 1 | Pushed to master (Mar 19) |
| [PATCH BlueZ v1/v2 0/1] shared/shell: Fix SIGSEGV on invalid input | Wouter | Independent | 1 (2 revisions) | Applied to bluez.git master (patchwork Mar 19); reviewed by Bastien Nocera |
| [PATCH BlueZ v1] shared/ad: Fix not checking length on ad_replace_name | Luiz Augusto von Dentz | Intel | 1 | Applied to bluez.git master (patchwork Mar 17, push Mar 17); reviewed by Bastien Nocera |
| [PATCH BlueZ 0/1] tools/btmgmt: Fix btmgmt --help hanging | Bastien Nocera | Red Hat | 1 | Applied to bluez.git master (patchwork Mar 17; patch from prior week) |
| [PATCH BlueZ 1/1] client: Add public-broadcast profile advertise command | Raghavendra Rao | Collabora | 1 (2 submissions) | Resubmitted Mar 17; reviewed by Luiz (Mar 17); CI push (Mar 17) |
| [PATCH BlueZ v1 0/1] test: Fix pbap-client to work with system bus obexd | Sarveshwar Bajaj | NXP | 1 | New; reviewed by Luiz (Mar 20); CI push (Mar 20) |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| bluetooth regression fix likely to miss -rc5 | Thorsten Leemhuis / Linus Torvalds / Jakub Kicinski / Luiz | Major thread: Thorsten flagged L2CAP ident regression fix might miss -rc5 window (Mar 20); Linus Torvalds weighed in 3 times (Mar 20-21); Jakub Kicinski discussed pull process; ultimately resolved with v4 applied to bluetooth-next |
| Re: [GIT PULL] bluetooth 2026-03-12 | Jakub Kicinski / Luiz / Konstantin Ryabitsev | Continued pull request process discussion (Mar 16-19) |
| [Bug 220061] REGRESSION BISECTED — Multiple BT devices can't pair under Linux 6.14.4 | bugzilla-daemon | Regression report (Mar 21) |
| [Bug 221263] Apple Magic Mouse 2 wrong battery percentage | bugzilla-daemon | New bug + follow-up (Mar 19-20) |
| Intel AX211 permanently lost after suspend/resume | Frederik Berg | Bug report (Mar 20) |
| RTL8852CE BT not detected | Anthony jo | Bug report — missing btrtl support for IMC Networks 13d3:3612 (Mar 19) |
| Re: [PATCH v2] Bluetooth: HIDP: cap report descriptor size | Eric_Terminal | Continued discussion from prior week (Mar 22) |
| Re: [PATCH] Bluetooth: ISO: add timestamp for outgoing HCI ISO | Tailu Shi / Pauli Virtanen | ISO timestamp continued discussion (Mar 18-19) |
| Re: [BUG] ad_replace_name() buffer overflow | 候朋朋 / Bastien Nocera | Follow-up on buffer overflow bug; Luiz posted the fix (Mar 17) |
| Re: [PATCH 1/2] Bluetooth: btmtk: Add MT6639 (MT7927) Bluetooth support | Javier Tia | MT6639/MT7927 follow-up (Mar 19) |
| Re: [PATCH v3 0/2] Fix SSR unable to wake up bug | Shuai Zhang | QCA SSR follow-up (Mar 19) |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Pauli Virtanen | Independent | 46 |
| Luiz Augusto von Dentz | Intel | 31 |
| Bastien Nocera | Red Hat | 13 |
| Shuai Zhang | Qualcomm | 9 |
| Hyunwoo Kim | Independent | 9 |
| Wouter | Independent | 8 |
| Martin BTS | Independent | 8 |
| Raghavendra Rao | Collabora | 6 |
| Manivannan Sadhasivam | Qualcomm | 6 |
| Paul Menzel | Independent | 4 |
| Linus Torvalds | Independent | 3 |
| Thorsten Leemhuis | Independent | 3 |
| Sarveshwar Bajaj | NXP | 3 |
| Jakub Kicinski | Independent | 3 |
| Frederik Berg | Independent | 3 |
| Dmitry Baryshkov | Qualcomm | 3 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- Bluetooth: L2CAP: Fix regressions caused by reusing ident (v4, Luiz, Mar 19)
- Bluetooth: L2CAP: Fix printing wrong information if SDU length exceeds MTU + MGMT: Fix dangling pointer (Luiz, 2 patches, Mar 17)
- Bluetooth: L2CAP: Fix null-ptr-deref on l2cap_sock_ready_cb (Helen Koike, Mar 19)
- bluetooth: btusb: Fix whitespace in btusb.c (Lukas Kraft, Mar 19)
- Bluetooth: hci_sync: annotate data-races around hdev->req_status (Cen Zhang, Mar 18)
- Bluetooth: hci_ll: Fix firmware leak on error path (v2, Anas Iqbal, Mar 18)
- Bluetooth: L2CAP: Validate PDU length before reading SDU length in l2cap_ecred_data_rcv() (Hyunwoo Kim, Mar 16)
- Bluetooth: L2CAP: Fix stack-out-of-bounds read in l2cap_ecred_conn_req (Minseo Park, Mar 16)
- Bluetooth: SCO: Fix use-after-free in sco_recv_frame() (Hyunwoo Kim, Mar 16)

### Applied to netdev/net.git (main)

- [GIT PULL] bluetooth 2026-03-19 (Luiz, Mar 20)

### Pushed to bluez/bluez master (from push listing lines)

- 1436ea..52c2b3: adapter: Fix "Failed to set default system config" startup warning (Bastien Nocera, Mar 19) + shared/shell: Fix SIGSEGV on invalid input (Wouter, Mar 19)
- 5c3408: shared/shell: Fix crash on bluetoothctl command completion (Bastien Nocera / hadess, Mar 19)
- 11d05e: shared/ad: Fix not checking length on ad_replace_name (Luiz, Mar 17)
- 52c2b3: tools/btmgmt: Fix btmgmt --help hanging (Bastien Nocera / hadess, Mar 17)

### Also applied to bluez.git (via patchwork notifications)

- shared/shell: Fix SIGSEGV on invalid input (v2, Wouter, Mar 19)
- adapter: Fix "Failed to set default system config" startup warning (Bastien Nocera, Mar 19)
- shared/ad: Fix not checking length on ad_replace_name (Luiz, Mar 17)
- tools/btmgmt: Fix btmgmt --help hanging (Bastien Nocera, Mar 17)

---

## Company Focus Areas

### Intel
Luiz Augusto von Dentz led with 31 messages: submitted `[GIT PULL] bluetooth 2026-03-19` (applied to netdev/net.git), drove the L2CAP ident regression fix through 4 revisions to resolution amid pressure from Thorsten Leemhuis and Linus Torvalds, posted the L2CAP SDU length print fix + MGMT dangling pointer fix (applied), fixed shared/ad ad_replace_name length checking in BlueZ (applied), reviewed Hyunwoo Kim's security patches, and engaged in GIT PULL process discussions with Jakub Kicinski and Konstantin Ryabitsev.

### Qualcomm
Shuai Zhang posted 9 messages: hci_qca WCN7850 power control (v1 + v2, discussed with Dmitry Baryshkov and Bartosz Golaszewski), hamoa-iot-evk DTS follow-up, firmware re-download follow-up, and SSR wake-up follow-up. Manivannan Sadhasivam posted the v6 M.2 connector series including BT-specific hci_qca M.2 support and WCN7850 serdev patches (6 BT-relevant messages). Dmitry Baryshkov provided 3 review messages on the WCN7850 power control patch.

### Red Hat
Bastien Nocera contributed 13 messages across 3 applied BlueZ fixes: adapter "Failed to set default system config" startup warning fix, shared/shell crash on bluetoothctl command completion fix, and shared/ad ad_replace_name buffer overflow fix discussion/review. Also reviewed Wouter's shared/shell SIGSEGV fix.

### Collabora
Raghavendra Rao resubmitted the public-broadcast profile advertise command for bluetoothctl (6 messages, 2 submissions), reviewed by Luiz.

### NXP
Sarveshwar Bajaj posted a pbap-client fix for system bus obexd (3 messages, reviewed by Luiz).

### Samsung
Tailu Shi continued the ISO timestamp discussion (2 messages) with Pauli Virtanen.

### Igalia
Helen Koike posted an L2CAP null-ptr-deref fix on l2cap_sock_ready_cb (applied to bluetooth-next).

### Realtek
Hilda Wu posted v5 of the btrtl firmware format v3 support patch.

### ARRI
Christian Eggers provided 2 review messages on the L2CAP ident regression fix (v1, v3).

### Axis Communications
Jonathan Rissanen posted a new hci_h4 race-during-initialization fix.

### Star Labs
Sean Rhodes posted a btusb Intel ACPI remote wake fix.

### Independent Contributors
Pauli Virtanen dominated message volume (46 messages) with v2 and v3 of a comprehensive 20-patch functional/integration testing framework for BlueZ — including btvirt improvements (packet length validation, SCO support), test-runner enhancements (virtio-serial, configurable options), a full functional testing framework with Pipewire audio and OBEX file transfer tests, and ISO timestamp discussion. Hyunwoo Kim posted 5 new kernel security fixes (9 messages): L2CAP use-after-free in l2cap_chan_timeout, SCO use-after-free in sco_conn_ready, RFCOMM MTU validation, L2CAP ERTM re-init infinite loop, and L2CAP deadlock in l2cap_conn_del — with v2 follow-ups for three of them. Wouter fixed a shared/shell SIGSEGV on invalid input (v1 + v2, applied). Martin BTS posted v3 of the Nintendo Switch 2 controller support (8 messages, 6 patches). Thorsten Leemhuis raised the regression fix urgency alarm. Linus Torvalds weighed in on the regression fix process (3 messages). Frederik Berg posted a btusb suspend fix and an Intel AX211 suspend bug report. Cen Zhang posted btintel hw_error serialization v2. zhangchen200426 posted L2CAP LE flow credits and HCI USB disconnect fixes. Aby Sam Ross posted a devcoredump work disable fix. Other contributors: Bartosz Golaszewski (2, power sequencing review), Josh Boyer (2, firmware discussion), Paul Menzel (4, reviews), Javier Tia (MT6639 follow-up), Junrui Luo (btintel_pcie review), moonafterrain (btintel_pcie RX validation), Anthony jo (RTL8852CE bug report), Eric_Terminal (HIDP follow-up), Bjorn Andersson (qcs8300 BT DTS merged), 候朋朋 (ad_replace_name follow-up).

---

## Notable Trends

1. **Regression fix drama with Linus Torvalds**: The L2CAP ident regression fix went through 4 revisions (v1-v4) after Thorsten Leemhuis flagged it was "likely to miss -rc5". Linus Torvalds personally commented 3 times, and Jakub Kicinski discussed the pull mechanics. The fix was ultimately applied, and the `[GIT PULL] bluetooth 2026-03-19` was merged into netdev/net.git — a high-visibility event for the bluetooth subsystem.
2. **Hyunwoo Kim security fix blitz**: Five new security patches targeting L2CAP (UAF, deadlock, ERTM infinite loop), SCO (UAF), and RFCOMM (MTU validation) represent a focused security audit effort. Three already have v2 follow-ups, suggesting active review engagement.
3. **Functional testing framework maturing**: Pauli Virtanen's 20-patch series (now at v3) adds a complete functional/integration testing infrastructure including btvirt improvements, virtio-serial device forwarding, Pipewire audio streaming tests, and OBEX file transfer tests — a significant step toward automated end-to-end testing for BlueZ.
4. **BlueZ stability fixes landing quickly**: Three BlueZ userspace fixes from Bastien Nocera and Wouter were applied within the same week they were posted — adapter config warning, shared/shell crash, and shared/shell SIGSEGV.
5. **Continued L2CAP hardening**: Between the applied patches (ident regression, null-ptr-deref, SDU length, ecred bounds) and new submissions (chan_timeout UAF, ERTM infinite loop, deadlock, LE flow credits), L2CAP continues to receive the most security attention of any bluetooth subsystem component.
6. **Cross-subsystem M.2 connector work**: Manivannan Sadhasivam's v6 PCIe M.2 Key E series includes BT-specific patches for hci_qca M.2 support and WCN7850 serdev creation, bridging power sequencing infrastructure with bluetooth device enablement.
