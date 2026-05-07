---
title: "Weekly Report: linux-bluetooth Mailing List - March 30 - April 5, 2026 (W14)"
date: 2026-04-05
summary: "A landmark week for both kernel and BlueZ: the MT7927 (MT6639) Bluetooth support series landed in bluetooth-next, the SMP MITM pairing security fix reached v5 and was applied, and Luiz Augusto von Dentz submitted `[GIT PULL] bluetooth 2026-04-01` (applied to netdev/net.git)."
draft: false
---

## March 30 - April 5, 2026 (Week 14)

**Total messages: 298 (191 human, 106 CI/bot, 1 excluded)**

Note: Of the 298 messages, 191 are human-generated, 106 are CI/bot (bluez.test.bot 47, BluezTestBot 27, patchwork-bot+bluetooth 18, kernel test robot 7, bugzilla-daemon 5, patchwork-bot+netdevbpf 1, syzbot 1), and 1 is an excluded cross-subsystem entry (Stephan Gerhold dt-bindings M.2 1620 LGA connector discussion).

---

## Summary

A landmark week for both kernel and BlueZ: the MT7927 (MT6639) Bluetooth support series landed in bluetooth-next, the SMP MITM pairing security fix reached v5 and was applied, and Luiz Augusto von Dentz submitted `[GIT PULL] bluetooth 2026-04-01` (applied to netdev/net.git). Luiz led the week with 31 messages — posting the GIT PULL, the v5 SMP MITM 3-patch series (applied), Channel Sounding documentation (RFC + v1, applied to bluez.git master), btmon-mgmt.rst documentation (applied), GATT.Security option and shared/gatt-server permissions patches, and extensive reviews. Pauli Virtanen was the second-most prolific contributor (24 messages) with the v4 functional/integration testing 20-patch series for BlueZ, kernel fixes for hci_conn_request_evt locking and hci_conn/hci_event UAFs (applied), shared/mcp crash and argument parsing fixes, and various tester tool fixes. Bastien Nocera contributed 23 messages focused on removing glib dependencies from BlueZ — posting the shared/queue iterator, single-link list, and MIN/MAX macro series (MIN/MAX applied). Johan Hovold posted v1 through v3 of the 5-patch btusb wakeup irq devres lifetime fix series and the btusb/btmtk endpoint refactoring (2 patches, applied). Javier Tia posted v4 and v5 of the 8-patch MT7927 series (v4 applied to bluetooth-next). Twelve kernel patches and 5 BlueZ patches were applied to their respective trees this week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [GIT PULL] bluetooth 2026-04-01 | Luiz Augusto von Dentz | Intel | — | Applied to netdev/net.git (main); patchwork-bot+netdevbpf notification Apr 2 |
| [PATCH v4/v5 0/8] Bluetooth: Add MediaTek MT7927 (MT6639) support | Javier Tia | Independent | 8 (2 revisions) | v4 applied to bluetooth-next (Mar 31); btmtk MT6639 core, ISO interface fix, 6 device IDs (ASUS, Lenovo, Gigabyte, MSI, TP-Link); discussion with Paul Menzel (v5 sent immediately after v4, Mar 31) |
| [PATCH v4/v5 1/3] Bluetooth: SMP: force responder MITM requirements | Oleh Konko (v4) / Luiz Augusto von Dentz (v5) | Independent / Intel | 2-3 (2 revisions) | v4 (2 patches, Oleh Konko) and v5 (3 patches, Luiz, adds L2CAP security fix) both applied to bluetooth-next; SMP legacy pairing MITM enforcement + STK authentication from MITM state (Mar 30–Apr 1) |
| [PATCH v1/v2/v3 0/5] Bluetooth: btusb: fix wakeup irq devres lifetime | Johan Hovold | Hovold Consulting | 5 (3 revisions) | v3 series (5 patches): use-after-free on registration failure, marvell probe UAF, wakeup source leak, devres lifetime, probe error cleanup; reviewed by Paul Menzel (Apr 2) |
| [PATCH 0/2] Bluetooth: refactor endpoint lookup | Johan Hovold | Hovold Consulting | 2 | Applied to bluetooth-next; btusb + btmtk endpoint lookup refactoring using common USB helper (Mar 30) |
| [PATCH] Bluetooth: fix locking in hci_conn_request_evt() with HCI_PROTO_DEFER | Pauli Virtanen | Independent | 1 | Applied to bluetooth-next (Mar 31) |
| [PATCH v3] Bluetooth: hci_conn: fix potential UAF in set_cig_params_sync | Pauli Virtanen | Independent | 1 | Applied to bluetooth-next (Mar 31) |
| [PATCH v3] Bluetooth: hci_event: fix potential UAF in hci_le_remote_conn_param_req_evt | Pauli Virtanen | Independent | 1 | Applied to bluetooth-next (Mar 31) |
| [PATCH] Bluetooth: hci_sync: fix stack buffer overflow in hci_le_big_create_sync | Oleh Konko | Independent | 1 | Applied to bluetooth-next (Mar 31) |
| [PATCH] Bluetooth: btmtk: hide unused btmtk_mt6639_devs[] array | Arnd Bergmann | Independent | 1 | Applied to bluetooth-next; fixes build warning from MT7927 landing (Apr 2) |
| [PATCH v2] Bluetooth: btusb: MediaTek MT7922: Add VID 0489 & PID e11d | Kamiyama Chiaki | Independent | 1 | Applied to bluetooth-next (Apr 2) |
| [PATCH v2] Bluetooth: MGMT: validate mesh send advertising | Keenan Dong | Independent | 1 | Applied to bluetooth-next; v1→v2 (Apr 1) |
| [PATCH] Bluetooth: MGMT: validate LTK enc_size on load | Keenan Dong | Independent | 1 | Applied to bluetooth-next (Mar 30) |
| [PATCH v2/v3 1/1] Bluetooth: serialize accept_q access | Ren Wei | Independent | 1 (2 revisions) | v2 and v3; reviewed by Luiz (Apr 4) |
| [PATCH v1/v2] Bluetooth: l2cap: Add missing chan lock in l2cap_ecred_reconf_rsp | Dudu Lu | Independent | 1 (2 revisions) | v1 (Apr 3) and resubmit (Apr 5); L2CAP ecred reconfig locking fix |
| [PATCH] Bluetooth: BNEP: validate control header bytes before reading them | Pengpeng Hou | ISCAS | 1 | New (Apr 4) |
| [PATCH v2] Bluetooth: hci_event: fix OOB read and infinite loop in hci_le_create_big_complete_evt | Binbin Huang | Independent | 1 (2 revisions) | v1 + v2 (Mar 31) |
| [PATCH] Bluetooth: btintel_pcie: use strscpy to copy plain strings | Thorsten Blum | Independent | 1 | New (Apr 1) |
| [PATCH] Bluetooth: Remove unneeded crypto kconfig selections | Eric Biggers | Independent | 1 | New (Apr 4); removes unnecessary crypto Kconfig dependencies |
| [PATCH v2] Bluetooth: btintel_pcie: validate RX packet length against buffer size | Chandrashekar Devegowda | Intel | 1 | v2 (Apr 2) |
| [PATCH 1/3] Bluetooth: hci_conn: fix UAF in create_big_sync and create_big_complete | Aaron Esau | Independent | 3 | New (Mar 30); hci_conn UAF fixes in BIG sync and enhanced setup sync |
| [PATCH v2 1/1] Bluetooth: hci_ll: Enable BROKEN_ENHANCED_SETUP_SYNC_CONN for WL183x | Stefano Radaelli | Variscite | 1 (v2) | v2 (Mar 30), continued discussion with Luiz (Apr 3) |
| [PATCH v2] Bluetooth: hci_sync: fix refcounting in le_read_features_complete | Pauli Virtanen | Independent | 1 | v2 (Mar 30); refcounting approach alternative |
| [PATCH v4] Bluetooth: qca: Fix delayed hw_error handling during SSR | Shuai Zhang | Qualcomm | 1 | v4 (Mar 30) |
| [PATCH v4] Bluetooth: hci_qca: Convert timeout from jiffies to ms | Shuai Zhang | Qualcomm | 1 | v4 (Mar 30) |
| [PATCH AUTOSEL 6.19-6.12] Bluetooth: hci_sync: annotate data-races around hdev->req_status | Sasha Levin | Microsoft | 1 | Automated stable backport (Mar 30) |
| [PATCH v3 1/8] Bluetooth: btmtk: Add MT6639 (MT7927) Bluetooth support | Javier Tia | Independent | 8 | v3 notification (Mar 31); superseded by v4 |
| [PATCH v2] Bluetooth: ISO: fix NULL deref in iso_recv() ISO_END handling | Nathan Rebello | Independent | 1 (3 revisions) | v1→v3 (Mar 30); ISO_END NULL dereference fix |
| [PATCH] Bluetooth: ISO: validate ISO_END fragments | Kangzheng Gu | Independent | 1 | New (Mar 31); continued from W13 |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [PATCH BlueZ v4 00/20] Functional/integration testing | Pauli Virtanen | Independent | 20 (v3 + v4) | v3 (Mar 30) and v4 (Apr 5); comprehensive functional testing framework: btvirt improvements, test-runner virtio-serial, Pipewire audio tests, OBEX tests, functional test framework + docs; discussion with Bastien Nocera on shared/shell recovery and integration testing approach |
| [PATCH BlueZ v1 1/2] shared/gatt-server: Add bt_gatt_server_set_permissions | Luiz Augusto von Dentz | Intel | 2 | GATT server permissions API + GATT.Security main.conf option (Apr 1) |
| [RFC BlueZ v1/PATCH BlueZ 1/3] doc/btmon: Add Channel Sounding protocol flow documentation | Luiz Augusto von Dentz | Intel | 3 | RFC (Apr 1) → v1 (Apr 2); Channel Sounding, RAS/RAP, CS+RAS state machines; applied to bluez.git master (Apr 3) |
| [PATCH BlueZ v1] doc: add btmon-mgmt.rst | Luiz Augusto von Dentz | Intel | 1 | Applied to bluez.git master (Apr 2); MGMT protocol flow documentation |
| [PATCH BlueZ v3 0/6] BLE-HID/Nintendo Switch 2 support | Martin BTS | Independent | 6 | v3: GATT skip_secondary, secondary service timeout, btd_device_set_alias, Gaming appearance, gatt-uhid bridge, Switch 2 controller plugin (Apr 3) |
| [PATCH BlueZ 1/4] shared/queue: Add way to iterate over queue contents | Bastien Nocera | Red Hat | 4 | Queue iterator + glib removal from shared/ad.c + warning fix + unneeded glib includes removal (Apr 3); supersedes single-link list approach |
| [PATCH BlueZ 1/3] shared: Add single-link list implementation | Bastien Nocera | Red Hat | 3 | Single-link list + glib removal from shared/ad.c + glib include cleanup (Apr 2); replaced by queue iterator approach |
| [PATCH BlueZ v2 0/2] shared/util: Add MIN/MAX implementations | Bastien Nocera | Red Hat | 2 (v1 + v2) | v2 applied to bluez.git master (Mar 31); MIN/MAX macros + emulator glib dep removal |
| [PATCH BlueZ 1/2] unit: Add unit test for new MIN/MAX macros | Bastien Nocera | Red Hat | 2 | Unit test + redundant MIN/MAX removal across codebase (Apr 1); applied to master |
| [PATCH BlueZ v2 0/1] Fix unsolicited AVRCP RegisterNotification response | Kirill Samburskiy | OMP | 1 (v1 + v2) | v1 (Apr 1) and v2 (Apr 3): Track TG and CT events separately; v2 applied to bluez.git master (Apr 3) |
| [PATCH BlueZ v1 0/3] Bluetooth: Add initial Channel Sounding | Naga Bhavani Akella | Qualcomm | 3 | v1: HCI raw interface (RAP), CS config parsing, HCI LE event handling in Reflector role (Apr 2) |
| [PATCH BlueZ v1] src/device: Fix stored gatt cache DB Hash value not update | Mengshi Wu | Independent | 1 | Applied to bluez.git (Apr 1) |
| [PATCH BlueZ] sixaxis: DS4: use 0x12 cmd to get device bdaddr | Marek Czerski | Independent | 1 | New (Apr 4); DualShock 4 bdaddr retrieval fix |
| [PATCH BlueZ] device: warn on BR/EDR connection key mismatch | Harsh Sahuxlr | Independent | 1 | New (Apr 4) |
| [PATCH BlueZ] src/log.h: Add line number information to log output | Zhang Chen | Independent | 1 | New (Apr 3) |
| [PATCH BlueZ,v1,1/1] avdtp: ignore Discover cmd when host sends before | Zhang Chen | Independent | 1 | New (Apr 3); AVDTP Discover command ordering fix |
| [PATCH BlueZ] client/btpclient: Add GATT read and write value supports | Frédéric Danis | Collabora | 1 | Applied to CI; btpclient GATT operation support (Apr 3) |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| Oops with 6.19.10: hci_sock_get_channel GPF | Gabor Gombas / Paul Menzel | Kernel Oops in hci_sock_get_channel with 6.19.10 (Mar 31); general protection fault, non-canonical address |
| [Bug 221309] rtl8822cu: BLE disconnects with firmware regression | bugzilla-daemon / Paul Menzel | Realtek RTL8822CU BLE disconnect regression with firmware 0x0673_0EDC (Apr 2) |
| [syzbot] Monthly bluetooth report (Apr 2026) | syzbot | Monthly automated fuzz report (Apr 1) |
| Delivery problems with Google Mail | Ren Wei | Gmail delivery issues to mailing list (Mar 31) |
| Integration testing for BlueZ | Bastien Nocera / Pauli Virtanen | Discussion on shared/shell recovery and functional testing integration direction (Mar 30–Apr 5) |
| Re: [PATCH v2 0/1] Bluetooth: hci_ll: Enable BROKEN_ENHANCED_SETUP_SYNC_CONN for WL183x | Stefano Radaelli / Luiz | Continued discussion on WL183x SCO quirk (Mar 30–Apr 3) |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 31 |
| Pauli Virtanen | Independent | 24 |
| Bastien Nocera | Red Hat | 23 |
| Javier Tia | Independent | 19 |
| Johan Hovold | Hovold Consulting | 16 |
| Paul Menzel | Max Planck Institute (MPG) | 9 |
| Martin BTS | Independent | 7 |
| Oleh Konko | Independent | 6 |
| Stefano Radaelli | Variscite | 5 |
| Naga Bhavani Akella | Qualcomm | 5 |
| Kirill Samburskiy | OMP | 5 |
| Nathan Rebello | Independent | 4 |
| Binbin Huang | Independent | 4 |
| Shuai Zhang | Qualcomm | 3 |
| Rob Herring | Kernel.org | 3 |
| Zhang Chen | Independent | 3 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- Bluetooth: refactor endpoint lookup (Johan Hovold, 2-patch series, Mar 30)
- Bluetooth: MGMT: validate LTK enc_size on load (Keenan Dong, Mar 30)
- Bluetooth: fix locking in hci_conn_request_evt() with HCI_PROTO_DEFER (Pauli Virtanen, Mar 31)
- Bluetooth: hci_conn: fix potential UAF in set_cig_params_sync (v3, Pauli Virtanen, Mar 31)
- Bluetooth: hci_event: fix potential UAF in hci_le_remote_conn_param_req_evt (v3, Pauli Virtanen, Mar 31)
- Bluetooth: hci_sync: fix stack buffer overflow in hci_le_big_create_sync (Oleh Konko, Mar 31)
- Bluetooth: Add MediaTek MT7927 (MT6639) support (v4, Javier Tia, 8-patch series, Mar 31)
- Bluetooth: SMP: honor local MITM requirements for legacy pairing (v4/v5, Oleh Konko + Luiz, Apr 1)
- Bluetooth: btusb: Add VID 0489 & PID e11d for MediaTek MT7922 (Kamiyama Chiaki, v2, Apr 2)
- Bluetooth: btmtk: hide unused btmtk_mt6639_devs[] array (Arnd Bergmann, Apr 2)
- Bluetooth: MGMT: validate mesh send advertising (Keenan Dong, v2, Apr 1)
- Bluetooth: btusb: Add VID 0489 & PID e11d for MediaTek MT7922 (original, Apr 2)

