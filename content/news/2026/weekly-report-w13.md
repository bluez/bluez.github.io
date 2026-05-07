---
title: "Weekly Report: linux-bluetooth Mailing List - March 23-29, 2026 (W13)"
date: 2026-03-29
summary: "A productive week centered on kernel stability fixes and BlueZ documentation. Luiz Augusto von Dentz submitted `[GIT PULL] bluetooth 2026-03-25` (applied to netdev/net."
draft: false
---

## March 23 - March 29, 2026 (Week 13)

**Total messages: 234 (146 human, 70 CI/bot, 18 excluded)**

Note: Of the 234 messages, 146 are human-generated, 70 are CI/bot (bluez.test.bot 44, BluezTestBot 8, patchwork-bot+bluetooth 14, patchwork-bot+netdevbpf 1, kernel test robot 3), and 18 are excluded cross-subsystem treewide entries (7 non-BT M.2 connector patches from Manivannan Sadhasivam's v7 series, 9 dt-bindings M.2 1620 LGA connector discussion entries, 2 Bjorn Andersson non-BT dt-bindings/power-seq entries).

---

## Summary

A productive week centered on kernel stability fixes and BlueZ documentation. Luiz Augusto von Dentz submitted `[GIT PULL] bluetooth 2026-03-25` (applied to netdev/net.git) and led the week with 47 messages — posting v2/v3 of a comprehensive 9-patch btmon documentation series for BlueZ (v3 applied and pushed to master), a bidirectional ASE flow LE Audio doc (applied), and the v1/v2 hci_sync UAF fix with Pauli Virtanen. Pauli Virtanen continued as a major kernel contributor (19 messages) with fixes for hci_sync refcounting, hci_conn UAF, hci_event UAF, hci_conn_request_evt locking, and hci_cmd_sync_queue_once improvements (4-patch v2 series applied). Javier Tia posted v2 and v3 of an 8-patch MT7927 (MT6639) Bluetooth support series with discussion from Sean Wang (MediaTek). Jonathan Rissanen (Axis) posted v2 and v3 of the hci_h4 race fix (v3 applied). Oleh Konko iterated rapidly on the hci_event wake reason storage fix (v3 through v6, with v6 applied). Bastien Nocera landed the mesh-gatt JSON dist fix in BlueZ. Ten kernel patches and 3 BlueZ patches were applied to their respective trees this week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [GIT PULL] bluetooth 2026-03-25 | Luiz Augusto von Dentz | Intel | — | Applied to netdev/net.git (main); patchwork-bot+netdevbpf notification Mar 26 |
| [PATCH v1/v2] Bluetooth: hci_sync: Fix UAF in le_read_features_complete | Luiz Augusto von Dentz | Intel | 1 (2 revisions) | v2 applied to bluetooth-next; discussion with Pauli Virtanen (Mar 25-26) |
| [PATCH v2 1/4] Bluetooth: hci_sync: hci_cmd_sync_queue_once improvements | Pauli Virtanen | Independent | 4 (v1 3-patch, v2 4-patch) | v2 series applied to bluetooth-next; adds -EEXIST return, leak fixes, run_once -EEXIST, destroy callback; discussion with Luiz (Mar 25-26) |
| [PATCH v2/v3 0/2] Bluetooth: fix race during h4 bluetooth initialization | Jonathan Rissanen | Axis Communications | 2 (2 revisions) | v3 series applied to bluetooth-next; hci_ldisc PROTO_INIT clear + hci_h4 race fix; reviewed by Luiz (Mar 24-27) |
| [PATCH v3/v4/v5/v6] Bluetooth: hci_event: move wake reason storage | Oleh Konko | Independent | 1 (4 revisions this week) | v6 applied to bluetooth-next; rapid iteration after gregkh and Luiz reviews (Mar 26) |
| [PATCH v2] Bluetooth: SCO: fix race conditions in sco_sock_connect() | Cen Zhang | Independent | 1 (v1 + v2) | v2 applied to bluetooth-next; reviewed by Luiz (Mar 26) |
| [PATCH v3] Bluetooth: hci_qca: disable power control for WCN7850 | Shuai Zhang | Qualcomm | 1 | Applied to bluetooth-next; discussion with Bartosz Golaszewski, Luiz (Mar 24-26) |
| [PATCH v2] Bluetooth: btusb: clamp SCO altsetting table indices | Pengpeng Hou | ISCAS | 1 (v1 + v2) | v2 applied to bluetooth-next; reviewed by Luiz (Mar 24-26) |
| [PATCH v3 0/8] Bluetooth: Add MediaTek MT7927 (MT6639) support | Javier Tia | Independent | 8 (v2 + v3) | btmtk MT6639 support, ISO interface fix, 6 device IDs; discussion with Sean Wang (MediaTek), Luiz (Mar 25-27) |
| [PATCH v4] Bluetooth: hci_qca: Convert timeout from jiffies to ms | Shuai Zhang | Qualcomm | 1 | v4; reviewed by Luiz (Mar 27) |
| [PATCH v4] Bluetooth: qca: Fix delayed hw_error handling during SSR | Shuai Zhang | Qualcomm | 1 | v4; reviewed by Luiz (Mar 27) |
| [PATCH v3] Bluetooth: hci_conn: fix potential UAF in set_cig_params_sync | Pauli Virtanen | Independent | 1 | New v3 (Mar 29) |
| [PATCH v3] Bluetooth: hci_event: fix potential UAF in hci_le_remote_conn_param_req_evt | Pauli Virtanen | Independent | 1 | New v3 (Mar 29) |
| [PATCH] Bluetooth: hci_sync: fix refcounting in le_read_features_complete | Pauli Virtanen | Independent | 1 | New (Mar 29); separate approach from Luiz's v2 |
| [PATCH] Bluetooth: fix locking in hci_conn_request_evt() with HCI_PROTO_DEFER | Pauli Virtanen | Independent | 1 | New (Mar 29) |
| [PATCH] Bluetooth: btintel_pcie: fix TX queue off-by-one | Pengpeng Hou | ISCAS | 1 | Reviewed by Kiran K (Intel), Luiz (Mar 24-27) |
| [PATCH] Bluetooth: btintel_pcie: validate completion ring indices | Pengpeng Hou | ISCAS | 1 | Reviewed by Kiran K (Intel), Luiz (Mar 24-27) |
| [PATCH] Bluetooth: btintel_pcie: validate RX buffer tags | Pengpeng Hou | ISCAS | 1 | Reviewed by Kiran K (Intel) (Mar 23-27) |
| [PATCH] Bluetooth: btintel_pcie: fix off-by-one in RX queue bounds check | Junrui Luo | Independent | 1 | Reviewed by Luiz (Mar 24) |
| [PATCH] drivers: bluetooth: btti_main.c: replace quirks with new quirk_flags bitmap | Alexander Feilke | TQ-Group | 1 | New (Mar 27) |
| [PATCH] Bluetooth: btusb: add Realtek RTL8852CE device ID 0x0852 | Christos Longros | Independent | 1 | New (Mar 29) |
| [PATCH] Bluetooth: ISO: validate ISO_END fragments | Kangzheng Gu | Independent | 1 | New (Mar 28) |
| [PATCH] Bluetooth: ISO: fix NULL deref in iso_recv() ISO_END handling | Nathan Rebello | Independent | 1 | New (Mar 28) |
| [PATCH] Bluetooth: MGMT: require exact mesh send payload length | Keenan Dong | Independent | 1 | New (Mar 28) |
| [PATCH] Bluetooth: MGMT: validate LTK enc_size on load | Keenan Dong | Independent | 1 | New (Mar 28) |
| [PATCH 6.1.y] Bluetooth: eir: Fix possible crashes on eir_create_adv_data | Robert Garcia | Independent | 1 | Backport to 6.1.y (Mar 24) |
| [RFC PATCH 0/1] Bluetooth: btmtk: add USB autopm support | Alberto Garcia | Igalia | 1 | RFC (Mar 24) |
| [PATCH v7 6/8] Bluetooth: hci_qca: Add M.2 Bluetooth device support using pwrseq | Manivannan Sadhasivam | Qualcomm | 1 | BT-relevant part of cross-subsystem M.2 series (Mar 26) |
| [PATCH v7 8/8] power: sequencing: pcie-m2: Create serdev device for WCN7850 bluetooth | Manivannan Sadhasivam | Qualcomm | 1 | BT-relevant part of cross-subsystem M.2 series (Mar 26) |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [PATCH BlueZ v2/v3 1-9/9] doc/btmon: Split and expand btmon documentation | Luiz Augusto von Dentz | Intel | 9 (2 iterations) | v3 applied to bluez.git master; splits btmon docs into advertising, LE audio, L2CAP, SMP, GATT, connections, HCI init, A2DP/AVDTP, and HFP flow docs; reviewed by Frédéric Danis (Mar 24-25) |
| [PATCH BlueZ v1] doc: Document bidirectional (Source+Sink) ASE flow in LE Audio | Luiz Augusto von Dentz | Intel | 1 | Applied to bluez.git master; pushed Mar 27 |
| [RESEND PATCH BlueZ] mesh-gatt: Fix JSON files missing from dist | Bastien Nocera | Red Hat | 1 | Applied to bluez.git master; pushed Mar 26 |
| [PATCH BlueZ] iso-tester: fix missing clear of io_id in callbacks | Pauli Virtanen | Independent | 1 | CI push (Mar 29) |
| [PATCH] obexd/bip: Fix uninitialized memory and malformed XML in GetImage request | maxing | Independent | 1 | CI push by maxinglo (Mar 23) |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| Re: [PATCH v3] Bluetooth: L2CAP: Fix invalid response to L2CAP_ECRED_RECONF_REQ | Ben Hutchings / Luiz | L2CAP ecred reconfig follow-up (Mar 25) |
| Re: [PATCH v2] Bluetooth: L2CAP: Fix use-after-free in l2cap_chan_timeout | Hyunwoo Kim / Luiz | L2CAP chan_timeout follow-up from W12 (Mar 23) |
| Re: [PATCH v1] Bluetooth: hci_release_dev: disable delayed devcoredump work | Aby Sam Ross / Luiz | Devcoredump follow-up (Mar 24-28) |
| Re: test-runner virtio-serial | Pauli Virtanen / Luiz | Testing infrastructure discussion (Mar 24) |
| Re: ISO TX timestamps | Pauli Virtanen | ISO timestamp continued discussion (Mar 24) |
| Re: [PATCH BlueZ v2 9/9] doc/btmon: Add HFP protocol flow documentation | Frédéric Danis | HFP btmon doc review (Mar 26) |
| Re: [EXT] Re: pbap-client / obexd/bip | Bastien Nocera / Sarveshwar Bajaj | BlueZ OBEX reviews (Mar 23-24) |
| Re: [PATCH v3 7/8] arm64: dts: qcom: sdm845-db845c: describe WiFi/BT properly | Konrad Dybcio / Dmitry Baryshkov / David Heidelberg | Qualcomm DTS WiFi/BT discussion (Mar 26) |
| Re: [PATCH v7 0/8] M.2 Key E connectors | Bartosz Golaszewski | Cross-subsystem M.2 connector review (Mar 26) |
| Re: [PATCH v3] hci_qca: disable power control | Shuai Zhang / Bartosz Golaszewski | hci_qca WCN7850 follow-up (Mar 24-25) |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 47 |
| Javier Tia | Independent | 21 |
| Pauli Virtanen | Independent | 19 |
| Jonathan Rissanen | Axis Communications | 7 |
| Bastien Nocera | Red Hat | 5 |
| Pengpeng Hou | ISCAS | 5 |
| Shuai Zhang | Qualcomm | 4 |
| Oleh Konko | Independent | 4 |
| Kiran K | Intel | 3 |
| Cen Zhang | Independent | 3 |
| Bartosz Golaszewski | Independent | 3 |
| Sean Wang | MediaTek | 2 |
| Alberto Garcia | Igalia | 2 |
| Keenan Dong | Independent | 2 |
| Manivannan Sadhasivam | Qualcomm | 2 |
| maxing | Independent | 2 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- Bluetooth: hci_sync: Fix UAF in le_read_features_complete (v2, Luiz / Pauli, Mar 27)
- Bluetooth: hci_h4: Fix race during initialization (Jonathan Rissanen, Mar 27)
- Bluetooth: fix race during h4 bluetooth initialization (v3 series, Jonathan Rissanen, Mar 27)
- Bluetooth: hci_event: move wake reason storage into validated event handlers (v6, Oleh Konko, Mar 26)
- Bluetooth: SCO: fix race conditions in sco_sock_connect() (v2, Cen Zhang, Mar 26)
- Bluetooth: hci_sync: hci_cmd_sync_queue_once improvements (v2, 4-patch series, Pauli Virtanen, Mar 26)
- Bluetooth: hci_qca: disable power control for WCN7850 (v3, Shuai Zhang, Mar 26)
- Bluetooth: btusb: clamp SCO altsetting table indices (v2, Pengpeng Hou, Mar 26)
- Bluetooth: L2CAP: Fix deadlock in l2cap_conn_del() (v2, Hyunwoo Kim, Mar 23)
- Bluetooth: L2CAP: Fix ERTM re-init and zero pdu_len infinite loop (v2, Hyunwoo Kim, Mar 23)
- Bluetooth: btintel: serialize btintel_hw_error() with hci_req_sync_lock (v2, Cen Zhang, Mar 23)

### Applied to netdev/net.git (main)

- [GIT PULL] bluetooth 2026-03-25 (Luiz, Mar 26)

### Pushed to bluez/bluez master

- 1436ea..097196: doc/btmon v3 (9 patches, Split Advertising/Scanning, LE Audio, L2CAP, SMP, GATT, Connections, HCI init, A2DP/AVDTP, HFP docs — Luiz, Mar 25)
- 097196..0d4bb4: mesh-gatt: Fix JSON files missing from dist (Bastien Nocera, Mar 26)
- 0d4bb4..8ea1d0: doc: Document bidirectional (Source+Sink) ASE flow in LE Audio (Luiz, Mar 27)

### Also applied to bluez.git (via patchwork notifications)

- doc/btmon: Split Advertising and Scanning into btmon-advertising.rst (v3 series, Luiz, Mar 25)
- doc: Document bidirectional (Source+Sink) ASE flow in LE Audio (Luiz, Mar 27)
- mesh-gatt: Fix JSON files missing from dist (Bastien Nocera, Mar 26)

---

## Company Focus Areas

### Intel
Luiz Augusto von Dentz led the week with 47 messages: submitted `[GIT PULL] bluetooth 2026-03-25` (applied to netdev/net.git), posted v1/v2 of the hci_sync UAF fix (applied, with Pauli Virtanen providing the analysis), posted v2 and v3 of the comprehensive 9-patch btmon documentation series (v3 applied — covering advertising, LE audio, L2CAP, SMP, GATT, connections, HCI init, A2DP, and HFP), added LE Audio bidirectional ASE documentation (applied), and provided extensive reviews across hci_qca, btusb, btintel_pcie, hci_h4, SCO, L2CAP, and MT7927 patches. Kiran K reviewed 3 btintel_pcie patches from Pengpeng Hou.

### Qualcomm
Shuai Zhang posted 4 messages: hci_qca WCN7850 power control v3 (applied), hci_qca jiffies-to-ms conversion v4, and QCA hw_error SSR fix v4 — reviewed by Luiz and Bartosz Golaszewski. Manivannan Sadhasivam posted the v7 M.2 connector series (2 BT-relevant patches: hci_qca M.2 support and WCN7850 serdev creation). Konrad Dybcio contributed to the sdm845 WiFi/BT DTS discussion. Dmitry Baryshkov reviewed the sdm845 DTS changes.

### Red Hat
Bastien Nocera contributed 5 messages: landed the mesh-gatt JSON dist fix in BlueZ (RESEND, applied and pushed to master), reviewed pbap-client and obexd/bip patches from Sarveshwar Bajaj and maxing.

### Collabora
Frédéric Danis reviewed the btmon HFP documentation (1 message).

### Axis Communications
Jonathan Rissanen posted v2 and v3 of the hci_h4 race-during-initialization fix (7 messages, 2-patch series, v3 applied to bluetooth-next), with review discussion from Luiz.

### ISCAS
Pengpeng Hou posted 5 messages across 4 patches: btintel_pcie TX queue off-by-one fix, completion ring indices validation, RX buffer tags validation, and btusb SCO altsetting clamp v1/v2 (v2 applied). All reviewed by Kiran K (Intel) and Luiz.

### MediaTek
Sean Wang reviewed Javier Tia's MT6639/MT7927 Bluetooth support patches (2 messages).

### Igalia
Alberto Garcia posted an RFC for btmtk USB autopm support (2 messages).

### NXP
Sarveshwar Bajaj continued the pbap-client discussion (1 message).

### TQ-Group
Alexander Feilke posted a btti_main quirk_flags bitmap replacement patch (1 message).

### Independent Contributors
Javier Tia posted v2 and v3 of the 8-patch MT7927 (MT6639) Bluetooth support series (21 messages): btmtk MT6639 core support, ISO interface fix for single alt setting, and 6 device ID additions for ASUS, Lenovo, Gigabyte, MSI, and TP-Link boards. Pauli Virtanen contributed 19 messages: hci_sync refcounting fix, hci_conn UAF fix (v3), hci_event UAF fix (v3), hci_conn_request_evt locking fix, hci_cmd_sync_queue_once 4-patch improvement series (applied), iso-tester io_id fix for BlueZ, ISO TX timestamp discussion, and test-runner virtio-serial discussion. Oleh Konko iterated rapidly on the hci_event wake reason storage fix (4 revisions v3-v6 in one day, v6 applied). Cen Zhang posted the SCO race condition fix (v1 + v2, applied) and discussion. Bartosz Golaszewski reviewed hci_qca and M.2 connector patches (3 messages). Other contributors: Keenan Dong (2, MGMT mesh payload + LTK enc_size validation), maxing (2, obexd/bip memory fix), Christos Longros (1, RTL8852CE device ID), Kangzheng Gu (1, ISO_END fragment validation), Nathan Rebello (1, ISO NULL deref fix), Aby Sam Ross (1, devcoredump follow-up), Hyunwoo Kim (1, L2CAP chan_timeout follow-up), Robert Garcia (1, eir backport to 6.1.y), Junrui Luo (1, btintel_pcie RX bounds check), Ben Hutchings (1, L2CAP ecred reconfig review), gregkh (1, wake reason review), David Heidelberg (1, sdm845 DTS discussion).

---

## Notable Trends

1. **Prolific btmon documentation push**: Luiz posted v2 and v3 of a 9-patch series that comprehensively splits and expands btmon documentation into dedicated files for advertising, LE audio, L2CAP, SMP, GATT, connections, HCI initialization, A2DP/AVDTP, and HFP protocol flows. The v3 was applied and pushed to master within one day — a significant documentation investment for the BlueZ analysis tooling.
2. **Kernel stability fix wave**: Ten patches were applied to bluetooth-next this week, addressing UAFs (hci_sync, L2CAP), race conditions (hci_h4, SCO), deadlocks (L2CAP), infinite loops (L2CAP ERTM), and bounds checking (btusb SCO altsetting). This continues the L2CAP/SCO hardening trend from W12.
3. **Pauli Virtanen's hci_sync deep dive**: Pauli posted 6 kernel fixes this week targeting hci_sync refcounting, hci_conn UAFs, hci_event UAFs, and locking issues — demonstrating deep analysis of the HCI synchronization layer. The 4-patch hci_cmd_sync_queue_once series (applied) improves error handling and leak prevention in the command queue infrastructure.
4. **MT7927 (MT6639) gaining momentum**: Javier Tia's MT7927 series is now at v3 with active engagement from Sean Wang (MediaTek) and Luiz's review, adding support for a widely-deployed MediaTek WiFi/BT combo chip across ASUS, Lenovo, Gigabyte, MSI, and TP-Link boards.
5. **Cross-subsystem M.2 connector work continues**: Manivannan Sadhasivam's v7 PCIe M.2 Key E series (now with Bartosz Golaszewski's review) includes BT-specific hci_qca M.2 support and WCN7850 serdev creation, continuing the bridge between power sequencing infrastructure and bluetooth device enablement.
6. **Second GIT PULL in March**: Luiz submitted `[GIT PULL] bluetooth 2026-03-25`, the second bluetooth pull request this month (after 2026-03-19 in W12), applied to netdev/net.git — reflecting the high volume of fixes landing in bluetooth-next.
