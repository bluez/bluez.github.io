---
title: "linux-bluetooth Weekly Report - Week 42"
date: 2026-10-18
summary: "Total messages: 402 (256 human, 146 CI/bot)"
draft: false
---

**Total messages: 402 (256 human, 146 CI/bot)**

Note: Of the 402 messages, 256 are human-generated, 146 are CI/bot (bluez.test.bot: 98, patchwork-bot+bluetooth: 25, BluezTestBot: 10, syzbot: 4, kernel test robot: 3, bugzilla-daemon: 2, github-actions[bot]: 2, patchwork-bot+netdevbpf: 1, Sasha Levin: 1).

---

## Summary
During week 42 (12 - 18 October 2026) the linux-bluetooth mailing list carried 402 messages, 256 from contributors and 146 from CI and bots. There were 126 human-initiated threads: 79 kernel patch series, 42 BlueZ userspace series and 5 discussions or reports. 25 patches were applied via patchwork and 12 commits were pushed to bluez repositories. The most active contributor was Luiz Augusto von Dentz (Intel) with 27 messages. 17 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: btintel_pcie: Add initial YoYo debug support](https://lore.kernel.org/linux-bluetooth/20261013104416.26143-1-ajay.k.v@intel.com/) | Ajay KV | Intel | 3 | Initial version |
| [Bluetooth: L2CAP: Reject mode changes on connected channels](https://lore.kernel.org/linux-bluetooth/20261013153720.2635387-1-oss@fourdim.xyz/) | Siwei Zhang | Independent | 6 | Version 4 |
| [Bluetooth: btmtk: fix ISO data reception](https://lore.kernel.org/linux-bluetooth/20261015081450.1241194-1-chris.lu@mediatek.com/) | Chris Lu | MediaTek | 3 | Version 2 |
| [Bluetooth: btintel_pcie: Validate the YoYo DEBUG_INFO TLV](https://lore.kernel.org/linux-bluetooth/20261015110218.22585-2-ajay.k.v@intel.com/) | Ajay KV | Intel | 3 | Version 4 |
| [Bluetooth: add hardware rfkill handling](https://lore.kernel.org/linux-bluetooth/20261015160215.1658054-1-aluvala.sai.teja@intel.com/) | Sai Teja Aluvala | Intel | 2 | Version 7 |
| [Bluetooth: add hardware rfkill handling](https://lore.kernel.org/linux-bluetooth/20261016025921.1719986-1-aluvala.sai.teja@intel.com/) | Sai Teja Aluvala | Intel | 2 | Version 10 |
| [Bluetooth: L2CAP: tolerate zero-ident LE credit indications](https://lore.kernel.org/linux-bluetooth/20261013031943.489829-1-cochcoder@proton.me/) | Kyle Pepper | Independent | 1 | Initial version |
| [Bluetooth: add hardware rfkill handling](https://lore.kernel.org/linux-bluetooth/20261014061947.1238279-1-aluvala.sai.teja@intel.com/) | Sai Teja Aluvala | Intel | 2 | Version 3 |
| [Bluetooth: add hardware rfkill handling](https://lore.kernel.org/linux-bluetooth/20261014082650.1270679-1-aluvala.sai.teja@intel.com/) | Sai Teja Aluvala | Intel | 2 | Version 4 |
| [Bluetooth: add hardware rfkill handling](https://lore.kernel.org/linux-bluetooth/20261014165156.1413500-1-aluvala.sai.teja@intel.com/) | Sai Teja Aluvala | Intel | 2 | Version 5 |
| [Bluetooth: add hardware rfkill handling](https://lore.kernel.org/linux-bluetooth/20261014172114.1426239-1-aluvala.sai.teja@intel.com/) | Sai Teja Aluvala | Intel | 2 | Version 6 |
| [Bluetooth: add hardware rfkill handling](https://lore.kernel.org/linux-bluetooth/20261015175036.1690457-1-aluvala.sai.teja@intel.com/) | Sai Teja Aluvala | Intel | 2 | Version 8 |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [HID: hidraw: Encapsulate struct hidraw and make hidraw.h private](https://lore.kernel.org/linux-bluetooth/20261014051326.3784498-1-dmitry.torokhov@gmail.com/) | Dmitry Torokhov | Independent | 5 | Initial version |
| [device_schedule_reprobe(): core helper and conversions](https://lore.kernel.org/linux-bluetooth/cover.1792203271.git.daniel@makrotopia.org/) | Daniel Golle | Independent | 4 | Version 4 |
| [CVE-2026-63974, CVE-2026-98297: backport fix series](https://lore.kernel.org/linux-bluetooth/20261016021047.16461-1-artem@trailofbits.com/) | Artem Dinaburg | Independent | 2 | Initial version |
| [nvmem: Add UEFI variable NVMEM provider](https://lore.kernel.org/linux-bluetooth/20261014-b4-nvmem-efivar-v1-2-187c85f65018@oss.qualcomm.com/) | Abel Vesa | Qualcomm | 5 | Initial version |
| [monitor: Add Minimum Supported Connection Interval](https://lore.kernel.org/linux-bluetooth/20261013140255.521668-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 2 | Initial version |
| [nvmem: Add a UEFI variable backed NVMEM provider](https://lore.kernel.org/linux-bluetooth/20261014-b4-nvmem-efivar-v1-0-187c85f65018@oss.qualcomm.com/) | Abel Vesa | Qualcomm | 5 | Initial version |
| [HID: Hardening report validation and unnumbered report handling](https://lore.kernel.org/linux-bluetooth/20261012-hid-core-report-validation-v1-0-e0dd5cb60b2e@gmail.com/) | Dmitry Torokhov | Independent | 9 | Initial version |
| [asha: Defer BR/EDR inquiry while streaming](https://lore.kernel.org/linux-bluetooth/20261013035348.525335-1-cochcoder@proton.me/) | Kyle Pepper | Independent | 1 | Initial version |
| [asha: use robust streaming connection parameters](https://lore.kernel.org/linux-bluetooth/20261013035111.522738-1-cochcoder@proton.me/) | Kyle Pepper | Independent | 1 | Initial version |
| [mgmt-tester: Add LL Privacy host-resolved RPA scan checks](https://lore.kernel.org/linux-bluetooth/20261014181153.1559666-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 1 | Initial version |
| [shared/asha: Cancel callbacks before resetting the device](https://lore.kernel.org/linux-bluetooth/20261015045525.66971-1-cochcoder@proton.me/) | Kyle Pepper | Independent | 2 | Initial version |
| [shared/asha: prime volume before starting audio](https://lore.kernel.org/linux-bluetooth/20261013034613.516771-1-cochcoder@proton.me/) | Kyle Pepper | Independent | 1 | Initial version |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [[GIT PULL] bluetooth 2026-10-12](https://lore.kernel.org/linux-bluetooth/20261012210758.275556-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 3 messages |
| [[GIT PULL] bluetooth-next 2026-10-14](https://lore.kernel.org/linux-bluetooth/20261014184327.1648397-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 2 messages |
| [[RESEND v1] Bluetooth: btintel_pcie: Add PCI ID for Titan Lake](https://lore.kernel.org/linux-bluetooth/20261013093650.423572-1-catherine.l@intel.com/) | Catherine L | 2 messages |
| [[RESEND v1] Bluetooth: btusb: annotate Intel Otter Peak 2 USB ID](https://lore.kernel.org/linux-bluetooth/20261013092128.417705-1-catherine.l@intel.com/) | Catherine L | 2 messages |
| [[BUG] btmtk: MT7925 (0e8d:e025) firmware ASSERT in sys_log_interface_emi.c #1185...](https://lore.kernel.org/linux-bluetooth/aIInPl7g7dGa1ySgQwHytJmvMjs9REEFRg37v2cHI_wVJB7-yXeJyH6OHIGGkvJVxlmNBdBLmu5mh15kd16JgHUVeBktDvoaSBPelTrpXLU=@proton.me/) | overfion | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Bluetooth: Add HCI interface for HW rfkill events](https://lore.kernel.org/linux-bluetooth/20261016025921.1719986-2-aluvala.sai.teja@intel.com/) | v3->v4->v5->v6->v7->v8->v9->v10 |
| [Bluetooth: L2CAP: Keep credits from completing security upgrades](https://lore.kernel.org/linux-bluetooth/20261015181624.48318-1-cochcoder@proton.me/) | v1->v3 |
| [Bluetooth: L2CAP: tolerate zero-ident LE credit indications](https://lore.kernel.org/linux-bluetooth/20261015052751.137705-1-cochcoder@proton.me/) | v1->v2 |
| [Bluetooth: MGMT: Serialize power-on with power-off completion](https://lore.kernel.org/linux-bluetooth/pm-bluetooth-objects-candidate-0063-v11-a70581b6877e5fe118a3@gmail.com/) | v1->v2 |
| [Bluetooth: add hardware rfkill handling](https://lore.kernel.org/linux-bluetooth/20261016025921.1719986-1-aluvala.sai.teja@intel.com/) | v3->v4->v5->v6->v7->v8->v9->v10 |
| [Bluetooth: btintel_pcie: Add initial YoYo debug support](https://lore.kernel.org/linux-bluetooth/20261015115431.27456-1-ajay.k.v@intel.com/) | v1->v2->v3->v4 |
| [Bluetooth: btintel_pcie: guard debug dump before hdev setup](https://lore.kernel.org/linux-bluetooth/20261013125241.1230408-1-an.wu@canonical.com/) | v1->v2 |
| [Bluetooth: btmtk: drop zero-length ISO packets from endpoint padding](https://lore.kernel.org/linux-bluetooth/20261015081450.1241194-2-chris.lu@mediatek.com/) | v1->v2 |
| [Bluetooth: btmtk: fix ISO data reception](https://lore.kernel.org/linux-bluetooth/20261015081450.1241194-1-chris.lu@mediatek.com/) | v1->v2 |
| [Bluetooth: hci_qca: Reopen port after power on for QCA2066](https://lore.kernel.org/linux-bluetooth/20261016022302.4003647-1-shuai.zhang@oss.qualcomm.com/) | v1->v2 |
| [Bluetooth: hci_sync: scan unfiltered for host-resolved RPAs](https://lore.kernel.org/linux-bluetooth/20261014051600.408746-1-cochcoder@proton.me/) | v1->v2 |
| [Bluetooth: l2cap: prefer compatible local LE intervals](https://lore.kernel.org/linux-bluetooth/20261015181041.42873-1-cochcoder@proton.me/) | v2->v3 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 27 |
| Kyle Pepper | Independent | 26 |
| Sai Teja Aluvala | Intel | 25 |
| Dmitry Torokhov | Independent | 22 |
| cochcoder | Independent | 19 |
| Ajay KV | Intel | 18 |
| Cen Zhang | Independent | 10 |
| Loic Poulain | Qualcomm | 9 |
| Chris Lu | MediaTek | 7 |
| Siwei Zhang | Independent | 6 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: btmtk: Add MT7928 support](https://lore.kernel.org/linux-bluetooth/179190120801.334087.12991106842776362785.git-patchwork-notify@kernel.org/)
- [Bluetooth: MSFT: Serialize handle map cleanup with event processing](https://lore.kernel.org/linux-bluetooth/179190120661.334087.7472120913013005982.git-patchwork-notify@kernel.org/)
- [Bluetooth: MGMT: Allow connection rate request as peripheral](https://lore.kernel.org/linux-bluetooth/179190120527.334087.1616532744657945133.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: annotate Intel Otter Peak 2 USB ID](https://lore.kernel.org/linux-bluetooth/179190420626.367533.9204356092652177402.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: Add PCI ID for Titan Lake](https://lore.kernel.org/linux-bluetooth/179190420502.367533.6643573344156279406.git-patchwork-notify@kernel.org/)
- [Bluetooth: Fix the LE Read Connection Interval response layout](https://lore.kernel.org/linux-bluetooth/179199841251.2868755.14605653330503918734.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: Reject signalling responses in invalid states](https://lore.kernel.org/linux-bluetooth/179199841101.2868755.9541484050072201773.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: scan unfiltered for host-resolved RPAs](https://lore.kernel.org/linux-bluetooth/179199840951.2868755.15045268904522230410.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: Reject mode changes on connected channels](https://lore.kernel.org/linux-bluetooth/179199840801.2868755.12692933554278230678.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_event: Fix LE link drop on remote features command stat](https://lore.kernel.org/linux-bluetooth/179199840677.2868755.4119305743244539802.git-patchwork-notify@kernel.org/)
- [net: protocol: use assign_bit() where applicable](https://lore.kernel.org/linux-bluetooth/179200392701.2906069.4708864552723867241.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: Add USB ID 13d3:3631 for MediaTek MT7925](https://lore.kernel.org/linux-bluetooth/179200392577.2906069.10139994552498838632.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: Add initial YoYo debug support](https://lore.kernel.org/linux-bluetooth/179207160627.3441573.10441193801394049903.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: Fix invalid Supervision_Timeout in LE Set Default](https://lore.kernel.org/linux-bluetooth/179209320651.4073732.8455195991465676464.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_event: strip Broadcom vendor bits from legacy adv repor](https://lore.kernel.org/linux-bluetooth/179209320528.4073732.6498666167619250326.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_nokia: use skb_put_padto()](https://lore.kernel.org/linux-bluetooth/179216521626.826981.6704041898422015598.git-patchwork-notify@kernel.org/)
- [Bluetooth: add hardware rfkill handling](https://lore.kernel.org/linux-bluetooth/179216521476.826981.15138353307358957117.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [shared/rap: Track RAS CCC state per connection](https://lore.kernel.org/linux-bluetooth/179184181126.4115061.339294852166421514.git-patchwork-notify@kernel.org/)
- [bearer: Cancel disconn_timer upon btd_bearer_disconnected](https://lore.kernel.org/linux-bluetooth/179184180976.4115061.1271298320262675481.git-patchwork-notify@kernel.org/)
- [mgmt-tester: Add simultaneous discovery stop tests](https://lore.kernel.org/linux-bluetooth/179184180826.4115061.4265843541074534796.git-patchwork-notify@kernel.org/)
- [emulator: Free hooks in btdev_destroy](https://lore.kernel.org/linux-bluetooth/179184180676.4115061.4860406922959655412.git-patchwork-notify@kernel.org/)
- [unit: test-rap: disable optimization to speed up compilation](https://lore.kernel.org/linux-bluetooth/179184180552.4115061.17190692838137610653.git-patchwork-notify@kernel.org/)
- [test: functional: connect instead of pairing a bonded BAP device](https://lore.kernel.org/linux-bluetooth/179199841751.2868755.15941691793347495599.git-patchwork-notify@kernel.org/)
- [monitor: Add Minimum Supported Connection Interval](https://lore.kernel.org/linux-bluetooth/179199841601.2868755.6857291282729326451.git-patchwork-notify@kernel.org/)
- [mgmt-tester: Add LL Privacy host-resolved RPA scan checks](https://lore.kernel.org/linux-bluetooth/179209320976.4073732.17798114015654671478.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- [test: functional: change the HoG connection rate f...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F7428ca-9dc7e4@github.com/)
- [monitor: Add Minimum Supported Connection Interval](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1184798%2F000000-9db197@github.com/)
- [test: functional: connect instead of pairing a bon...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1184865%2F000000-6d647f@github.com/)
- [asha: Notify connection interval changes](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1185115%2F000000-3ae2bb@github.com/)
- [asha: use robust streaming connection parameters](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1184361%2F000000-4577d1@github.com/)
- [asha: Defer BR/EDR inquiry while streaming](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1184362%2F000000-9ab75f@github.com/)
- [asha: allow LE 2M PHY on the audio channel](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1184360%2F000000-9bfa8e@github.com/)
- [shared/asha: prime volume before starting audio](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1184354%2F000000-b220d7@github.com/)
- [shared/asha: send STOP without waiting for a response](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1184353%2F000000-e58f2b@github.com/)
- [mgmt-tester: Add LL Privacy host-resolved RPA scan...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1185788%2F000000-9fc799@github.com/)
- [mgmt-tester: Add host-resolved RPA scan checks](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1185254%2F000000-841280@github.com/)
- [l2cap-tester: Check compatible interval preferences](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1186110%2F000000-a41d01@github.com/)

---

## Company Focus Areas

### Independent Contributors

- [Bluetooth: L2CAP: Reject mode changes on connected channels](https://lore.kernel.org/linux-bluetooth/20261013153720.2635387-1-oss@fourdim.xyz/)
- [HID: hidraw: Encapsulate struct hidraw and make hidraw.h private](https://lore.kernel.org/linux-bluetooth/20261014051326.3784498-1-dmitry.torokhov@gmail.com/)
- [device_schedule_reprobe(): core helper and conversions](https://lore.kernel.org/linux-bluetooth/cover.1792203271.git.daniel@makrotopia.org/)
- [CVE-2026-63974, CVE-2026-98297: backport fix series](https://lore.kernel.org/linux-bluetooth/20261016021047.16461-1-artem@trailofbits.com/)

### Intel

- [Bluetooth: btintel_pcie: Add initial YoYo debug support](https://lore.kernel.org/linux-bluetooth/20261013104416.26143-1-ajay.k.v@intel.com/)
- [Bluetooth: btintel_pcie: Validate the YoYo DEBUG_INFO TLV](https://lore.kernel.org/linux-bluetooth/20261015110218.22585-2-ajay.k.v@intel.com/)
- [Bluetooth: add hardware rfkill handling](https://lore.kernel.org/linux-bluetooth/20261015160215.1658054-1-aluvala.sai.teja@intel.com/)
- [Bluetooth: add hardware rfkill handling](https://lore.kernel.org/linux-bluetooth/20261016025921.1719986-1-aluvala.sai.teja@intel.com/)

### Qualcomm

- [nvmem: Add UEFI variable NVMEM provider](https://lore.kernel.org/linux-bluetooth/20261014-b4-nvmem-efivar-v1-2-187c85f65018@oss.qualcomm.com/)
- [arm64: dts: qcom: glymur-crd: Source MAC addresses from a UEFI variable](https://lore.kernel.org/linux-bluetooth/20261014-b4-nvmem-efivar-v1-5-187c85f65018@oss.qualcomm.com/)
- [nvmem: Add a UEFI variable backed NVMEM provider](https://lore.kernel.org/linux-bluetooth/20261014-b4-nvmem-efivar-v1-0-187c85f65018@oss.qualcomm.com/)
- [Bluetooth: hci_qca: Reopen port after power on for QCA2066](https://lore.kernel.org/linux-bluetooth/20261016022302.4003647-1-shuai.zhang@oss.qualcomm.com/)

### MediaTek

- [Bluetooth: btmtk: fix ISO data reception](https://lore.kernel.org/linux-bluetooth/20261015081450.1241194-1-chris.lu@mediatek.com/)
- [Bluetooth: btmtk: fix ISO data reception](https://lore.kernel.org/linux-bluetooth/20261013081823.817996-1-chris.lu@mediatek.com/)