### Applied to netdev/net.git (main)

- [GIT PULL] bluetooth 2026-04-01 (Luiz, Apr 2)

### Pushed to bluez/bluez master

- 8ea1d0..f99562: iso-tester: fix missing clear of io_id in callbacks (Pauli Virtanen, Mar 31)
- f99562..0fd01e: shared/util: Add MIN/MAX implementations + emulator glib dep removal + unit tests + redundant MIN/MAX removal (Bastien Nocera, Apr 1)
- 0fd01e..1ce7cf: doc: add btmon-mgmt.rst (Luiz, Apr 2)
- 1ce7cf..000dc0: audio/avrcp: Track TG and CT events separately (Kirill Samburskiy, Apr 3)
- 000dc0..00dfd3: doc/btmon: Add Channel Sounding protocol flow documentation + RAS/RAP + state machines (Luiz, Apr 3)

### Also applied to bluez.git (via patchwork notifications)

- iso-tester: fix missing clear of io_id in callbacks (Pauli Virtanen, Mar 31)
- shared/util: Add MIN/MAX implementations (v2, Bastien Nocera, Apr 1)
- doc: add btmon-mgmt.rst (Luiz, Apr 2)
- doc/btmon: Add Channel Sounding protocol flow documentation (RFC, Luiz, Apr 3)
- src/device: Fix stored gatt cache DB Hash value not update (Mengshi Wu, Apr 1)

