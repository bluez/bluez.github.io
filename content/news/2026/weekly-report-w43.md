---
title: "linux-bluetooth Weekly Report - Week 43"
date: 2026-10-25
summary: "Total messages: 262 (146 human, 116 CI/bot)"
draft: false
---

**Total messages: 262 (146 human, 116 CI/bot)**

Note: Of the 262 messages, 146 are human-generated, 116 are CI/bot (bluez.test.bot: 60, patchwork-bot+bluetooth: 21, bugzilla-daemon: 18, Sasha Levin: 13, kernel test robot: 2, patchwork-bot+netdevbpf: 2).

---

## Summary
During week 43 (19 - 25 October 2026) the linux-bluetooth mailing list carried 262 messages, 146 from contributors and 116 from CI and bots. There were 61 human-initiated threads: 44 kernel patch series, 13 BlueZ userspace series and 4 discussions or reports. 21 patches were applied via patchwork and 0 commits were pushed to bluez repositories. The most active contributor was Luiz Augusto von Dentz (Intel) with 36 messages. 7 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: make the Amlogic W1 (W155S2) usable](https://lore.kernel.org/linux-bluetooth/20261025192338.209574-1-christian.koever-draxl@student.uibk.ac.at/) | christian.koever-draxl | Independent | 7 | Initial version |
| [Bluetooth: btmtk: fix ISO data reception](https://lore.kernel.org/linux-bluetooth/20261021084337.1515468-1-chris.lu@mediatek.com/) | Chris Lu | MediaTek | 3 | Version 3 |
| [Bluetooth: btusb: disable by default Qualcomm multi-subsystem](https://lore.kernel.org/linux-bluetooth/50f92fe870de717fca6368e750e0a6cbc8f46597.1792683340.git.pabeni@redhat.com/) | Paolo Abeni | Independent | 1 | Initial version |
| [Bluetooth: btmtk: fix ISO data reception](https://lore.kernel.org/linux-bluetooth/20261022032150.2213479-1-chris.lu@mediatek.com/) | Chris Lu | MediaTek | 3 | Version 4 |
| [Bluetooth: L2CAP: Hold incoming data until encryption key size is known](https://lore.kernel.org/linux-bluetooth/20261022154621.3958803-2-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 1 | Initial version |
| [Bluetooth: SMP: distribute the identity address when bonding](https://lore.kernel.org/linux-bluetooth/20261024112435.247650-1-turbine.bmw@gmail.com/) | Brandon Williams | Independent | 2 | Initial version |
| [Bluetooth: btmtk: fix ISO data reception](https://lore.kernel.org/linux-bluetooth/20261021072356.1449539-1-chris.lu@mediatek.com/) | Chris Lu | MediaTek | 3 | Version 3 |
| [Bluetooth: qca: Fix the WCN3950 NVM baud rate offset](https://lore.kernel.org/linux-bluetooth/20261021195112.41138-1-me@michaelmcallister.org/) | Michael McAllister | Independent | 1 | Initial version |
| [Bluetooth: SMP: Fail if the X coordinate of remote and local public keys are ide...](https://lore.kernel.org/linux-bluetooth/20261021093522.3536051-1-jlee@suse.com/) | Chun-Yi Lee | Independent | 1 | Initial version |
| [Bluetooth: hci_sync: re-enable legacy advertising on resume](https://lore.kernel.org/linux-bluetooth/20261020105150.2863631-1-valentin.kindschi@fiveco.ch/) | Valentin Kindschi | Independent | 2 | Version 8 |
| [Bluetooth: MGMT: Return RFKILLED for Set Powered on a blocked controller](https://lore.kernel.org/linux-bluetooth/20261021065833.120347-1-tooangel@tooangel.de/) | Tobias Wilken | Independent | 1 | Initial version |
| [Bluetooth: btintel: Add TOP silent reset hooks](https://lore.kernel.org/linux-bluetooth/20261023094033.212251-1-chandrashekar.devegowda@intel.com/) | Chandrashekar Devegowda | Intel | 2 | Version 2 |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Run the testers under User Mode Linux with time travel](https://lore.kernel.org/linux-bluetooth/20261022154701.3959500-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 27 | Initial version |
| [Promote the bearer interfaces to stable](https://lore.kernel.org/linux-bluetooth/20261023223708.76232-1-kevin@simpleble.org/) | Kevin Dewald | Independent | 3 | Initial version |
| [Enable bluetooth on BeagleV-Ahead](https://lore.kernel.org/linux-bluetooth/20261020132604.90708-1-thomas.gerner@muenchen-mail.de/) | Thomas Gerner | Independent | 2 | Version 2 |
| [doc: Add CONFIG_RFKILL to the tester kernel config](https://lore.kernel.org/linux-bluetooth/20261021072133.136948-1-tooangel@tooangel.de/) | Tobias Wilken | Independent | 2 | Initial version |
| [mesh: Fix Command Disallowed on random address change in generic IO](https://lore.kernel.org/linux-bluetooth/AM5P250MB4222047E08E92211215A496AACCB652@AM5P250MB422204.EURP250.PROD.OUTLOOK.COM/) | Aurélien Rivet | Independent | 1 | Initial version |
| [monitor: Fix legacy SCAN_RSP PDU type names](https://lore.kernel.org/linux-bluetooth/20261019041009.9720-1-kevin@simpleble.org/) | Kevin Dewald | Independent | 1 | Initial version |
| [obexd: Handle message read status change events](https://lore.kernel.org/linux-bluetooth/20261020035617.1089331-1-sadiq@sadiqpk.org/) | Mohammed Sadiq | Independent | 1 | Initial version |
| [smp-tester: Expect the identity key in Pairing Requests](https://lore.kernel.org/linux-bluetooth/20261024112527.249473-1-turbine.bmw@gmail.com/) | Brandon Williams | Independent | 2 | Initial version |
| [adapter: Don't power on while blocked by rfkill](https://lore.kernel.org/linux-bluetooth/20261024103255.81769-1-tooangel@tooangel.de/) | Tobias Wilken | Independent | 1 | Initial version |
| [btusb/btrtl: Realtek 0bda:b853 (RTL8852BE, ROM version 3) hci0 never initializes...](https://lore.kernel.org/linux-bluetooth/GVrWcj7OWY_xn1c3JqNTGsmDKwlpNoj63oqTpfrGGly6WR9wsgzphoI-J7uyPreMyDvLfKSCTyaPY-gFqmdFh3YdaR-DHKOMM1gMvpYvfQk=@proton.me/) | Gabriela Bartova | Independent | 1 | Initial version |
| [doc: Improve obex MessageAccess Filter Types doc](https://lore.kernel.org/linux-bluetooth/20261025071533.2567150-1-sadiq@sadiqpk.org/) | Mohammed Sadiq | Independent | 1 | Initial version |
| [mgmt-tester: Add LL Privacy tests for a device's changed IRK](https://lore.kernel.org/linux-bluetooth/20261024004732.57922-1-turbine.bmw@gmail.com/) | Brandon Williams | Independent | 1 | Initial version |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [Plans for Periodic Advertising with Responses (PAwR) in kernel/BlueZ?](https://lore.kernel.org/linux-bluetooth/BR2PR01MB9652538FB65DC582F4A6C4DE80BA672@BR2PR01MB965253.eurprd01.prod.exchangelabs.com/) | Schober Roland | 2 messages |
| [Reported Bluez vulnerabilities](https://lore.kernel.org/linux-bluetooth/2DD1304A-FC44-4D84-BD11-7B76055400CB@nozominetworks.com/) | Alexandro Calò | 1 message |
| [[BUG] Bluetooth: btmtk: MT7902 does not recover from firmware assert; subsys res...](https://lore.kernel.org/linux-bluetooth/20261025120328.1312536-1-ismailtarim7@gmail.com/) | Ismail Tarim | 1 message |
| [mediatek MT7925: update bluetooth firmware to 20261016233221](https://lore.kernel.org/linux-bluetooth/20261020061801.631786-1-chris.lu@mediatek.com/) | Chris Lu | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Bluetooth: Create debugfs directory before running selftests](https://lore.kernel.org/linux-bluetooth/pm-bluetooth-objects-candidate-0188-v11-36d2c5e734fec40a3363@gmail.com/) | v2->v3 |
| [Bluetooth: L2CAP: Protect the receive reject-list lookup](https://lore.kernel.org/linux-bluetooth/pm-bluetooth-objects-candidate-0157-v8-a3b1b1bb30aa6b263b32@gmail.com/) | v1->v2 |
| [Bluetooth: RFCOMM: hold the listener across child teardown](https://lore.kernel.org/linux-bluetooth/tencent_D6C2C07E8FD8FC290CA9F9AB237DAE4CE505@qq.com/) | v1->v2 |
| [Bluetooth: btmtk: drop zero-length ISO packets from endpoint padding](https://lore.kernel.org/linux-bluetooth/20261022032150.2213479-2-chris.lu@mediatek.com/) | v3->v4 |
| [Bluetooth: btmtk: fix ISO data reception](https://lore.kernel.org/linux-bluetooth/20261022032150.2213479-1-chris.lu@mediatek.com/) | v3->v4 |
| [Bluetooth: btmtk: remove redundant memory barrier with helper](https://lore.kernel.org/linux-bluetooth/20261023093645.4669-1-abo@medichon.fr/) | v1->v2 |
| [Bluetooth: hci_sync: re-enable legacy advertising on resume](https://lore.kernel.org/linux-bluetooth/20261020105150.2863631-1-valentin.kindschi@fiveco.ch/) | v6->v7->v8 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 36 |
| Chris Lu | MediaTek | 13 |
| Cen Zhang | Independent | 11 |
| christian.koever-draxl | Independent | 8 |
| Brandon Williams | Independent | 7 |
| Kevin Dewald | Independent | 6 |
| Valentin Kindschi | Independent | 6 |
| Tobias Wilken | Independent | 4 |
| Binbin Deng | Independent | 3 |
| Mohammed Sadiq | Independent | 3 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: hci_core: Initialize IRK before publication](https://lore.kernel.org/linux-bluetooth/179252041102.143064.3010303850825539804.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_core: Initialize LTK before publication](https://lore.kernel.org/linux-bluetooth/179252040952.143064.9151877128900606863.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: re-enable legacy advertising on resume](https://lore.kernel.org/linux-bluetooth/179252040802.143064.15180267545340405578.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_core: Initialize link key before publication](https://lore.kernel.org/linux-bluetooth/179252040678.143064.16490854409353371253.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_core: Fix queuing rx_work while workqueue is drained](https://lore.kernel.org/linux-bluetooth/179278923956.1268720.15284721723706023982.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtk: remove redundant memory barrier with helper](https://lore.kernel.org/linux-bluetooth/179278923809.1268720.9672691636919611279.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel: fix buffer over-read in fw payload](https://lore.kernel.org/linux-bluetooth/179278923631.1268720.7892798923940223357.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: Hold incoming data until encryption key size is know](https://lore.kernel.org/linux-bluetooth/179278923481.1268720.9107027824998220837.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: Allow COMPILE_TEST without ACPI](https://lore.kernel.org/linux-bluetooth/179278923331.1268720.10547122704757097502.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_event: Clear explicit connect state on LE connection](https://lore.kernel.org/linux-bluetooth/179278923181.1268720.16511882069578397245.git-patchwork-notify@kernel.org/)
- [Bluetooth: MGMT: Return RFKILLED for Set Powered on a blocked controll](https://lore.kernel.org/linux-bluetooth/179279341105.1294506.2700531975523429266.git-patchwork-notify@kernel.org/)
- [Bluetooth: qca: Fix the WCN3950 NVM baud rate offset](https://lore.kernel.org/linux-bluetooth/179279340956.1294506.15428171878126640467.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: Protect resolving-list lookups](https://lore.kernel.org/linux-bluetooth/179279340798.1294506.10569724909880961113.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtk: fix ISO data reception](https://lore.kernel.org/linux-bluetooth/179279340621.1294506.18194273796007140982.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [monitor: Fix legacy SCAN_RSP PDU type names](https://lore.kernel.org/linux-bluetooth/179242260727.2707801.480049428181551124.git-patchwork-notify@kernel.org/)
- [Fix use-after-free in GATT client discovery](https://lore.kernel.org/linux-bluetooth/179242260603.2707801.7989097154493120709.git-patchwork-notify@kernel.org/)
- [a2dp: Remove duplicate check in transport_cb](https://lore.kernel.org/linux-bluetooth/179250301327.3738467.14591299268160844343.git-patchwork-notify@kernel.org/)
- [emulator: Avoid variable length array in send_cmd](https://lore.kernel.org/linux-bluetooth/179250301177.3738467.15349770626091050740.git-patchwork-notify@kernel.org/)
- [obexd: Handle message read status change events](https://lore.kernel.org/linux-bluetooth/179279401388.1297354.3202289018145725539.git-patchwork-notify@kernel.org/)
- [mesh: Fix Command Disallowed on random address change in generic IO](https://lore.kernel.org/linux-bluetooth/179279401231.1297354.6966004828861249806.git-patchwork-notify@kernel.org/)
- [doc: Add CONFIG_RFKILL to the tester kernel config](https://lore.kernel.org/linux-bluetooth/179279401107.1297354.6783483439385343291.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- None recorded this week.

---

## Company Focus Areas

### Independent Contributors

- [Bluetooth: make the Amlogic W1 (W155S2) usable](https://lore.kernel.org/linux-bluetooth/20261025192338.209574-1-christian.koever-draxl@student.uibk.ac.at/)
- [Bluetooth: btusb: disable by default Qualcomm multi-subsystem](https://lore.kernel.org/linux-bluetooth/50f92fe870de717fca6368e750e0a6cbc8f46597.1792683340.git.pabeni@redhat.com/)
- [Bluetooth: SMP: distribute the identity address when bonding](https://lore.kernel.org/linux-bluetooth/20261024112435.247650-1-turbine.bmw@gmail.com/)
- [Bluetooth: qca: Fix the WCN3950 NVM baud rate offset](https://lore.kernel.org/linux-bluetooth/20261021195112.41138-1-me@michaelmcallister.org/)

### Intel

- [Run the testers under User Mode Linux with time travel](https://lore.kernel.org/linux-bluetooth/20261022154701.3959500-1-luiz.dentz@gmail.com/)
- [Bluetooth: L2CAP: Hold incoming data until encryption key size is known](https://lore.kernel.org/linux-bluetooth/20261022154621.3958803-2-luiz.dentz@gmail.com/)
- [Bluetooth: btintel: Add TOP silent reset hooks](https://lore.kernel.org/linux-bluetooth/20261023094033.212251-1-chandrashekar.devegowda@intel.com/)
- [Bluetooth: btintel: check FIPS status before firmware download](https://lore.kernel.org/linux-bluetooth/20261021130424.3042597-1-kiran.k@intel.com/)

### MediaTek

- [Bluetooth: btmtk: fix ISO data reception](https://lore.kernel.org/linux-bluetooth/20261021084337.1515468-1-chris.lu@mediatek.com/)
- [Bluetooth: btmtk: fix ISO data reception](https://lore.kernel.org/linux-bluetooth/20261022032150.2213479-1-chris.lu@mediatek.com/)
- [Bluetooth: btmtk: fix ISO data reception](https://lore.kernel.org/linux-bluetooth/20261021072356.1449539-1-chris.lu@mediatek.com/)
- [mediatek MT7925: update bluetooth firmware to 20261016233221](https://lore.kernel.org/linux-bluetooth/20261020061801.631786-1-chris.lu@mediatek.com/)
