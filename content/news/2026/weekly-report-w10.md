---
title: "Weekly Report: linux-bluetooth Mailing List - March 2-8, 2026 (W10)"
date: 2026-03-08
summary: "Active week with 369 messages in the archive (189 human)."
draft: false
---

## March 2 - March 8, 2026 (Week 10)

**Total messages: 369 (189 human, 180 CI/bot)**

Note: Of the 369 messages in the archive, 189 are human-generated and 180 are CI/bot messages. Messages from Jeff Layton were ignored and are not counted; CI/bot messages (testbots, patchwork notifications, automated push notices) are excluded from the Top Contributors table and from the Key Patch listings below.

---

## Summary

Active week with 369 messages in the archive (189 human). Key focus areas included critical L2CAP and HIDP use-after-free fixes from Luiz (driven partly by syzbot reports and Pauli Virtanen's analysis), the v4 LE connection timeout patch from Dajid Morel (Volvo) with extensive review discussion, and MediaTek MT7927 enablement from Javier Tia. Christian Eggers (ARRI) contributed two large qualification documentation series (15+6 patches, both applied). Martin BTS posted the v2 Nintendo Switch 2 controller support series (6 patches). An RFC to deprecate BT_HIDP was posted. Other notable activity included a BIG sync UAF fix from Kai Zen (3 revisions), an hci_sync fix from Pengutronix, Intel PCIe DMA alignment work from Kiran K, and Qualcomm DTS/volume fixes. Several patches were applied to bluetooth-next and bluez.git during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [RESEND] Bluetooth: L2CAP: Fix use-after-free in l2cap_unregister_user | Luiz Augusto von Dentz | Intel | 1 | syzbot-reported UAF; discussed with Pauli Virtanen (Mar 6-7) |
| [PATCH v1/v2] Bluetooth: L2CAP: Fix accepting multiple L2CAP_ECRED_CONN_REQ | Luiz Augusto von Dentz | Intel | 1 (v1+v2) | L2CAP Enhanced Credit fix; 2 iterations (Mar 6) |
| [PATCH v1] Bluetooth: HIDP: Fix possible UAF | Luiz Augusto von Dentz | Intel | 1 | Applied to bluetooth-next (patchwork notification Mar 6) |
| [RFC] Bluetooth: HIDP: Mark BT_HIDP as DEPRECATED | Luiz Augusto von Dentz | Intel | 1 | RFC proposing HIDP deprecation; discussion with Paul Menzel (Mar 4-5) |
| [PATCH] Bluetooth: MGMT: Fix list corruption and UAF in command complete handlers | (from prior week) | — | 1 | Applied to bluetooth-next (patchwork notification Mar 6) |
| [PATCH v1/v2/v3] Bluetooth: hci_conn: Fix UAF in create_big_sync and create_big_complete | Kai Zen | Independent | 1 (3 revisions) | BIG sync UAF fix; v3 reviewed by Greg KH (Mar 4-5) |
| [PATCH] net: bluetooth: hci_sync: fix hci_le_create_conn_sync | Michael Grzeschik | Pengutronix | 1 | Applied to bluetooth-next (patchwork notification Mar 5) |
| [PATCH v4] Bluetooth: Increase LE connection timeout for industrial sensors | Dajid Morel | Volvo | 1 (v4) | Extensive review discussion with Luiz (7+ messages, Mar 2-6) |
| [PATCH v1] Bluetooth: btintel_pcie: Align shared DMA memory to 128 bytes | Kiran K | Intel | 1 | DMA alignment fix for Intel PCIe (Mar 3) |
| [PATCH 0/2] Bluetooth: Add MediaTek MT7927 (MT6639) support | Javier Tia | Independent | 2 | btmtk driver + btusb device IDs; reviewed by Luiz, Sean Wang (Mar 5-7) |
| [PATCH] Bluetooth: Add Vendor Chip Support | Kaihsin Chung | Independent | 1 (2 submissions) | New vendor chip support (Mar 2) |
| [PATCH V4] arm64: dts: qcom: qcs8300-ride: Enable Bluetooth support | Wei Deng | Qualcomm | 1 | DTS enablement; reviewed by Dmitry Baryshkov, Bartosz Golaszewski (Mar 2) |
| Re: [PATCH v1] Bluetooth: btusb: Allow firmware re-download when version matches | Shuai Zhang | Qualcomm | — | Follow-up discussion (Mar 5) |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [PATCH BlueZ v2 0/6] Nintendo Switch 2 support | Martin BTS | Independent | 6 | v2: optional secondary GATT discovery, device alias API, Gaming appearance class, Switch 2 plugin (Mar 8) |
| [PATCH BlueZ v2 00/15] doc/qualification: Updates for TCRL pkg101 | Christian Eggers | ARRI | 15 | Applied (patchwork notification Mar 2); GAP/SM/GATT/L2CAP qualification updates |
| [PATCH BlueZ 0/6] doc/qualification: follow up patches | Christian Eggers | ARRI | 6 | Applied (patchwork notification Mar 6); additional GAP/GATT/L2CAP PTS descriptions |
| [PATCH BlueZ v1] monitor: Fix -a/--analyze printing wrong connection type | Luiz Augusto von Dentz | Intel | 1 | Applied (patchwork notification Mar 6) |
| [PATCH BlueZ v1] l2test: Attempt to update BT_SNDMTU/omtu when using -D | Luiz Augusto von Dentz | Intel | 1 | l2test MTU update fix (Mar 4) |
| [PATCH BlueZ v1] bthost: Add segmentation support for L2CAP LE-(E)CRED mode | (from prior week) | — | 1 | Applied (patchwork notification Mar 3) |
| [PATCH BlueZ v2 1/2] hciemu: Fix silently dropping packet if writev return -EAGAIN | (from prior week) | — | 2 | Applied (patchwork notification Mar 3) |
| [PATCH BlueZ] audio/avrcp: fix EVENT_VOLUME_CHANGED not supported | Pavel Bozhko | SaluteDevices | 1 | AVRCP volume change event fix (Mar 2) |
| [PATCH v2] transport: Fix set volume failure with invalid device volume | Jinwang Li | Qualcomm | 1 | Volume initialization fix (Mar 5) |
| [PATCH BlueZ 00/11] Functional/integration testing | Pauli Virtanen | Independent | 11 | Discussion continued from prior week; test-runner and virtio-serial work (Mar 2) |
| [PATCH BlueZ v1] client/btpclient: Add GATT support to get Device name | (from prior week) | — | 1 | Applied (patchwork notification Mar 6) |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| syzbot: KASAN slab-use-after-free in l2cap_unregister_user | syzbot / Pauli Virtanen | Multiple exchanges Mar 7; triggered the RESEND fix from Luiz |
| Bugzilla #220344: Intel AX211 randomly disconnects/reconnects | bugzilla-daemon | Ongoing kernel bug report (Mar 8) |
| MT7922 Remote Wakeup support advertised but disabled by default | Matthew Schwartz | User report about btusb wakeup behavior (Mar 6) |
| MT7921U: ACL data misrouted as HCI commands | Don White | Firmware-level issue report (Mar 2) |
| Audio/Video protocol tests | Kirill Samburskiy | Question about A/V protocol testing (Mar 3) |
| Re: Bluetooth: L2CAP: Fix not tracking outstanding TX ident | Thorsten Leemhuis | Linux regression tracker follow-up (Mar 2) |
| Re: [PATCH v5 5/9] dt-bindings: connector: Add PCIe M.2 Mechanical Key E connector | Loic Poulain / Rob Herring | Cross-subsystem connector binding review (Mar 5-6) |
---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 30 |
| Christian Eggers | ARRI | 28 |
| Jan Kara | Independent | 26 |
| Viacheslav Dubeyko | Independent | 7 |
| Pauli Virtanen | Independent | 7 |
| Martin BTS | Independent | 7 |
| Christoph Hellwig | Independent | 7 |
| Paul Moore | Independent | 6 |
| Javier Tia | Independent | 6 |
| Frédéric Danis | Collabora | 5 |
| Dajid Morel | Volvo | 5 |
| Damien Le Moal | Independent | 4 |
| Kai Zen | Independent | 3 |
| Christian Brauner | Independent | 3 |
| Bastien Nocera | Red Hat | 3 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)
- Bluetooth: HIDP: Fix possible UAF (Luiz, Mar 6)
- Bluetooth: MGMT: Fix list corruption and UAF in command complete handlers (Mar 6)
- net: bluetooth: hci_sync: fix hci_le_create_conn_sync (Michael Grzeschik, Mar 5)
- Bluetooth: ISO: Fix defer tests being unstable (Mar 2)
- Bluetooth: btintel: Add support for hybrid signature for ScP2 onwards (v3 1/9 series, Mar 2)