---

## Company Focus Areas

### Intel
Luiz Augusto von Dentz led the week with 31 messages: submitted `[GIT PULL] bluetooth 2026-04-01` (applied to netdev/net.git on Apr 2), posted the v5 SMP MITM 3-patch series (applied — adding L2CAP security change prevention to the existing v4 pairing fix), created Channel Sounding documentation (RFC + 3-patch v1, applied to bluez.git master), added btmon-mgmt.rst MGMT protocol flow documentation (applied), posted shared/gatt-server permissions API and GATT.Security main.conf option, and reviewed patches across MT7927, btusb wakeup irq, accept_q serialization, hci_ll WL183x, SMP MITM, btintel_pcie, and BNEP. Chandrashekar Devegowda posted btintel_pcie RX packet length validation (v2, 1 message).

### Qualcomm
Naga Bhavani Akella posted the v1 Channel Sounding BlueZ implementation (3 patches, 5 messages): HCI raw interface (RAP), CS config parsing, and HCI LE event handling in Reflector role — adding initiator/reflector Channel Sounding capability to BlueZ. Shuai Zhang posted 3 messages: v4 of hci_qca jiffies-to-ms conversion and QCA hw_error SSR fix, plus continued btusb firmware re-download discussion.

### Red Hat
Bastien Nocera was the third-most prolific contributor (23 messages) focused on reducing glib dependencies in BlueZ: posted the shared/queue iterator and glib removal 4-patch series (superseding the single-link list approach from Apr 2), contributed the MIN/MAX macro implementation v1/v2 (applied), added MIN/MAX unit tests and removed redundant definitions across the codebase. Also participated actively in the functional/integration testing discussion with Pauli Virtanen, exploring shared/shell recovery and testing integration approaches.

