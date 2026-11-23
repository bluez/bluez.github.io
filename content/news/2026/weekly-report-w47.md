---
title: "linux-bluetooth Weekly Report - Week 47"
date: 2026-11-22
summary: "Total messages: 673 (502 human, 171 CI/bot)"
draft: false
---

**Total messages: 673 (502 human, 171 CI/bot)**

Note: Of the 673 messages, 502 are human-generated, 171 are CI/bot (bluez.test.bot: 107, patchwork-bot+bluetooth: 48, kernel test robot: 6, bugzilla-daemon: 5, syzbot: 4, patchwork-bot+netdevbpf: 1).

---

## Summary
During week 47 (16 - 22 November 2026) the linux-bluetooth mailing list carried 673 messages, 502 from contributors and 171 from CI and bots. There were 175 human-initiated threads: 106 kernel patch series, 62 BlueZ userspace series and 7 discussions or reports. 48 patches were applied via patchwork and 0 commits were pushed to bluez repositories. The most active contributor was Luiz Augusto von Dentz (Intel) with 171 messages. 20 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: Fixes for issues reported by sashiko.dev](https://lore.kernel.org/linux-bluetooth/20261118191118.318779-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 17 | Version 5 |
| [Bluetooth: Fixes for issues reported by sashiko.dev](https://lore.kernel.org/linux-bluetooth/20261117202032.3848411-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 17 | Version 2 |
| [Bluetooth: Fixes for issues reported by sashiko.dev](https://lore.kernel.org/linux-bluetooth/20261118140518.59878-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 17 | Version 3 |
| [Bluetooth: Fixes for issues reported by sashiko.dev](https://lore.kernel.org/linux-bluetooth/20261118155914.178050-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 17 | Version 4 |
| [Bluetooth: Fixes for issues reported by sashiko.dev](https://lore.kernel.org/linux-bluetooth/20261117185737.3758255-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 16 | Initial version |
| [Bluetooth: Fix work queued while hci_dev_close_sync() drains](https://lore.kernel.org/linux-bluetooth/20261117023344.278269-1-deaner92@yahoo.com/) | Jeremy Dean Clifton | Independent | 3 | Version 2 |
| [Bluetooth: RFCOMM: hold the listener across child teardown](https://lore.kernel.org/linux-bluetooth/tencent_9FE25F20E92F65CD175FF65FC4094FFD4808@qq.com/) | Hang Nan | Independent | 1 | Version 4 |
| [Bluetooth: btrtl: Add firmware format v3 support and RTL8922D](https://lore.kernel.org/linux-bluetooth/20261120082636.3834168-1-hildawu@realtek.com/) | Hilda Wu | Independent | 2 | Version 10 |
| [Bluetooth: btrtl: Fix NULL return on errors in btrtl_initialize()](https://lore.kernel.org/linux-bluetooth/20261119032415.4010732-1-tzungbi@kernel.org/) | Tzung-Bi Shih | Independent | 2 | Version 2 |
| [net: phy: Use the compatibility driver attachment API](https://lore.kernel.org/linux-bluetooth/20261118-device-trust-core-v3-18-d655875c4bfb@nvidia.com/) | Leon Romanovsky | Independent | 31 | Version 3 |
| [Bluetooth: L2CAP: check security before completing a deferred BR/EDR accept](https://lore.kernel.org/linux-bluetooth/20261118213322.60067-1-mohammed.saad.alquraini@gmail.com/) | Mohammed Alquraini | Independent | 1 | Initial version |
| [Bluetooth: btbcm: Add entries for BCM4364B3 UART Bluetooth](https://lore.kernel.org/linux-bluetooth/4a1efe5e-ec67-4caa-bb84-35759e66ef42@gmail.com/) | Jason Perlow | Independent | 1 | Initial version |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [obexd/pbap: Update PSE support from PBAP 1.1 to 1.2](https://lore.kernel.org/linux-bluetooth/20261116090634.1222593-1-jinwang.li@oss.qualcomm.com/) | Jinwang Li | Qualcomm | 20 | Version 3 |
| [Channel Sounding and RAP fixes](https://lore.kernel.org/linux-bluetooth/20261120165510.1858959-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 18 | Version 4 |
| [Channel Sounding and RAP fixes](https://lore.kernel.org/linux-bluetooth/20261118195846.393710-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 16 | Version 2 |
| [Channel Sounding and RAP fixes](https://lore.kernel.org/linux-bluetooth/20261119171625.1014004-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 16 | Version 3 |
| [docs: ioctl-number: update entries](https://lore.kernel.org/linux-bluetooth/20261119053514.255348-1-rdunlap@infradead.org/) | Randy Dunlap | Independent | 12 | Version 2 |
| [monitor: Decode Periodic Advertising with Responses](https://lore.kernel.org/linux-bluetooth/20261120063856.16585-1-rolandschober1968@gmail.com/) | Roland Schober | Independent | 10 | Version 4 |
| [monitor: Decode Periodic Advertising with Responses](https://lore.kernel.org/linux-bluetooth/20261119081621.112623-1-rolandschober1968@gmail.com/) | Roland Schober | Independent | 9 | Version 3 |
| [AVRCP browsing fixes, and browsing and cover art in the target role](https://lore.kernel.org/linux-bluetooth/20261122105731.799090-1-simon.mikuda@streamunlimited.com/) | Simon Mikuda | Independent | 8 | Initial version |
| [monitor: Decode Periodic Advertising with Responses](https://lore.kernel.org/linux-bluetooth/20261119071332.32424-1-rolandschober1968@gmail.com/) | Roland Schober | Independent | 6 | Version 2 |
| [Add tests for security of deferred setup](https://lore.kernel.org/linux-bluetooth/20261120154750.1745643-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 5 | Version 2 |
| [Bearer.LE1: Add ReadRSSI](https://lore.kernel.org/linux-bluetooth/20261117182151.73722-1-kevin@simpleble.org/) | Kevin Dewald | Independent | 4 | Version 5 |
| [monitor: Decode Periodic Advertising with Responses](https://lore.kernel.org/linux-bluetooth/20261117160240.222556-1-rolandschober1968@gmail.com/) | Roland Schober | Independent | 4 | Initial version |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [[Security] Bluetooth: SMP accepts a peer's claimed identity over an RPA link and...](https://lore.kernel.org/linux-bluetooth/CAD37_9j+G03rRiUXCJD6+7ULxnxrc6=cJRBsNogpPs9tuNvR6Q@mail.gmail.com/) | Mohammed | 4 messages |
| [[GIT PULL v2] Bluetooth: btusb: Update Qualcomm QCC2072 and WCN685x 2.0 firmware](https://lore.kernel.org/linux-bluetooth/680aeb35-74d2-478a-a1da-4d70983b7431@oss.qualcomm.com/) | Zijun Hu | 2 messages |
| [[GIT PULL] bluetooth 2026-11-17](https://lore.kernel.org/linux-bluetooth/20261117171516.3560754-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 2 messages |
| [[BUG] Bluetooth: ISO: BIG creation with 1M PHY fails on 0x203e and leaks active ...](https://lore.kernel.org/linux-bluetooth/CABqFBbCA+S_pcKmxqbQtjZOELudcBHK+=wTEngk5Kz5c08BPzQ@mail.gmail.com/) | Kelvin You | 1 message |
| [[BUG] Bluetooth: ISO: PA sync is never terminated on close when BT_DEFER_SETUP i...](https://lore.kernel.org/linux-bluetooth/CABqFBbCRUuiTTi6mRdmjGCHW6dsiFsjCZTtupjuEOTL8TSBWyg@mail.gmail.com/) | Kelvin You | 1 message |
| [[BUG] btintel_pcie: hw exception leaves controller dead (boot_stage 0xd0fb6047) ...](https://lore.kernel.org/linux-bluetooth/CA+mvMuuSaS=s6eYx30n1n7fQwKaX-d=jaCsZwSh7n=VirEAWEQ@mail.gmail.com/) | Kefah T. Issa | 1 message |
| [[Security] Bluetooth: L2CAP: deferred BR/EDR accept bypasses the required BT_SEC...](https://lore.kernel.org/linux-bluetooth/CAD37_9i7A+M9159MoSw8rjAzkGVOagZmgkPrxJsAtQH_7NjGJg@mail.gmail.com/) | Mohammed | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Add tests for security of deferred setup](https://lore.kernel.org/linux-bluetooth/20261120154750.1745643-1-luiz.dentz@gmail.com/) | v1->v2 |
| [Bearer.LE1: Add ReadRSSI](https://lore.kernel.org/linux-bluetooth/20261117182151.73722-1-kevin@simpleble.org/) | v4->v5 |
| [Bluetooth: Fixes for issues reported by sashiko.dev](https://lore.kernel.org/linux-bluetooth/20261118191118.318779-1-luiz.dentz@gmail.com/) | v1->v2->v3->v4->v5 |
| [Bluetooth: RFCOMM: hold the listener across child teardown](https://lore.kernel.org/linux-bluetooth/tencent_9FE25F20E92F65CD175FF65FC4094FFD4808@qq.com/) | v3->v4 |
| [Bluetooth: SMP: Publish root channels after initialization](https://lore.kernel.org/linux-bluetooth/pm-bluetooth-objects-candidate-0184-v12-e80229724d6ad14ca88c-1@gmail.com/) | v4->v5 |
| [Bluetooth: SMP: Serialize root channel updates](https://lore.kernel.org/linux-bluetooth/pm-bluetooth-objects-candidate-0184-v12-e80229724d6ad14ca88c-0@gmail.com/) | v4->v5 |
| [Bluetooth: btbcm: Add entries for BCM4364B3 UART Bluetooth](https://lore.kernel.org/linux-bluetooth/20261122165132.14015-1-jperlow@gmail.com/) | v1->v2 |
| [Bluetooth: hci_serdev: stop write_work before closing the port](https://lore.kernel.org/linux-bluetooth/20261121155648.1151-1-enderaoelyther@gmail.com/) | v1->v2->v3 |
| [Bluetooth: mgmt: Fix read_index_list() buffer overflow](https://lore.kernel.org/linux-bluetooth/20261118191118.318779-2-luiz.dentz@gmail.com/) | v1->v2->v3->v4->v5 |
| [Channel Sounding and RAP fixes](https://lore.kernel.org/linux-bluetooth/20261120165510.1858959-1-luiz.dentz@gmail.com/) | v2->v3->v4 |
| [adapter: Notify adapter drivers of settings changes](https://lore.kernel.org/linux-bluetooth/20261122192955.2329174-1-simon.mikuda@streamunlimited.com/) | v1->v2 |
| [emulator/bthost: Add helpers to test security of deferred setup](https://lore.kernel.org/linux-bluetooth/20261120154750.1745643-2-luiz.dentz@gmail.com/) | v1->v2 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 171 |
| Simon Mikuda | Independent | 49 |
| Roland Schober | Independent | 39 |
| Leon Romanovsky | Independent | 38 |
| Cen Zhang | Independent | 27 |
| Jinwang Li | Qualcomm | 24 |
| Randy Dunlap | Independent | 15 |
| Kevin Dewald | Independent | 10 |
| Zhao Li | Independent | 8 |
| Zijun Hu | Qualcomm | 8 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: 6lowpan: Always consume the skb in chan_recv_cb](https://lore.kernel.org/linux-bluetooth/179485860627.3856541.8397441841963712517.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: clear the SDU before the receive callback](https://lore.kernel.org/linux-bluetooth/179485860503.3856541.15241820341597541824.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_serdev: serialize flush with transmit work](https://lore.kernel.org/linux-bluetooth/179494141677.761488.12705162409776237119.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_mrvl: Leave the serdev port lifetime to hci_serdev](https://lore.kernel.org/linux-bluetooth/179494141527.761488.11110930230675526211.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_mrvl: Fix duplicate serdev open/close](https://lore.kernel.org/linux-bluetooth/179494141377.761488.13075669936833601821.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel: Don't log unsupported debug features as an error](https://lore.kernel.org/linux-bluetooth/179494141227.761488.17080097216959438759.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: return LE credits from recvmsg under the conn lock](https://lore.kernel.org/linux-bluetooth/179494141077.761488.1132043002777278143.git-patchwork-notify@kernel.org/)
- [Bluetooth: Fix work queued while hci_dev_close_sync() drains](https://lore.kernel.org/linux-bluetooth/179494140953.761488.11446208316377511134.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel: Add UEFI standalone static SAR support](https://lore.kernel.org/linux-bluetooth/179501100528.1728928.5021407494750896247.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: Use a reserved ident for L2CAP_LE_CREDITS](https://lore.kernel.org/linux-bluetooth/179501820453.1808349.5157597319638847230.git-patchwork-notify@kernel.org/)
- [Bluetooth: Fixes for issues reported by sashiko.dev](https://lore.kernel.org/linux-bluetooth/179510940978.3231831.6458719198997058051.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: Reject user coredump until firmware is operat](https://lore.kernel.org/linux-bluetooth/179511300528.3261689.3188065362433475885.git-patchwork-notify@kernel.org/)
- [Bluetooth: MGMT: Retain the selected legacy advertising schedule ID](https://lore.kernel.org/linux-bluetooth/179511420877.3743161.3171281660123127409.git-patchwork-notify@kernel.org/)
- [Bluetooth: btrtl: Fix NULL return on errors in btrtl_initialize()](https://lore.kernel.org/linux-bluetooth/179511420733.3743161.1888737096932815865.git-patchwork-notify@kernel.org/)
- [Bluetooth: btrtl: Don't return NULL from btrtl_initialize()](https://lore.kernel.org/linux-bluetooth/179511420603.3743161.9291199653240239049.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: Set only MAC_INIT in btintel_pcie_mac_init()](https://lore.kernel.org/linux-bluetooth/179519520652.673037.13393312532564477069.git-patchwork-notify@kernel.org/)
- [Bluetooth: MSFT: Only enable the advertisement filter with monitors](https://lore.kernel.org/linux-bluetooth/179519520528.673037.13658094971187951302.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [test: functional: Cover disabling one ASE of a shared owner](https://lore.kernel.org/linux-bluetooth/179485143502.3796096.4796840542484239274.git-patchwork-notify@kernel.org/)
- [transport: Clear the owner of desynchronized links when removing it](https://lore.kernel.org/linux-bluetooth/179485143352.3796096.5519401065518488398.git-patchwork-notify@kernel.org/)
- [transport: Clear the owner of desynchronized links when removing it](https://lore.kernel.org/linux-bluetooth/179485143202.3796096.9801443737268204948.git-patchwork-notify@kernel.org/)
- [doc/functional-bap: Document disabling one ASE of a shared owner](https://lore.kernel.org/linux-bluetooth/179485143052.3796096.84984069655467234.git-patchwork-notify@kernel.org/)
- [shared/bap: Update the remote PAC when reusing an ASE](https://lore.kernel.org/linux-bluetooth/179485142902.3796096.12970907320325102505.git-patchwork-notify@kernel.org/)
- [doc/functional-bap: Document clearing a cached configuration](https://lore.kernel.org/linux-bluetooth/179485142752.3796096.1712472411872637670.git-patchwork-notify@kernel.org/)
- [transport: Hand the owner over to a link still streaming](https://lore.kernel.org/linux-bluetooth/179485142602.3796096.14894644098212501182.git-patchwork-notify@kernel.org/)
- [transport: Don't hand the owner over while releasing](https://lore.kernel.org/linux-bluetooth/179485142452.3796096.17811546275183515310.git-patchwork-notify@kernel.org/)
- [transport: Don't hand the owner over while releasing](https://lore.kernel.org/linux-bluetooth/179485142302.3796096.8223622744336339718.git-patchwork-notify@kernel.org/)
- [transport: Don't hand the owner over while releasing](https://lore.kernel.org/linux-bluetooth/179485142167.3796096.4868983132472691625.git-patchwork-notify@kernel.org/)
- [client/player: Add endpoint.clear command](https://lore.kernel.org/linux-bluetooth/179485142027.3796096.5711904589172896494.git-patchwork-notify@kernel.org/)
- [unit/test-bap: Add test for disabling one ASE of a shared CIS](https://lore.kernel.org/linux-bluetooth/179485141877.3796096.4369133802957364117.git-patchwork-notify@kernel.org/)
- [unit/test-bap: Add test for disabling one ASE of a shared CIS](https://lore.kernel.org/linux-bluetooth/179485141727.3796096.1737586946533361372.git-patchwork-notify@kernel.org/)
- [unit/test-bap: Add test for disabling one ASE of a shared CIS](https://lore.kernel.org/linux-bluetooth/179485141577.3796096.17049645777095759788.git-patchwork-notify@kernel.org/)
- [bap: Release cached ASEs on ClearConfiguration](https://lore.kernel.org/linux-bluetooth/179485141426.3796096.10783730872129856781.git-patchwork-notify@kernel.org/)
- [shared/bap: Add bt_bap_foreach_stream and bt_bap_stream_get_rpac](https://lore.kernel.org/linux-bluetooth/179485141277.3796096.15931277410024589978.git-patchwork-notify@kernel.org/)
- [shared/bap: Don't disconnect a CIS still used by another ASE](https://lore.kernel.org/linux-bluetooth/179485141128.3796096.738685084116950835.git-patchwork-notify@kernel.org/)
- [avrcp: Poll GetPlayStatus when position changed event unsupported](https://lore.kernel.org/linux-bluetooth/179485921352.3860040.5845821355706416129.git-patchwork-notify@kernel.org/)
- [advertising: Fix double-free in client_free](https://lore.kernel.org/linux-bluetooth/179485921202.3860040.16430372342970958452.git-patchwork-notify@kernel.org/)
- [audio/hfp-hf: Fix org.bluez.Telephony1.Dial reply message](https://lore.kernel.org/linux-bluetooth/179485921052.3860040.15567379850134557342.git-patchwork-notify@kernel.org/)
- [audio/media: Add hfp-hf supported feature flag](https://lore.kernel.org/linux-bluetooth/179485920902.3860040.2800611396448887038.git-patchwork-notify@kernel.org/)
- [bearer: Fix LE Disconnect for devices with a random address](https://lore.kernel.org/linux-bluetooth/179485920752.3860040.6706283991399325723.git-patchwork-notify@kernel.org/)
- [Single advertising set in the emulator and mgmt-tester](https://lore.kernel.org/linux-bluetooth/179485920627.3860040.3796894125726226871.git-patchwork-notify@kernel.org/)
- [emulator: Fix version of 6.2 and 7.0 controllers](https://lore.kernel.org/linux-bluetooth/179502961427.2490531.4491420503994317307.git-patchwork-notify@kernel.org/)
- [gatt-client: Fix not emitting MTU on reconnection](https://lore.kernel.org/linux-bluetooth/179502961277.2490531.3324622150540616569.git-patchwork-notify@kernel.org/)
- [adapter: Set Audio service class bit for A2DP sink](https://lore.kernel.org/linux-bluetooth/179502961127.2490531.2700850366323998767.git-patchwork-notify@kernel.org/)
- [cups: Make printer discovery work again](https://lore.kernel.org/linux-bluetooth/179502960977.2490531.1849363675431703025.git-patchwork-notify@kernel.org/)
- [shared/gatt-client: Fix init when Service Changed lacks Indicate](https://lore.kernel.org/linux-bluetooth/179502960827.2490531.11541569990427433195.git-patchwork-notify@kernel.org/)
- [avdtp: Fix use-after-free in connection_lost](https://lore.kernel.org/linux-bluetooth/179502960678.2490531.3103046334132102769.git-patchwork-notify@kernel.org/)
- [Bearer.LE1: Add ReadRSSI](https://lore.kernel.org/linux-bluetooth/179503021177.2495657.14816040877169529381.git-patchwork-notify@kernel.org/)
- [obexd/pbap: Update PSE support from PBAP 1.1 to 1.2](https://lore.kernel.org/linux-bluetooth/179503021053.2495657.11417869722310175259.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- None recorded this week.

---

## Company Focus Areas

### Independent Contributors

- [docs: ioctl-number: update entries](https://lore.kernel.org/linux-bluetooth/20261119053514.255348-1-rdunlap@infradead.org/)
- [monitor: Decode Periodic Advertising with Responses](https://lore.kernel.org/linux-bluetooth/20261120063856.16585-1-rolandschober1968@gmail.com/)
- [monitor: Decode Periodic Advertising with Responses](https://lore.kernel.org/linux-bluetooth/20261119081621.112623-1-rolandschober1968@gmail.com/)
- [AVRCP browsing fixes, and browsing and cover art in the target role](https://lore.kernel.org/linux-bluetooth/20261122105731.799090-1-simon.mikuda@streamunlimited.com/)

### Intel

- [Bluetooth: Fixes for issues reported by sashiko.dev](https://lore.kernel.org/linux-bluetooth/20261118191118.318779-1-luiz.dentz@gmail.com/)
- [Channel Sounding and RAP fixes](https://lore.kernel.org/linux-bluetooth/20261120165510.1858959-1-luiz.dentz@gmail.com/)
- [Bluetooth: Fixes for issues reported by sashiko.dev](https://lore.kernel.org/linux-bluetooth/20261117202032.3848411-1-luiz.dentz@gmail.com/)
- [Bluetooth: Fixes for issues reported by sashiko.dev](https://lore.kernel.org/linux-bluetooth/20261118140518.59878-1-luiz.dentz@gmail.com/)

### Qualcomm

- [obexd/pbap: Update PSE support from PBAP 1.1 to 1.2](https://lore.kernel.org/linux-bluetooth/20261116090634.1222593-1-jinwang.li@oss.qualcomm.com/)
- [tools/test-runner: Add arm64 host support](https://lore.kernel.org/linux-bluetooth/20261122-tr_arm64-v1-0-4eccf35daeca@oss.qualcomm.com/)
- [[GIT PULL v2] Bluetooth: btusb: Update Qualcomm QCC2072 and WCN685x 2.0 firmware](https://lore.kernel.org/linux-bluetooth/680aeb35-74d2-478a-a1da-4d70983b7431@oss.qualcomm.com/)
- [avdtp: Fix use-after-free in connection_lost](https://lore.kernel.org/linux-bluetooth/20261116090719.1226616-1-jinwang.li@oss.qualcomm.com/)

### Collabora

- [avrcp: Poll GetPlayStatus when position changed event unsupported](https://lore.kernel.org/linux-bluetooth/20261116093308.79430-1-frederic.danis@collabora.com/)

### Google

- [shared/ad: Return NULL instead of false in bt_ad_has_data](https://lore.kernel.org/linux-bluetooth/20261119065641.2510361-1-apusaka@google.com/)