### Pushed to bluez/bluez master (from push listing lines in the archive)
- 1b7e68..dfc43e: doc/qualification: gap-pics: add footnote for TSPC_GAP_21_9 feature + 14 more qualification patches (Christian Eggers, Mar 2 — v2 00/15 series)
- dfc43e: gap-pics: Add footnote for TSPC_GAP_21_9 feature (Christian Eggers, follow-up series, Mar 6)
- d66e23: shared: Fix the Apple Packet Logger format detection (Marcel Holtmann, Mar 2)
- 081dfd: monitor: Fix issue with Packet Logger Notes missing (Marcel Holtmann, Mar 3)
- 744fad: hciemu: Fix silently dropping packet if writev returns -EAGAIN (Mar 3)
- f35561: monitor: Fix -a/--analyze printing wrong connection info (Frédéric Danis, Mar 6)
- 9a6959: transport: Fix set volume failure with invalid device (Mar 5)
- f1c313: l2test: Attempt to update BT_SNDMTU/omtu when using -D (Luiz, Mar 4)

### Also applied to bluez.git (via patchwork notifications)
- bthost: Add segmentation support for L2CAP LE-(E)CRED mode (Mar 3)
- hciemu: Fix silently dropping packet if writev return -EAGAIN (v2, Mar 3)
- monitor: Fix -a/--analyze printing wrong connection type (Mar 6)
- client/btpclient: Add GATT support to get Device name (Mar 6)
- doc/qualification: Updates for TCRL pkg101 (v2 00/15, Mar 2)
- doc/qualification: follow up patches (0/6, Mar 6)

