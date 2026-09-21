---
title: "linux-bluetooth Weekly Report - Week 34"
date: 2026-08-23
summary: "Total messages: 406 (281 human, 125 CI/bot)"
draft: false
---

**Total messages: 406 (281 human, 125 CI/bot)**

Note: Of the 406 messages, 281 are human-generated, 125 are CI/bot (bluez.test.bot: 73, patchwork-bot+bluetooth: 23, BluezTestBot: 19, kernel test robot: 6, bugzilla-daemon: 4).

---

## Summary
During week 34 (17 - 23 August 2026) the linux-bluetooth mailing list carried 406 messages, 281 from contributors and 125 from CI and bots. There were 80 human-initiated threads: 48 kernel patch series, 28 BlueZ userspace series and 4 discussions or reports. 23 patches were applied via patchwork and 17 commits were pushed to bluez repositories. The most active contributor was Luiz Augusto von Dentz (Intel) with 49 messages. 20 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: add Synaptics BCM4384 support](https://lore.kernel.org/linux-bluetooth/20260817092723.637956-1-kaihsin.chung@synaptics.com/) | kaihsin | Independent | 2 | Initial version |
| [Bluetooth: btnxpuart: Keep FW dump header in coredump chunks](https://lore.kernel.org/linux-bluetooth/20260818080104.563675-1-ali@iusegentoo.com/) | Ali Ahmet Memis | Independent | 1 | Initial version |
| [Bluetooth: fix endless adv params retry after a cancelled connection](https://lore.kernel.org/linux-bluetooth/20260817150240.520181-1-valentin.kindschi@fiveco.ch/) | Valentin Kindschi | Independent | 2 | Version 3 |
| [Bluetooth: hci_core: Return -ENOMEM when the sent_cmd clone fails](https://lore.kernel.org/linux-bluetooth/20260817205017.56524-1-johannes.goede@oss.qualcomm.com/) | Hans de Goede | Qualcomm | 2 | Initial version |
| [Bluetooth: RFCOMM: serialize session teardown](https://lore.kernel.org/linux-bluetooth/20260821174514.3034851-1-nicoyip.dev@gmail.com/) | Chengfeng Ye | Independent | 1 | Initial version |
| [Bluetooth: detect broken extended scan instead of guessing by chip id](https://lore.kernel.org/linux-bluetooth/20260822141115.58815-1-kserwus@gmail.com/) | Kamil Serwus | Independent | 2 | Initial version |
| [Bluetooth: btintel_pcie: Fix array bounds of device-controlled indices](https://lore.kernel.org/linux-bluetooth/20260820-btintel_pcie_bounds_fixes-v1-0-c9dcd1ac8bf6@uniontech.com/) | ZhaoJinming | UnionTech | 3 | Initial version |
| [Bluetooth: btintel_pcie: parse FW memory addresses via mailbox TLV](https://lore.kernel.org/linux-bluetooth/20260819143219.22728-1-kiran.k@intel.com/) | Kiran K | Intel | 3 | Version 2 |
| [Bluetooth: btmtksdio: Fix SKB handling in the TX path](https://lore.kernel.org/linux-bluetooth/20260817095332.182994-1-chris.lu@mediatek.com/) | Chris Lu | MediaTek | 2 | Initial version |
| [Bluetooth: btusb: mediatek: Fix leaked runtime PM reference in reset](https://lore.kernel.org/linux-bluetooth/ec23dae6c247005e8eccd312d326a626163ea491.1787132512.git.liujiajia@kylinos.cn/) | Jiajia Liu | Independent | 2 | Version 2 |
| [Bluetooth: fix endless adv params retry after a cancelled connection](https://lore.kernel.org/linux-bluetooth/20260818132935.1083808-1-valentin.kindschi@fiveco.ch/) | Valentin Kindschi | Independent | 2 | Version 4 |
| [Bluetooth: hci_qca: Do not write to the serial port after it is closed](https://lore.kernel.org/linux-bluetooth/20260819125425.192316-1-johannes.goede@oss.qualcomm.com/) | Hans de Goede | Qualcomm | 1 | Initial version |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Replace the name2utf8 copies with str2utf8](https://lore.kernel.org/linux-bluetooth/20260819204008.2292225-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 8 | Initial version |
| [Replace the name2utf8 copies with str2utf8](https://lore.kernel.org/linux-bluetooth/20260820183037.2713973-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 10 | Version 2 |
| [Add component batteries and Fast Pair Message Stream](https://lore.kernel.org/linux-bluetooth/20260819223144.82045-1-m.kurz@irregular.at/) | Matthias Kurz | Independent | 4 | Initial version |
| [plugin/admin: Make allowlist adapter-scoped and enforce at runtime](https://lore.kernel.org/linux-bluetooth/20260819144337.889893-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 7 | Version 3 |
| [device_schedule_reprobe(): core helper and conversions](https://lore.kernel.org/linux-bluetooth/cover.1787185594.git.daniel@makrotopia.org/) | Daniel Golle | Independent | 4 | Version 2 |
| [mgmt/device: report link security level to D-Bus clients](https://lore.kernel.org/linux-bluetooth/20260820105235.1190318-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 6 | Initial version |
| [mgmt/device: report link security level to D-Bus clients](https://lore.kernel.org/linux-bluetooth/20260820125806.1253547-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 6 | Version 2 |
| [mgmt/device: report link security level to D-Bus clients](https://lore.kernel.org/linux-bluetooth/20260821090908.1546451-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 6 | Version 3 |
| [Add support for the Synaptics BCM4384 Bluetooth controller](https://lore.kernel.org/linux-bluetooth/20260818014948.996739-1-kaihsin.chung@synaptics.com/) | Kaihsin Chung | Independent | 2 | Version 2 |
| [player: Fix crash and related defects around the pending request](https://lore.kernel.org/linux-bluetooth/20260821193449.1336263-1-george.kiagiadakis@collabora.com/) | George Kiagiadakis | Collabora | 5 | Initial version |
| [sdp-xml: Use a queue to collect sequence members](https://lore.kernel.org/linux-bluetooth/20260817210038.1839617-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 4 | Version 2 |
| [Add component batteries and Fast Pair Message Stream](https://lore.kernel.org/linux-bluetooth/cover.1787327795.git.m.kurz@irregular.at/) | Matthias Kurz | Independent | 4 | Version 2 |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [Buggy parameter passing using hci.cmd in bluetoothctl](https://lore.kernel.org/linux-bluetooth/AM7PR03MB61504B7CDB46CF6F9FD1EF81D7A72@AM7PR03MB6150.eurprd03.prod.outlook.com/) | Vanwezemael Kris (DGJ) | 3 messages |
| [MT7902 Bluetooth (0489:e156) not supported - btusb/btmtk](https://lore.kernel.org/linux-bluetooth/178695324809.6.15793290053564777912.1554499092@kaiser.moe/) | Kaiser Bh | 3 messages |
| [mediatek MT7925: update bluetooth firmware to 20260813113236](https://lore.kernel.org/linux-bluetooth/20260818013413.451943-1-chris.lu@mediatek.com/) | Chris Lu | 2 messages |
| [Revert "Bluetooth: btrtl: fix RTL8761B/BU broken LE extended scan"](https://lore.kernel.org/linux-bluetooth/20260823102959.100368-1-kserwus@gmail.com/) | Kamil Serwus | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Add component batteries and Fast Pair Message Stream](https://lore.kernel.org/linux-bluetooth/cover.1787327795.git.m.kurz@irregular.at/) | v1->v2 |
| [Bluetooth: ISO: fix use-after-free of listener socket in iso_conn_read](https://lore.kernel.org/linux-bluetooth/tencent_FFECEB355DB76CFDA2C0FE89B8E509028905@qq.com/) | v3->v4 |
| [Bluetooth: RFCOMM: serialize session teardown](https://lore.kernel.org/linux-bluetooth/20260822150619.3684599-1-nicoyip.dev@gmail.com/) | v1->v2 |
| [Bluetooth: btusb: mediatek: Fix leaked runtime PM reference in reset](https://lore.kernel.org/linux-bluetooth/290cf3c065ebee3d1dcaaa4e805e1875d0f999e8.1787292206.git.liujiajia@kylinos.cn/) | v2->v3 |
| [Bluetooth: fix a permanent LE Set Advertising Parameters retry loop af](https://lore.kernel.org/linux-bluetooth/20260817132449.509304-1-valentin.kindschi@fiveco.ch/) | v1->v2 |
| [Bluetooth: fix endless adv params retry after a cancelled connection](https://lore.kernel.org/linux-bluetooth/20260818132935.1083808-1-valentin.kindschi@fiveco.ch/) | v3->v4 |
| [Bluetooth: hci_conn: only re-enable advertising after a failed periphe](https://lore.kernel.org/linux-bluetooth/20260817132449.509304-2-valentin.kindschi@fiveco.ch/) | v1->v2 |
| [Bluetooth: hci_conn: re-enable advertising only for peripheral role](https://lore.kernel.org/linux-bluetooth/20260818132935.1083808-2-valentin.kindschi@fiveco.ch/) | v3->v4 |
| [Bluetooth: hci_sync: wait for directed advertising completion](https://lore.kernel.org/linux-bluetooth/20260821172441.3020751-1-nicoyip.dev@gmail.com/) | v3->v4 |
| [Bluetooth: mgmt: reply to cancelled mgmt commands instead of silently](https://lore.kernel.org/linux-bluetooth/20260818114116.3228662-1-shuai.zhang@oss.qualcomm.com/) | v2->v3 |
| [Bluetooth: pm: use SIMPLE_DEV_OPS for pm struct](https://lore.kernel.org/linux-bluetooth/20260820055003.1204188-1-lijun01@kylinos.cn/) | v3->v4->v5 |
| [Replace the name2utf8 copies with str2utf8](https://lore.kernel.org/linux-bluetooth/20260820183037.2713973-1-luiz.dentz@gmail.com/) | v1->v2 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 49 |
| Frédéric Danis | Collabora | 29 |
| Valentin Kindschi | Independent | 16 |
| Matthias Kurz | Independent | 14 |
| Bastien Nocera | Red Hat | 13 |
| Hans de Goede | Qualcomm | 10 |
| Daniel Golle | Independent | 10 |
| Chengfeng Ye | Independent | 9 |
| George Kiagiadakis | Collabora | 9 |
| Jiajia Liu | Independent | 8 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: hci_sync: add conditional locking annotations](https://lore.kernel.org/linux-bluetooth/178699596788.1691257.11633718585143607081.git-patchwork-notify@kernel.org/)
- [Bluetooth: eir: Fix OOB read in eir_get_service_data()](https://lore.kernel.org/linux-bluetooth/178699596638.1691257.16551460626446632057.git-patchwork-notify@kernel.org/)
- [Bluetooth: btnxpuart: Validate the FW dump header length](https://lore.kernel.org/linux-bluetooth/178699596488.1691257.10669499183665262272.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtk: fix subsystem reset error reporting](https://lore.kernel.org/linux-bluetooth/178699596038.1691257.10089072145797162594.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: avoid maybe-return-locked in l2cap_get_chan_by_scid/](https://lore.kernel.org/linux-bluetooth/178699596338.1691257.6779779933672558121.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_core: add lockdep check to hci_conn lookups](https://lore.kernel.org/linux-bluetooth/178699596188.1691257.3368890907172827506.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtksdio: Fix SKB handling in the TX path](https://lore.kernel.org/linux-bluetooth/178699595738.1691257.9499694982738760170.git-patchwork-notify@kernel.org/)
- [Bluetooth: btnxpuart: Check remote M.2 connector availability before p](https://lore.kernel.org/linux-bluetooth/178699595888.1691257.12228192402111698983.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_core: Return -ENOMEM when the sent_cmd clone fails](https://lore.kernel.org/linux-bluetooth/178707825486.2194892.5994990121854718172.git-patchwork-notify@kernel.org/)
- [Bluetooth: mgmt: reply to cancelled mgmt commands instead of silently](https://lore.kernel.org/linux-bluetooth/178707825319.2194892.1917826317801040923.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_bcm4377: Ignore reserved PHY in ext adv reports on BCM4](https://lore.kernel.org/linux-bluetooth/178707825170.2194892.13646911015314059451.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_core: use skb_get() instead of skb_clone() for req_skb](https://lore.kernel.org/linux-bluetooth/178715940938.3583745.2165256517061172398.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: parse FW memory addresses via mailbox TLV](https://lore.kernel.org/linux-bluetooth/178715940789.3583745.6902246283007182525.git-patchwork-notify@kernel.org/)
- [Bluetooth: ISO: fix use-after-free of listener socket in iso_conn_read](https://lore.kernel.org/linux-bluetooth/178715941390.3583745.14863371844483477016.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: parse FW memory region addresses via mailbox](https://lore.kernel.org/linux-bluetooth/178715941238.3583745.6450247910448931285.git-patchwork-notify@kernel.org/)
- [Bluetooth: fix endless adv params retry after a cancelled connection](https://lore.kernel.org/linux-bluetooth/178715941088.3583745.7496147705308493580.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_uart: Fix false success return in hci_uart_setup()](https://lore.kernel.org/linux-bluetooth/178734180539.1457312.10393631411871109730.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [sdp-xml: Fix leaking the parse stack on malformed input](https://lore.kernel.org/linux-bluetooth/178707826163.2194892.8557582282057693653.git-patchwork-notify@kernel.org/)
- [sdp-xml: Use a queue to collect sequence members](https://lore.kernel.org/linux-bluetooth/178707826022.2194892.16036865943202250756.git-patchwork-notify@kernel.org/)
- [avctp: Fix typo in comment which contradicts the conditional below](https://lore.kernel.org/linux-bluetooth/178716901028.3669166.13010335698995727322.git-patchwork-notify@kernel.org/)
- [test-runner: "-a" option also stands for "--all"](https://lore.kernel.org/linux-bluetooth/178716900888.3669166.15973906945058696851.git-patchwork-notify@kernel.org/)
- [doc: Fix typo in test-runner.rst](https://lore.kernel.org/linux-bluetooth/178716900756.3669166.8746606926794477351.git-patchwork-notify@kernel.org/)
- [avrcp: Fix media/folder name not being set](https://lore.kernel.org/linux-bluetooth/178716900614.3669166.6100756359152972728.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- [sdp-xml: Use a queue to collect sequence members](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1147412%2F000000-1734f8@github.com/)
- [obexd: Reference count the phonebook back-end setu...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1147292%2F000000-03f0f6@github.com/)
- [avrcp: Fix media/folder name not being set](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1147094%2F000000-bff6d7@github.com/)
- [avctp: Fix typo in comment which contradicts the c...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1147758%2F000000-0e3336@github.com/)
- [eir: Fix stack buffer overflow when parsing the re...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1148699%2F000000-d917c2@github.com/)
- [battery: Add component battery objects](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1148725%2F000000-1b0576@github.com/)
- [plugins/admin: make AdminPolicy state per-adapter](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1148530%2F000000-aa500e@github.com/)
- [test-runner: "-a" option also stands for "--all"](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1148341%2F000000-a51720@github.com/)
- [doc: Fix typo in test-runner.rst](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1148340%2F000000-dc5d10@github.com/)
- [src: Modify MaxTxPower option documentation for Ch...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1149256%2F000000-b625e4@github.com/)
- [mgmt: Add Security Level Changed event](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1149033%2F000000-0e5f56@github.com/)
- [bluetooth.service: Fix ConfigurationDirectory warning](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1148981%2F000000-88cb39@github.com/)
- [player: Fix crash on MediaItem1.Play() without a b...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1149990%2F000000-b2d885@github.com/)
- [build: Ignore the test-sdp-xml binary](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1149989%2F000000-af6975@github.com/)
- [gatt-server: Fix integer overflow](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1149440%2F000000-263b7f@github.com/)
- [gatt-server: Fix integer overflow and 3 CI VLA wan...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1149533%2F000000-ce02cc@github.com/)
- [tools/iso-tester: fix GIOChannel refcounting](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1150371%2F000000-eaf6e8@github.com/)

---

## Company Focus Areas

### Independent Contributors

- [Bluetooth: add Synaptics BCM4384 support](https://lore.kernel.org/linux-bluetooth/20260817092723.637956-1-kaihsin.chung@synaptics.com/)
- [Add component batteries and Fast Pair Message Stream](https://lore.kernel.org/linux-bluetooth/20260819223144.82045-1-m.kurz@irregular.at/)
- [Bluetooth: btnxpuart: Keep FW dump header in coredump chunks](https://lore.kernel.org/linux-bluetooth/20260818080104.563675-1-ali@iusegentoo.com/)
- [Bluetooth: fix endless adv params retry after a cancelled connection](https://lore.kernel.org/linux-bluetooth/20260817150240.520181-1-valentin.kindschi@fiveco.ch/)

### Qualcomm

- [Bluetooth: hci_core: Return -ENOMEM when the sent_cmd clone fails](https://lore.kernel.org/linux-bluetooth/20260817205017.56524-1-johannes.goede@oss.qualcomm.com/)
- [Bluetooth: hci_qca: Do not write to the serial port after it is closed](https://lore.kernel.org/linux-bluetooth/20260819125425.192316-1-johannes.goede@oss.qualcomm.com/)
- [Bluetooth: mgmt: reply to cancelled mgmt commands instead of silently dropping](https://lore.kernel.org/linux-bluetooth/20260817060134.3298439-1-shuai.zhang@oss.qualcomm.com/)
- [ranging: mode validation and](https://lore.kernel.org/linux-bluetooth/20260820174910.559116-1-naga.akella@oss.qualcomm.com/)

### Collabora

- [plugin/admin: Make allowlist adapter-scoped and enforce at runtime](https://lore.kernel.org/linux-bluetooth/20260819144337.889893-1-frederic.danis@collabora.com/)
- [mgmt/device: report link security level to D-Bus clients](https://lore.kernel.org/linux-bluetooth/20260820105235.1190318-1-frederic.danis@collabora.com/)
- [mgmt/device: report link security level to D-Bus clients](https://lore.kernel.org/linux-bluetooth/20260820125806.1253547-1-frederic.danis@collabora.com/)
- [mgmt/device: report link security level to D-Bus clients](https://lore.kernel.org/linux-bluetooth/20260821090908.1546451-1-frederic.danis@collabora.com/)

### Red Hat

- [avctp: Fix typo in comment which contradicts the conditional below](https://lore.kernel.org/linux-bluetooth/20260818105827.600893-1-hadess@hadess.net/)
- [avrcp: Fix media/folder name not being set](https://lore.kernel.org/linux-bluetooth/20260817082315.4090729-1-hadess@hadess.net/)
- [doc: Fix typo in test-runner.rst](https://lore.kernel.org/linux-bluetooth/20260819091333.1203931-1-hadess@hadess.net/)
- [test-runner: "-a" option also stands for "--all"](https://lore.kernel.org/linux-bluetooth/20260819091347.1204005-1-hadess@hadess.net/)

### Intel

- [Replace the name2utf8 copies with str2utf8](https://lore.kernel.org/linux-bluetooth/20260819204008.2292225-1-luiz.dentz@gmail.com/)
- [Replace the name2utf8 copies with str2utf8](https://lore.kernel.org/linux-bluetooth/20260820183037.2713973-1-luiz.dentz@gmail.com/)
- [sdp-xml: Use a queue to collect sequence members](https://lore.kernel.org/linux-bluetooth/20260817210038.1839617-1-luiz.dentz@gmail.com/)
- [Bluetooth: btintel_pcie: parse FW memory addresses via mailbox TLV](https://lore.kernel.org/linux-bluetooth/20260819143219.22728-1-kiran.k@intel.com/)

### MediaTek

- [Bluetooth: btmtksdio: Fix SKB handling in the TX path](https://lore.kernel.org/linux-bluetooth/20260817095332.182994-1-chris.lu@mediatek.com/)
- [mediatek MT7925: update bluetooth firmware to 20260813113236](https://lore.kernel.org/linux-bluetooth/20260818013413.451943-1-chris.lu@mediatek.com/)

### Max Planck Institute

- [obexd: Reference count the phonebook back-end setup and teardown](https://lore.kernel.org/linux-bluetooth/20260817154810.92634-1-pmenzel@molgen.mpg.de/)

### UnionTech

- [Bluetooth: btintel_pcie: Fix array bounds of device-controlled indices](https://lore.kernel.org/linux-bluetooth/20260820-btintel_pcie_bounds_fixes-v1-0-c9dcd1ac8bf6@uniontech.com/)