### Hovold Consulting
Johan Hovold contributed 16 messages across two series: the btusb/btmtk endpoint refactoring (2 patches, applied to bluetooth-next on Mar 30) using common USB helpers, and three revisions (v1/v2/v3) of the btusb wakeup irq devres lifetime fix (5-patch v3: use-after-free on registration failure, marvell probe UAF, wakeup source leak, devres lifetime, and probe error cleanup). The v3 series was reviewed by Paul Menzel.

### Collabora
Frédéric Danis posted btpclient GATT read and write value support (1 message, Apr 3).

### OMP
Kirill Samburskiy posted v1 and v2 of the AVRCP unsolicited RegisterNotification fix (5 messages): tracking TG and CT events separately. The v2 was applied and pushed to bluez.git master on Apr 3.

### Max Planck Institute (MPG)
Paul Menzel contributed 9 review messages across multiple threads: MT7927 v5 patch set review, btusb wakeup irq v3 review, btmtk_mt6639_devs build warning discussion, rtl8822cu BLE regression bug, and the 6.19.10 hci_sock Oops report.

### Variscite
Stefano Radaelli continued the hci_ll WL183x BROKEN_ENHANCED_SETUP_SYNC_CONN discussion (5 messages, v2 + replies with Luiz).

### ISCAS
Pengpeng Hou posted BNEP control header validation (1 message, Apr 4).

