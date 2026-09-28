---
title: "linux-bluetooth Weekly Report - Week 39"
date: 2026-09-27
summary: "Total messages: 356 (255 human, 101 CI/bot)"
draft: false
---

**Total messages: 356 (255 human, 101 CI/bot)**

Note: Of the 356 messages, 255 are human-generated, 101 are CI/bot (bluez.test.bot: 59, patchwork-bot+bluetooth: 19, BluezTestBot: 14, github-actions[bot]: 3, patchwork-bot+netdevbpf: 2, Sasha Levin: 1, bugzilla-daemon: 1, syzbot: 1, kernel test robot: 1).

---

## Summary
During week 39 (21 - 27 September 2026) the linux-bluetooth mailing list carried 356 messages, 255 from contributors and 101 from CI and bots. There were 78 human-initiated threads: 40 kernel patch series, 34 BlueZ userspace series and 4 discussions or reports. 19 patches were applied via patchwork and 21 commits were pushed to bluez repositories. The most active contributor was Luiz Augusto von Dentz (Intel) with 71 messages. 8 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: Add AIC8800D80 SDIO firmware loader and UART HCI](https://lore.kernel.org/linux-bluetooth/cover.1790235697.git.yanli.yang@bedmex.com/) | Yanli Yang | Independent | 3 | Version 5 |
| [Bluetooth: btintel_pcie: fix stale cache in set_dxstate fallback check](https://lore.kernel.org/linux-bluetooth/20260926085302.2879093-1-ravindra@intel.com/) | Ravindra | Intel | 4 | Version 4 |
| [Bluetooth: btintel: security fixes](https://lore.kernel.org/linux-bluetooth/cover.1790053452.git.chandrashekar.devegowda@intel.com/) | Chandrashekar Devegowda | Intel | 3 | Initial version |
| [Bluetooth: hci_intel: support the CcP controller (X1 Fold Gen1)](https://lore.kernel.org/linux-bluetooth/20260925234043.707679-1-caiyu7372@gmail.com/) | Cai Yu | Independent | 4 | Initial version |
| [Bluetooth: Add AIC8800D80 support](https://lore.kernel.org/linux-bluetooth/cover.1789974593.git.yanli.yang@bedmex.com/) | Yanli Yang | Independent | 3 | Version 3 |
| [Bluetooth: backport CVE-2023-53762 to 6.1.y](https://lore.kernel.org/linux-bluetooth/20260922194838.26223-1-artem@trailofbits.com/) | Artem Dinaburg | Independent | 2 | Initial version |
| [Bluetooth: 6LoWPAN lifecycle fixes](https://lore.kernel.org/linux-bluetooth/pm-series-6lowpan-lifecycle-82fab5876048c8c9503c-0@gmail.com/) | Cen Zhang | Independent | 5 | Initial version |
| [Bluetooth: Serialize TX scheduling with teardown](https://lore.kernel.org/linux-bluetooth/cover.1790407061.git.nicoyip.dev@gmail.com/) | Chengfeng Ye | Independent | 2 | Initial version |
| [Bluetooth: btintel: read ROM debug registers on FW download failure](https://lore.kernel.org/linux-bluetooth/20260921054830.2770046-1-ravindra@intel.com/) | Ravindra | Intel | 1 | Version 3 |
| [Bluetooth: L2CAP: drain channel timers on connection teardown](https://lore.kernel.org/linux-bluetooth/pm-series-6lowpan-lifecycle-82fab5876048c8c9503c-3@gmail.com/) | Cen Zhang | Independent | 5 | Initial version |
| [Bluetooth: L2CAP: ignore close requests for deleted channels](https://lore.kernel.org/linux-bluetooth/pm-series-6lowpan-lifecycle-82fab5876048c8c9503c-1@gmail.com/) | Cen Zhang | Independent | 5 | Initial version |
| [Bluetooth: btintel: validate DDC record lengths](https://lore.kernel.org/linux-bluetooth/20260922130312.24749-1-aluvala.sai.teja@intel.com/) | Sai Teja Aluvala | Intel | 1 | Version 2 |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Add HoG functional tests and shared/hog](https://lore.kernel.org/linux-bluetooth/20260924223046.605543-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 20 | Version 4 |
| [hfp-hf: Enhance HFP Hands-Free profile support](https://lore.kernel.org/linux-bluetooth/20260925132528.3361517-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 12 | Initial version |
| [Add HID over GATT functional tests](https://lore.kernel.org/linux-bluetooth/20260924154631.369299-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 9 | Version 3 |
| [Add HID over GATT functional tests](https://lore.kernel.org/linux-bluetooth/20260924135601.330277-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 8 | Version 2 |
| [Add HID over GATT functional tests](https://lore.kernel.org/linux-bluetooth/20260923193157.249636-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 7 | Initial version |
| [Add true wireless BAP broadcast tests](https://lore.kernel.org/linux-bluetooth/20260921210123.3690449-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 6 | Initial version |
| [mgmt/device: report link security level to D-Bus clients](https://lore.kernel.org/linux-bluetooth/20260925102914.3282319-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 6 | Version 3 |
| [org.bluez.LEAdvertisement: Add broadcast name support](https://lore.kernel.org/linux-bluetooth/20260924151720.1769259-1-as@discnull.de/) | Alexander Sarmanow | Independent | 2 | Initial version |
| [audio/avrcp: Poll GetPlayStatus when position changed event unsupported](https://lore.kernel.org/linux-bluetooth/20260923080003.317019-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 1 | Initial version |
| [workqueue: add support for module-owned work](https://lore.kernel.org/linux-bluetooth/pm-series-6lowpan-lifecycle-82fab5876048c8c9503c-2@gmail.com/) | Cen Zhang | Independent | 5 | Initial version |
| [audio/avrcp: Add AvrcpVersion config option](https://lore.kernel.org/linux-bluetooth/20260922150030.26340-1-pvbozhko@salutedevices.com/) | Pavel Bozhko | Independent | 1 | Initial version |
| [audio/avrcp: Add AvrcpVersion config option](https://lore.kernel.org/linux-bluetooth/20260923091827.4496-1-pvbozhko@salutedevices.com/) | Pavel Bozhko | Independent | 1 | Version 2 |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [[GIT PULL] bluetooth 2026-09-21](https://lore.kernel.org/linux-bluetooth/20260921135807.3459373-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 2 messages |
| [[REGRESSION] Bluetooth: ASUS USB-BT540 (0b05:1bef) fails after BTUSB_REALTEK qui...](https://lore.kernel.org/linux-bluetooth/be59323c-d616-4ce9-b886-e1a7be1a7b7e@niemelat.fi/) | Niko | 2 messages |
| [[BUG] Bluetooth: rfcomm: possible circular locking dependency in the SAK vs. con...](https://lore.kernel.org/linux-bluetooth/6572ca06.97a1.1a0c36dcb5f.Coremail.firefly0158@163.com/) | CJ | 1 message |
| [[GIT PULL] power sequencing dependencies for v7.4-rc1](https://lore.kernel.org/linux-bluetooth/20260921093529.45596-1-bartosz.golaszewski@oss.qualcomm.com/) | Bartosz Golaszewski | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Add HID over GATT functional tests](https://lore.kernel.org/linux-bluetooth/20260924154631.369299-1-luiz.dentz@gmail.com/) | v1->v2->v3 |
| [Bluetooth: Add AIC8800D80 SDIO firmware loader and UART HCI](https://lore.kernel.org/linux-bluetooth/cover.1790235697.git.yanli.yang@bedmex.com/) | v4->v5 |
| [Bluetooth: SCO: serialise sco_conn lifetime against sco_recv_scodata()](https://lore.kernel.org/linux-bluetooth/20260926212145.1343318-1-qwe.aldo@gmail.com/) | v3->v4 |
| [audio/avrcp: Add AvrcpVersion config option](https://lore.kernel.org/linux-bluetooth/20260923091827.4496-2-pvbozhko@salutedevices.com/) | v1->v2 |
| [audio/avrcp: Poll GetPlayStatus when position changed event unsupporte](https://lore.kernel.org/linux-bluetooth/20260925141047.3397212-1-frederic.danis@collabora.com/) | v1->v2 |
| [dt-bindings: vendor-prefixes: Add AIC Semiconductor](https://lore.kernel.org/linux-bluetooth/a9adff17461c1e66d645d2d0edb35a05a536e1a7.1790235697.git.yanli.yang@bedmex.com/) | v4->v5 |
| [input: Reset report map state on detach](https://lore.kernel.org/linux-bluetooth/CACmoRBZ-pHuzAUrGK39O_1s1xkbvH5GubRnqtuOELU-Cv8Q6uQ@mail.gmail.com/) | v1->v2 |
| [shared/gatt-client: Fix calling destroy after unregistering notify](https://lore.kernel.org/linux-bluetooth/20260924223046.605543-2-luiz.dentz@gmail.com/) | v3->v4 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 71 |
| Frédéric Danis | Collabora | 32 |
| Yanli Yang | Independent | 12 |
| Ravindra | Intel | 10 |
| Cen Zhang | Independent | 8 |
| Chengfeng Ye | Independent | 8 |
| Pavel Bozhko | Independent | 6 |
| Alexander Sarmanow | Independent | 5 |
| Cai Yu | Independent | 5 |
| Bartosz Golaszewski | Independent | 4 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: bnep: fix out-of-bounds reads on short RX/TX frames and con](https://lore.kernel.org/linux-bluetooth/178999981314.3047822.6059852336450565758.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: validate device-supplied DMA indices](https://lore.kernel.org/linux-bluetooth/178999981163.3047822.11881464017430827292.git-patchwork-notify@kernel.org/)
- [Bluetooth: RFCOMM: fix NULL dereference of dlc->session in RFCOMM_CONN](https://lore.kernel.org/linux-bluetooth/178999981014.3047822.12082632672865973363.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel: read ROM debug registers on FW download failure](https://lore.kernel.org/linux-bluetooth/178999980864.3047822.15306584107639595745.git-patchwork-notify@kernel.org/)
- [Bluetooth: use assign_bit() where applicable](https://lore.kernel.org/linux-bluetooth/178999980714.3047822.7600652499809584862.git-patchwork-notify@kernel.org/)
- [Bluetooth: RFCOMM: Reject short EA=0 frames in rfcomm_recv_frame()](https://lore.kernel.org/linux-bluetooth/178999980590.3047822.8989068429457180405.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel: validate DDC record lengths](https://lore.kernel.org/linux-bluetooth/179008921299.4126096.5111723603808643116.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_core: free the HCI ID if naming fails](https://lore.kernel.org/linux-bluetooth/179008921164.4126096.15229522129695848397.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_core: Fix inquiry cache timestamps on 64-bit systems](https://lore.kernel.org/linux-bluetooth/179008921025.4126096.7212004044919126524.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: Add support for Intel Draco](https://lore.kernel.org/linux-bluetooth/179008920839.4126096.16030209434566087844.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel: security fixes](https://lore.kernel.org/linux-bluetooth/179008920691.4126096.131663704074702408.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [adapter: remove the devices from the list before freeing them](https://lore.kernel.org/linux-bluetooth/179000100938.3057876.5753948160387030061.git-patchwork-notify@kernel.org/)
- [mgmt-tester: fix test failures + avoid hidden skipping](https://lore.kernel.org/linux-bluetooth/179000100813.3057876.13874076253271965313.git-patchwork-notify@kernel.org/)
- [bap: Fix use-after-free of device referenced by session](https://lore.kernel.org/linux-bluetooth/179000100690.3057876.11406423888764084551.git-patchwork-notify@kernel.org/)
- [monitor: Search the frames with a pager](https://lore.kernel.org/linux-bluetooth/179000160589.3063941.11987296756450696856.git-patchwork-notify@kernel.org/)
- [Add true wireless BAP broadcast tests](https://lore.kernel.org/linux-bluetooth/179008921688.4126096.7132229331196034449.git-patchwork-notify@kernel.org/)
- [device: Fix NULL pointer dereference in dev_property_get_uuids](https://lore.kernel.org/linux-bluetooth/179009040515.4135593.12444042145585528858.git-patchwork-notify@kernel.org/)
- [obexd/pbap: Fix u128_to_string skipping data[4]](https://lore.kernel.org/linux-bluetooth/179019180738.664822.14639957919248086095.git-patchwork-notify@kernel.org/)
- [client/btpclient: Improve GATT read](https://lore.kernel.org/linux-bluetooth/179019180615.664822.12734945245369501857.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- [a2dp: Fix crash on NULL stream in transport_cb](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1170691%2F000000-ada0e7@github.com/)
- [doc: describe the true wireless broadcast test cases](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1170704%2F000000-959a7d@github.com/)
- [adapter: remove the devices from the list before f...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2Febbb4e-17e624@github.com/)
- [audio/avrcp: Add AvrcpVersion config option](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1171436%2F000000-8d2010@github.com/)
- [input/hog: Cancel pending report requests on detach](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1170874%2F000000-8fb194@github.com/)
- [adapter: remove bondable mode hijacking when setti...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1171262%2F000000-b6b0a7@github.com/)
- [client/gatt: Fix setting descriptor value from scr...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1172525%2F000000-b0c89b@github.com/)
- [audio/avrcp: Poll GetPlayStatus when position chan...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1172004%2F000000-f38719@github.com/)
- [doc/org.bluez.LEAdvertisement: Add broadcast name](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1173237%2F000000-0ac718@github.com/)
- [attrib: Fix unregistering notifications registered...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1173166%2F000000-f191e7@github.com/)
- [shared/gatt-client: Fix calling destroy after unre...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1173252%2F000000-1fc655@github.com/)
- [dbus-common: Use audio-speakers icon for speakers](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1174091%2F000000-bd3485@github.com/)
- [mgmt: Add Security Level Changed event](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1173703%2F000000-8edb2c@github.com/)
- [audio/hfp-hf: Add HFP HF server and SDP record](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1173777%2F000000-d0e147@github.com/)
- [input: Reset report map state on detach](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1173956%2F000000-494109@github.com/)
- [doc/qualification: Add CSIP PICS file](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1173742%2F000000-9ef837@github.com/)
- [doc/qualification: Add MICP PICS file](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1173750%2F000000-419a14@github.com/)
- [doc/qualification: Add VCP PICS file](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1173745%2F000000-9d4632@github.com/)
- [doc/qualification: Add MCP/MCS PICS files](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1173751%2F000000-c88882@github.com/)
- [unit: Test HoG report map reads after reconnect](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1174116%2F000000-269053@github.com/)
- [shared: mainloop: Skip removed mainloop events](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1174578%2F000000-8178da@github.com/)

---

## Company Focus Areas

### Independent Contributors

- [Bluetooth: Add AIC8800D80 SDIO firmware loader and UART HCI](https://lore.kernel.org/linux-bluetooth/cover.1790235697.git.yanli.yang@bedmex.com/)
- [Bluetooth: hci_intel: support the CcP controller (X1 Fold Gen1)](https://lore.kernel.org/linux-bluetooth/20260925234043.707679-1-caiyu7372@gmail.com/)
- [org.bluez.LEAdvertisement: Add broadcast name support](https://lore.kernel.org/linux-bluetooth/20260924151720.1769259-1-as@discnull.de/)
- [Bluetooth: Add AIC8800D80 support](https://lore.kernel.org/linux-bluetooth/cover.1789974593.git.yanli.yang@bedmex.com/)

### Intel

- [Add HoG functional tests and shared/hog](https://lore.kernel.org/linux-bluetooth/20260924223046.605543-1-luiz.dentz@gmail.com/)
- [Add HID over GATT functional tests](https://lore.kernel.org/linux-bluetooth/20260924154631.369299-1-luiz.dentz@gmail.com/)
- [Add HID over GATT functional tests](https://lore.kernel.org/linux-bluetooth/20260924135601.330277-1-luiz.dentz@gmail.com/)
- [Add HID over GATT functional tests](https://lore.kernel.org/linux-bluetooth/20260923193157.249636-1-luiz.dentz@gmail.com/)

### Collabora

- [hfp-hf: Enhance HFP Hands-Free profile support](https://lore.kernel.org/linux-bluetooth/20260925132528.3361517-1-frederic.danis@collabora.com/)
- [mgmt/device: report link security level to D-Bus clients](https://lore.kernel.org/linux-bluetooth/20260925102914.3282319-1-frederic.danis@collabora.com/)
- [audio/avrcp: Poll GetPlayStatus when position changed event unsupported](https://lore.kernel.org/linux-bluetooth/20260923080003.317019-1-frederic.danis@collabora.com/)
- [doc/qualification: Add CSIP PICS file](https://lore.kernel.org/linux-bluetooth/20260925124155.3344025-1-frederic.danis@collabora.com/)

### Qualcomm

- [obexd/pbap: Fix u128_to_string skipping data[4]](https://lore.kernel.org/linux-bluetooth/20260923032957.4133667-1-jinwang.li@oss.qualcomm.com/)
- [Bluetooth: hci_qca: Add WCN clock enable/disable support for Shikra](https://lore.kernel.org/linux-bluetooth/20260925-bt-wcn-clk-enable-v1-0-30bee88c4de4@oss.qualcomm.com/)
- [Bluetooth: hci_qca: Add WCN clock management for pwrseq-based power path](https://lore.kernel.org/linux-bluetooth/20260925-bt-wcn-clk-enable-v1-1-30bee88c4de4@oss.qualcomm.com/)
- [[GIT PULL] power sequencing dependencies for v7.4-rc1](https://lore.kernel.org/linux-bluetooth/20260921093529.45596-1-bartosz.golaszewski@oss.qualcomm.com/)