---

## Company Focus Areas

### Intel
Luiz Augusto von Dentz led with 30 messages: critical L2CAP UAF fixes (use-after-free in l2cap_unregister_user, multiple ECRED_CONN_REQ), HIDP UAF fix (applied), RFC to deprecate BT_HIDP, BlueZ monitor and l2test fixes, and review of external patches (Dajid Morel LE timeout, Javier Tia MT7927, Jinwang Li volume). Kiran K posted a DMA alignment fix for btintel_pcie.

### ARRI
Christian Eggers contributed 28 messages across two qualification documentation series: the v2 TCRL pkg101 updates (15 patches, applied) and follow-up patches (6 patches, applied), covering GAP, SM, GATT, and L2CAP PTS test descriptions.

### Qualcomm
Wei Deng posted qcs8300-ride DTS Bluetooth enablement (v4). Jinwang Li contributed a volume initialization fix for the transport layer. Shuai Zhang followed up on btusb firmware re-download.

### Volvo
Dajid Morel continued the LE connection timeout patch series (v4) with extensive back-and-forth review discussion with Luiz (7+ messages across the week).

### Collabora
Frédéric Danis provided review feedback on Christian Eggers' qualification documentation patches (GATT/L2CAP PTS descriptions).

### Independent Contributors
Martin BTS posted the v2 Nintendo Switch 2 controller support (6 patches: optional secondary GATT discovery, device alias API, Gaming appearance class, Switch 2 plugin). Pauli Virtanen participated in syzbot UAF analysis and continued functional testing work. Kai Zen iterated on the BIG sync UAF fix (3 revisions). Javier Tia posted MediaTek MT7927 support (btmtk + btusb). Michael Grzeschik (Pengutronix) contributed an hci_sync fix (applied). Pavel Bozhko (SaluteDevices) fixed AVRCP volume change event handling.

---

## Notable Trends

1. **UAF fix cluster**: Multiple use-after-free vulnerabilities addressed this week — L2CAP unregister, HIDP, MGMT command handlers, and BIG sync — reflecting ongoing focus on memory safety in the Bluetooth subsystem.
2. **Qualification documentation maturity**: ARRI's 21 total qualification patches (both series applied) signal significant progress toward TCRL pkg101 compliance, with Collabora providing review.
3. **New device support**: MediaTek MT7927 (Javier Tia), Nintendo Switch 2 controller (Martin BTS), Qualcomm qcs8300 BT (Wei Deng), and generic vendor chip support (Kaihsin Chung) all posted during the week.
4. **HIDP deprecation RFC**: Luiz posted an RFC to mark BT_HIDP as deprecated, which could have implications for legacy HID-over-Bluetooth devices.
5. **High CI/bot noise**: 180 of 369 messages (49%) were automated CI/push/patchwork notices.