### Independent Contributors
Pauli Virtanen was the second-most prolific contributor (24 messages): posted v3 and v4 of the 20-patch functional/integration testing series for BlueZ (btvirt improvements, test-runner virtio-serial, Pipewire audio streaming tests, OBEX tests, Python code formatting, btmon option), kernel fixes for hci_conn_request_evt locking, hci_conn UAF, and hci_event UAF (all applied to bluetooth-next), hci_sync refcounting v2 fix, and shared/mcp crash + argument parsing fixes. Javier Tia posted v4 and v5 of the 8-patch MT7927 (MT6639) Bluetooth support series (19 messages, v4 applied to bluetooth-next): btmtk MT6639 core support, ISO interface fix, and 6 device IDs across ASUS, Lenovo, Gigabyte, MSI, and TP-Link boards. Martin BTS posted v3 of the 6-patch BLE-HID/Nintendo Switch 2 controller support series (7 messages): GATT skip_secondary, secondary service timeout, device alias rename, Gaming appearance class, gatt-uhid bridge, and Switch 2 controller plugin. Oleh Konko posted v4 SMP MITM pairing fix (2 patches, applied) and the hci_le_big_create_sync stack buffer overflow fix (applied, 6 messages total). Nathan Rebello iterated the ISO_END NULL deref fix through v1-v3 (4 messages). Binbin Huang posted v1-v2 of the hci_event OOB read and infinite loop fix in hci_le_create_big_complete_evt (4 messages). Other contributors: Zhang Chen (3, src/log.h line numbers + avdtp Discover ordering), Rob Herring (3, serdev M.2 connector reviews), Keenan Dong (2, MGMT mesh + LTK validation, both applied), Aaron Esau (2, hci_conn UAF fixes in BIG sync), Ren Wei (2, accept_q serialization v2/v3), Kamiyama Chiaki (2, MT7922 device ID, applied), Gabor Gombas (2, 6.19.10 hci_sock Oops report), Dudu Lu (2, l2cap_ecred_reconf_rsp locking), Mengshi Wu (1, gatt cache DB hash fix, applied), Marek Czerski (1, DS4 sixaxis bdaddr retrieval), Harsh Sahuxlr (1, BR/EDR key mismatch warning), Eric Biggers (1, crypto Kconfig cleanup), Arnd Bergmann (1, btmtk_mt6639_devs warning fix, applied), Thorsten Blum (1, btintel_pcie strscpy), Kangzheng Gu (1, ISO_END fragment validation), Junrui Luo (1, btintel_pcie RX bounds check follow-up), Bartosz Golaszewski (1, M.2 connector review), Thorsten Leemhuis (1, regression tracking).

