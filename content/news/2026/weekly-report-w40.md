---
title: "linux-bluetooth Weekly Report - Week 40"
date: 2026-10-04
summary: "Total messages: 356 (224 human, 132 CI/bot)"
draft: false
---

**Total messages: 356 (224 human, 132 CI/bot)**

Note: Of the 356 messages, 224 are human-generated, 132 are CI/bot (bluez.test.bot: 57, patchwork-bot+bluetooth: 40, BluezTestBot: 19, github-actions[bot]: 6, kernel test robot: 3, bugzilla-daemon: 2, syzbot: 2, Sasha Levin: 2, patchwork-bot+netdevbpf: 1).

---

## Summary
During week 40 (28 September - 4 October 2026) the linux-bluetooth mailing list carried 356 messages, 224 from contributors and 132 from CI and bots. There were 57 human-initiated threads: 32 kernel patch series, 21 BlueZ userspace series and 4 discussions or reports. 40 patches were applied via patchwork and 15 commits were pushed to bluez repositories. The most active contributor was Luiz Augusto von Dentz (Intel) with 79 messages. 12 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: btintel_pcie: fix D-state transition and PM flows](https://lore.kernel.org/linux-bluetooth/20260928050344.2893790-1-ravindra@intel.com/) | Ravindra | Intel | 4 | Version 5 |
| [Bluetooth: btintel_pcie: fix D-state transitions and PM flows](https://lore.kernel.org/linux-bluetooth/20260928171003.2925480-1-ravindra@intel.com/) | Ravindra | Intel | 4 | Version 6 |
| [Bluetooth: add hardware rfkill handling and test hook](https://lore.kernel.org/linux-bluetooth/cover.1790752799.git.aluvala.sai.teja@intel.com/) | Sai Teja Aluvala | Intel | 4 | Initial version |
| [Bluetooth: RFCOMM: connect the session socket without rfcomm_mutex](https://lore.kernel.org/linux-bluetooth/20260929122226.98970-1-mikhail.v.gavrilov@gmail.com/) | Mikhail Gavrilov | Independent | 1 | Version 4 |
| [Bluetooth: add hardware rfkill handling](https://lore.kernel.org/linux-bluetooth/cover.1790905146.git.aluvala.sai.teja@intel.com/) | Sai Teja Aluvala | Intel | 2 | Version 2 |
| [Bluetooth: hci_sync: Cancel cmd_timer before draining workqueue](https://lore.kernel.org/linux-bluetooth/20261002044810.80340-1-rabindrameher116@gmail.com/) | rabindra789 | Independent | 1 | Initial version |
| [Bluetooth: btintel: load unlocker.sfi to allow unsigned firmware](https://lore.kernel.org/linux-bluetooth/20260929021056.1396791-1-kiran.k@intel.com/) | Kiran K | Intel | 1 | Version 2 |
| [Bluetooth: ISO: Serialize concurrent connect calls](https://lore.kernel.org/linux-bluetooth/20261004162458.3968546-1-nicoyip.dev@gmail.com/) | Chengfeng Ye | Independent | 1 | Initial version |
| [Bluetooth: MGMT: Add management security level changed event](https://lore.kernel.org/linux-bluetooth/20260929100923.252597-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 1 | Version 5 |
| [Bluetooth: MGMT: Add management security level changed event](https://lore.kernel.org/linux-bluetooth/20260930095147.554276-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 1 | Version 6 |
| [Bluetooth: RFCOMM: Fix NULL tty_dev dereference in rfcomm_dev_shutdown](https://lore.kernel.org/linux-bluetooth/20261002070752.84486-1-raghunathpalla.0209@gmail.com/) | Palla Raghunath | Independent | 1 | Initial version |
| [Bluetooth: btintel_pcie: Add shared HW reset for clean start](https://lore.kernel.org/linux-bluetooth/20260929061233.204406-1-aluvala.sai.teja@intel.com/) | Sai Teja Aluvala | Intel | 1 | Version 2 |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Add HoG functional tests and shared/hog](https://lore.kernel.org/linux-bluetooth/20260928200031.1209311-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 23 | Version 6 |
| [Add HoG functional tests and shared/hog](https://lore.kernel.org/linux-bluetooth/20260928173243.1073509-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 21 | Version 5 |
| [Ranging Profile and Ranging Service PTS fixes](https://lore.kernel.org/linux-bluetooth/20261001131900.707485-1-cheng.jiang@oss.qualcomm.com/) | Cheng Jiang | Qualcomm | 11 | Initial version |
| [hfp-hf: Enhance HFP Hands-Free profile support](https://lore.kernel.org/linux-bluetooth/20261001211036.1760396-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 12 | Version 2 |
| [Add Connectable property to org.bluez.Device](https://lore.kernel.org/linux-bluetooth/20261002054618.30994-1-kevin@simpleble.org/) | Kevin Dewald | Independent | 6 | Version 2 |
| [mgmt/device: report link security level to D-Bus clients](https://lore.kernel.org/linux-bluetooth/20260929101953.254969-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 6 | Version 4 |
| [Add Connectable property to org.bluez.Device](https://lore.kernel.org/linux-bluetooth/20260928223815.11936-1-kevin@simpleble.org/) | Kevin Dewald | Independent | 3 | Initial version |
| [monitor: Add audio quality statistics for ISO streams](https://lore.kernel.org/linux-bluetooth/20261002192759.3071262-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 7 | Initial version |
| [emulator: add generic HW rfkill test tool](https://lore.kernel.org/linux-bluetooth/cover.1790752800.git.aluvala.sai.teja@intel.com/) | Sai Teja Aluvala | Intel | 1 | Initial version |
| [doc: Add commit message guidelines for AI coding assistants](https://lore.kernel.org/linux-bluetooth/20261001151054.2422165-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 3 | Initial version |
| [Fix use-after-free in GATT client discovery](https://lore.kernel.org/linux-bluetooth/20260930093928.360745-1-altomanigianluca@gmail.com/) | Gianluca Altomani | Independent | 2 | Initial version |
| [a2dp: Fix crashes around pending SetConfiguration](https://lore.kernel.org/linux-bluetooth/20261001143436.230557-1-eduardoalves8006@gmail.com/) | Eduardo Alves | Independent | 2 | Initial version |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [7.2.y took the on-air address fix without its companion](https://lore.kernel.org/linux-bluetooth/179097754519.501890.1801734138080126989@podgorny.cz/) | Radek Podgorny | 2 messages |
| [Please backport dc16388d45ec ("Bluetooth: btusb: Add IMC Networks QCA9377 to qui...](https://lore.kernel.org/linux-bluetooth/20261002012542.473669-1-yaroslav.voytovych@gmail.com/) | Iaroslav Voitovych | 2 messages |
| [[GIT PULL] bluetooth 2026-09-28](https://lore.kernel.org/linux-bluetooth/20260928152919.942973-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 2 messages |
| [[regression 6.12.y] After backport of 980084de4d9b ("Bluetooth: btusb: Add ASUS ...](https://lore.kernel.org/linux-bluetooth/179104011040.2214689.5921682013387867802@eldamar.lan/) | Salvatore Bonaccorso | 2 messages |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Add Connectable property to org.bluez.Device](https://lore.kernel.org/linux-bluetooth/20261002054618.30994-1-kevin@simpleble.org/) | v1->v2 |
| [Add HoG functional tests and shared/hog](https://lore.kernel.org/linux-bluetooth/20260928200031.1209311-1-luiz.dentz@gmail.com/) | v5->v6 |
| [Bluetooth: Add interface to allow stack to communicate hw rfkill event](https://lore.kernel.org/linux-bluetooth/cec8b1c81c62ec805bdc4c32e59515d92e62cc65.1790905146.git.aluvala.sai.teja@intel.com/) | v1->v2 |
| [Bluetooth: L2CAP: Reject signalling responses in invalid states](https://lore.kernel.org/linux-bluetooth/20260929154219.2366060-1-oss@fourdim.xyz/) | v1->v2 |
| [Bluetooth: MGMT: Add management security level changed event](https://lore.kernel.org/linux-bluetooth/20261001135108.964362-1-frederic.danis@collabora.com/) | v5->v6->v7->v8->v9 |
| [Bluetooth: btintel_pcie: Add shared HW reset for clean start](https://lore.kernel.org/linux-bluetooth/20260929061233.204406-1-aluvala.sai.teja@intel.com/) | v1->v2 |
| [Bluetooth: btintel_pcie: fix TX descriptor bounds check](https://lore.kernel.org/linux-bluetooth/20260929065641.2936267-1-ravindra@intel.com/) | v1->v2 |
| [Bluetooth: btintel_pcie: fix stale cache in set_dxstate fallback check](https://lore.kernel.org/linux-bluetooth/20260928171003.2925480-2-ravindra@intel.com/) | v5->v6 |
| [Bluetooth: btusb: add ASUS 0b05:1825 to QCA Rome quirks](https://lore.kernel.org/linux-bluetooth/20261001113513.1612-1-qwertyuiopyyy@gmail.com/) | v1->v2->v3 |
| [mpris-proxy: Line-buffer stdout](https://lore.kernel.org/linux-bluetooth/20260929024530.3978095-1-jmsmg1@me.com/) | v1->v2 |
| [org.bluez.Device: Add Connectable property](https://lore.kernel.org/linux-bluetooth/20261002054618.30994-2-kevin@simpleble.org/) | v1->v2 |
| [shared/gatt-client: Fix calling destroy after unregistering notify](https://lore.kernel.org/linux-bluetooth/20260928200031.1209311-2-luiz.dentz@gmail.com/) | v5->v6 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 79 |
| Frédéric Danis | Collabora | 26 |
| Ravindra | Intel | 14 |
| Kevin Dewald | Independent | 13 |
| Cheng Jiang | Qualcomm | 13 |
| Sai Teja Aluvala | Intel | 12 |
| Chengfeng Ye | Independent | 6 |
| Seonggon Cho | Independent | 4 |
| fdanis-oss | Collabora | 4 |
| Konstantin Nazarov | Independent | 4 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: hci_core: Serialize fragmented ISO packet queueing](https://lore.kernel.org/linux-bluetooth/179061003164.4169639.3011615107768318520.git-patchwork-notify@kernel.org/)
- [Bluetooth: Serialize SMP remote OOB data access](https://lore.kernel.org/linux-bluetooth/179061003014.4169639.17182222641620066835.git-patchwork-notify@kernel.org/)
- [Bluetooth: RFCOMM: Fix initial port reference race](https://lore.kernel.org/linux-bluetooth/179061002863.4169639.16838238725128380155.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_conn: Lock parent access during enhanced SCO setup](https://lore.kernel.org/linux-bluetooth/179061002714.4169639.10333863010515930414.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: add ASUS 0b05:1868 to QCA Rome quirks](https://lore.kernel.org/linux-bluetooth/179061002563.4169639.12709606415672221829.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: Fix inquiry cache use-after-free](https://lore.kernel.org/linux-bluetooth/179061002421.4169639.12676467973914024013.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: don't drain cmd_sync backlog on unregister](https://lore.kernel.org/linux-bluetooth/179061002265.4169639.8219573133250587416.git-patchwork-notify@kernel.org/)
- [Bluetooth: Serialize TX scheduling with teardown](https://lore.kernel.org/linux-bluetooth/179061002143.4169639.3931590453704871029.git-patchwork-notify@kernel.org/)
- [Bluetooth: SCO: serialise sco_conn lifetime against sco_recv_scodata()](https://lore.kernel.org/linux-bluetooth/179061660764.34603.5921039762584362076.git-patchwork-notify@kernel.org/)
- [Bluetooth: RFCOMM: free the skb when the DLC has no owner](https://lore.kernel.org/linux-bluetooth/179061660640.34603.9560704992810045042.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: clear the GP0 cause with a W1C write](https://lore.kernel.org/linux-bluetooth/179069461953.983246.6683069872210269524.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: Add shared HW reset for clean start](https://lore.kernel.org/linux-bluetooth/179069462092.983246.2089317518518826890.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: fix stale cache in set_dxstate fallback check](https://lore.kernel.org/linux-bluetooth/179069461652.983246.11812370447115539033.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: fix D-state transition and PM flows](https://lore.kernel.org/linux-bluetooth/179069461801.983246.2880891224850041177.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: fix stale cache in set_dxstate fallback check](https://lore.kernel.org/linux-bluetooth/179069461352.983246.11748091968845078723.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: fix D-state transitions and PM flows](https://lore.kernel.org/linux-bluetooth/179069461202.983246.15242898200206126696.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: two PM fixes, assembled as one series](https://lore.kernel.org/linux-bluetooth/179069461502.983246.6739474420030801580.git-patchwork-notify@kernel.org/)
- [Bluetooth: RFCOMM: connect the session socket without rfcomm_mutex](https://lore.kernel.org/linux-bluetooth/179069461052.983246.10195137222615852144.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: fix TX descriptor bounds check](https://lore.kernel.org/linux-bluetooth/179069460911.983246.4722326207131032001.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: Preserve event and ACL packet ordering](https://lore.kernel.org/linux-bluetooth/179069521277.987606.7177534620534882712.git-patchwork-notify@kernel.org/)
- [Bluetooth: MGMT: Fix status of pending commands flushed on power off](https://lore.kernel.org/linux-bluetooth/179069640730.997963.2754170739187086814.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: drop BROKEN_EXT_SCAN quirk for 0bda:a728](https://lore.kernel.org/linux-bluetooth/179069640603.997963.8086437204230046339.git-patchwork-notify@kernel.org/)
- [Bluetooth: btbcm: Add entry for BCM4356A3 UART bluetooth](https://lore.kernel.org/linux-bluetooth/179095920903.3497173.9841096875814984344.git-patchwork-notify@kernel.org/)
- [Bluetooth: RFCOMM: Fix NULL tty_dev dereference in rfcomm_dev_shutdown](https://lore.kernel.org/linux-bluetooth/179095920764.3497173.9577139976103551924.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: use managed IRQ teardown](https://lore.kernel.org/linux-bluetooth/179095920628.3497173.5666642957609869868.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [doc/qualification: Add VCP PICS file](https://lore.kernel.org/linux-bluetooth/179061781414.50268.15874789019874240348.git-patchwork-notify@kernel.org/)
- [doc/qualification: Add CSIP PICS file](https://lore.kernel.org/linux-bluetooth/179061781269.50268.16212351715366137468.git-patchwork-notify@kernel.org/)
- [shared: mainloop: Skip removed mainloop events](https://lore.kernel.org/linux-bluetooth/179061781113.50268.815655039941498260.git-patchwork-notify@kernel.org/)
- [doc/qualification: Add MCP/MCS PICS files](https://lore.kernel.org/linux-bluetooth/179061780964.50268.16025490268260239462.git-patchwork-notify@kernel.org/)
- [doc/qualification: Add MICP PICS file](https://lore.kernel.org/linux-bluetooth/179061780840.50268.3037893366478728337.git-patchwork-notify@kernel.org/)
- [doc/qualification: Add PICS and howto for the BAP qualification](https://lore.kernel.org/linux-bluetooth/179062620591.111171.18113544518534541159.git-patchwork-notify@kernel.org/)
- [build: Fix coverage target failing with stale .gcda files](https://lore.kernel.org/linux-bluetooth/179069521602.987606.1397475380776965493.git-patchwork-notify@kernel.org/)
- [Add HID over GATT functional tests](https://lore.kernel.org/linux-bluetooth/179071501377.1114983.2390179061802293430.git-patchwork-notify@kernel.org/)
- [Add HoG functional tests and shared/hog](https://lore.kernel.org/linux-bluetooth/179071501227.1114983.10858413604380295983.git-patchwork-notify@kernel.org/)
- [ranging: Route CS subevent results by connection and configuration](https://lore.kernel.org/linux-bluetooth/179078280977.1986714.4946356790271946414.git-patchwork-notify@kernel.org/)
- [mpris-proxy: Line-buffer stdout](https://lore.kernel.org/linux-bluetooth/179078280827.1986714.14953752400407137061.git-patchwork-notify@kernel.org/)
- [audio: Fix stale AVDTP connecting state](https://lore.kernel.org/linux-bluetooth/179078280703.1986714.6312799631329012580.git-patchwork-notify@kernel.org/)
- [mgmt/device: report link security level to D-Bus clients](https://lore.kernel.org/linux-bluetooth/179087641603.3027576.11599397534070933900.git-patchwork-notify@kernel.org/)
- [doc: Add commit message guidelines for AI coding assistants](https://lore.kernel.org/linux-bluetooth/179087641439.3027576.842784778085859511.git-patchwork-notify@kernel.org/)
- [Add Connectable property to org.bluez.Device](https://lore.kernel.org/linux-bluetooth/179095320641.3455312.4778781139268053078.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- [build: Fix coverage target failing with stale .gcd...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1175582%2F000000-fe7cbf@github.com/)
- [shared/gatt-client: Fix calling destroy after unre...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1175561%2F000000-317f15@github.com/)
- [doc/qualification: Add CSIP PICS file](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F8b4a41-73e934@github.com/)
- [mpris-proxy: Line-buffer stdout](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1175670%2F000000-361fbb@github.com/)
- [mgmt: Add Security Level Changed event](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1175995%2F000000-3c1e78@github.com/)
- [avrcp: Poll GetPlayStatus when position changed ev...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1176102%2F000000-9f1247@github.com/)
- [mesh: Fix Command Disallowed on random address cha...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1176997%2F000000-269438@github.com/)
- [doc: Add functional-hfp documentation](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1172556%2F000000-0317c8@github.com/)
- [emulator: add generic HW rfkill test tool](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1176664%2F000000-e70640@github.com/)
- [shared/gatt-db: Always notify service removal](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1176731%2F000000-9da276@github.com/)
- [audio: Fix stale AVDTP connecting state](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1176758%2F000000-645bd5@github.com/)
- [a2dp: Fix UAF after rejected SetConfiguration](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1177732%2F000000-814917@github.com/)
- [doc: Add commit message guidelines for AI coding a...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1177764%2F000000-c60df5@github.com/)
- [monitor: Add audio quality statistics for ISO streams](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1178559%2F000000-39b3f1@github.com/)
- [audio/hfp-hf: Add HFP HF server and SDP record](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1177946%2F000000-a70d67@github.com/)

---

## Company Focus Areas

### Independent Contributors

- [Add Connectable property to org.bluez.Device](https://lore.kernel.org/linux-bluetooth/20261002054618.30994-1-kevin@simpleble.org/)
- [Add Connectable property to org.bluez.Device](https://lore.kernel.org/linux-bluetooth/20260928223815.11936-1-kevin@simpleble.org/)
- [Bluetooth: RFCOMM: connect the session socket without rfcomm_mutex](https://lore.kernel.org/linux-bluetooth/20260929122226.98970-1-mikhail.v.gavrilov@gmail.com/)
- [Bluetooth: hci_sync: Cancel cmd_timer before draining workqueue](https://lore.kernel.org/linux-bluetooth/20261002044810.80340-1-rabindrameher116@gmail.com/)

### Intel

- [Add HoG functional tests and shared/hog](https://lore.kernel.org/linux-bluetooth/20260928200031.1209311-1-luiz.dentz@gmail.com/)
- [Add HoG functional tests and shared/hog](https://lore.kernel.org/linux-bluetooth/20260928173243.1073509-1-luiz.dentz@gmail.com/)
- [Bluetooth: btintel_pcie: fix D-state transition and PM flows](https://lore.kernel.org/linux-bluetooth/20260928050344.2893790-1-ravindra@intel.com/)
- [Bluetooth: btintel_pcie: fix D-state transitions and PM flows](https://lore.kernel.org/linux-bluetooth/20260928171003.2925480-1-ravindra@intel.com/)

### Collabora

- [hfp-hf: Enhance HFP Hands-Free profile support](https://lore.kernel.org/linux-bluetooth/20261001211036.1760396-1-frederic.danis@collabora.com/)
- [mgmt/device: report link security level to D-Bus clients](https://lore.kernel.org/linux-bluetooth/20260929101953.254969-1-frederic.danis@collabora.com/)
- [Bluetooth: MGMT: Add management security level changed event](https://lore.kernel.org/linux-bluetooth/20260929100923.252597-1-frederic.danis@collabora.com/)
- [Bluetooth: MGMT: Add management security level changed event](https://lore.kernel.org/linux-bluetooth/20260930095147.554276-1-frederic.danis@collabora.com/)

### Qualcomm

- [Ranging Profile and Ranging Service PTS fixes](https://lore.kernel.org/linux-bluetooth/20261001131900.707485-1-cheng.jiang@oss.qualcomm.com/)
- [ranging: Route CS subevent results by connection and configuration](https://lore.kernel.org/linux-bluetooth/20260930054528.2258948-1-cheng.jiang@oss.qualcomm.com/)
- [obexd: Fix FILE* leak in phonebook-dummy](https://lore.kernel.org/linux-bluetooth/20260930073953.266930-1-jinwang.li@oss.qualcomm.com/)

### Debian

- [[regression 6.12.y] After backport of 980084de4d9b ("Bluetooth: btusb: Add ASUS ...](https://lore.kernel.org/linux-bluetooth/179104011040.2214689.5921682013387867802@eldamar.lan/)