---

## Notable Trends

1. **MT7927 (MT6639) lands in bluetooth-next**: Javier Tia's 8-patch MT7927 series reached v5 and the v4 was applied to bluetooth-next, adding support for MediaTek's widely-deployed WiFi/BT combo chip across ASUS, Lenovo, Gigabyte, MSI, and TP-Link boards. Arnd Bergmann immediately followed up with a build warning fix for the unused btmtk_mt6639_devs array, also applied.
2. **SMP MITM pairing security fix finalized**: The SMP legacy pairing MITM enforcement fix progressed from Oleh Konko's v3–v4 (W13–W14) to Luiz's v5 which added a third patch preventing L2CAP security level changes after connection. Both v4 and v5 were applied to bluetooth-next, completing a multi-week security hardening effort.
3. **Channel Sounding emerges as major feature area**: Both kernel-side and BlueZ-side Channel Sounding work appeared simultaneously: Luiz posted btmon Channel Sounding documentation (RFC → v1, 3 patches covering CS protocol flows, RAS/RAP, and state machines, applied to bluez.git master), while Naga Bhavani Akella (Qualcomm) posted the first BlueZ Channel Sounding implementation (v1, 3 patches: HCI raw interface, config parsing, and Reflector role event handling).
4. **BlueZ glib dependency removal accelerates**: Bastien Nocera drove a systematic effort to remove glib dependencies: MIN/MAX macros in shared/util (applied), shared/queue iterator (replacing a single-link list approach after discussion), and glib include cleanup. This supports the broader goal of making BlueZ's shared/ library more standalone and embeddable.
5. **Functional/integration testing reaches v4**: Pauli Virtanen's 20-patch testing series advanced from v3 to v4, providing BlueZ with a comprehensive test-runner-based functional testing framework including Pipewire audio streaming tests, OBEX transfer tests, Python code formatting enforcement, and btmon integration — with active discussion from Bastien Nocera on the integration approach.
6. **Third GIT PULL in four weeks**: Luiz submitted `[GIT PULL] bluetooth 2026-04-01`, the third bluetooth pull request since mid-March (after 2026-03-19 in W12 and 2026-03-25 in W13), reflecting the high sustained volume of fixes and features landing in bluetooth-next.
7. **Nintendo Switch 2 BLE-HID support progresses**: Martin BTS posted v3 of the 6-patch series adding BLE-HID/Nintendo Switch 2 controller support to BlueZ, introducing a generic GATT-to-UHID bridge plugin alongside the Switch 2-specific controller plugin, demonstrating community interest in gaming controller support.
