---
title: "linux-bluetooth Weekly Report - Week 41"
date: 2026-10-11
summary: "Total messages: 352 (208 human, 144 CI/bot)"
draft: false
---

**Total messages: 352 (208 human, 144 CI/bot)**

Note: Of the 352 messages, 208 are human-generated, 144 are CI/bot (bluez.test.bot: 75, patchwork-bot+bluetooth: 36, BluezTestBot: 12, github-actions[bot]: 8, syzbot: 4, kernel test robot: 3, Sasha Levin: 3, bugzilla-daemon: 2, patchwork-bot+netdevbpf: 1).

---

## Summary
During week 41 (5 - 11 October 2026) the linux-bluetooth mailing list carried 352 messages, 208 from contributors and 144 from CI and bots. There were 81 human-initiated threads: 52 kernel patch series, 27 BlueZ userspace series and 2 discussions or reports. 36 patches were applied via patchwork and 16 commits were pushed to bluez repositories. The most active contributor was Luiz Augusto von Dentz (Intel) with 40 messages. 8 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: Fix SCO setup failures after an abandoned setup](https://lore.kernel.org/linux-bluetooth/20261008222616.2780570-1-enghitalo@gmail.com/) | Hitalo Souza | Independent | 6 | Version 3 |
| [Bluetooth: Fix SCO setup failures after an abandoned setup](https://lore.kernel.org/linux-bluetooth/20261007154353.148223-1-enghitalo@gmail.com/) | Hitalo Souza | Independent | 3 | Initial version |
| [Bluetooth: Fix SCO setup failures after an abandoned setup](https://lore.kernel.org/linux-bluetooth/20261008151238.2138665-1-enghitalo@gmail.com/) | Hitalo Souza | Independent | 6 | Version 2 |
| [Bluetooth: hci_event: fix simultaneous discovery stuck in FINDING](https://lore.kernel.org/linux-bluetooth/20261010022523.2789588-3-yaroslav.voytovych@gmail.com/) | Iaroslav Voitovych | Independent | 1 | Initial version |
| [Bluetooth: MGMT: Fix advertising instances with Global Advertising](https://lore.kernel.org/linux-bluetooth/20261006141502.3789138-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 4 | Version 5 |
| [Bluetooth: hci_sync: fix mesh adv timeout units](https://lore.kernel.org/linux-bluetooth/cover.1791223958.git.pav@iki.fi/) | Pauli Virtanen | Independent | 2 | Initial version |
| [Bluetooth: MGMT: Fix advertising instances with Global Advertising](https://lore.kernel.org/linux-bluetooth/20261005175219.3547838-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 4 | Version 2 |
| [Bluetooth: MGMT: Fix advertising instances with Global Advertising](https://lore.kernel.org/linux-bluetooth/20261005195948.3616794-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 4 | Version 3 |
| [Bluetooth: MGMT: Fix advertising instances with Global Advertising](https://lore.kernel.org/linux-bluetooth/20261005204420.3684587-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 4 | Version 4 |
| [Bluetooth: btintel: Zero version data before parsing TLVs](https://lore.kernel.org/linux-bluetooth/20261008140602.2623464-1-kiran.k@intel.com/) | Kiran K | Intel | 2 | Version 4 |
| [Bluetooth: btqcomipc: fixes on top of the IPQ5018 v5 series](https://lore.kernel.org/linux-bluetooth/20261011220919.1816407-1-me@andrei-z.com/) | Andrei-Alexandru Bleortu | Independent | 3 | Initial version |
| [Bluetooth: L2CAP: Reject signalling responses in invalid states](https://lore.kernel.org/linux-bluetooth/20261007144717.3832330-1-oss@fourdim.xyz/) | Siwei Zhang | Independent | 1 | Version 3 |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Ranging Profile and Ranging Service PTS fixes](https://lore.kernel.org/linux-bluetooth/20261009092532.3600749-1-cheng.jiang@oss.qualcomm.com/) | Cheng Jiang | Qualcomm | 14 | Version 2 |
| [Add Role property to org.bluez.Bearer.LE1](https://lore.kernel.org/linux-bluetooth/20261008173000.3615-1-kevin@simpleble.org/) | Kevin Dewald | Independent | 3 | Version 2 |
| [Add Role property to org.bluez.Bearer.LE1](https://lore.kernel.org/linux-bluetooth/20261009180448.29117-1-kevin@simpleble.org/) | Kevin Dewald | Independent | 5 | Version 3 |
| [bass: wait for PAST listener readiness](https://lore.kernel.org/linux-bluetooth/cover.1791750393.git.pav@iki.fi/) | Pauli Virtanen | Independent | 5 | Initial version |
| [Add Role property to org.bluez.Device](https://lore.kernel.org/linux-bluetooth/20261008133634.30362-1-kevin@simpleble.org/) | Kevin Dewald | Independent | 3 | Initial version |
| [emulator: Fix extended advertising report types](https://lore.kernel.org/linux-bluetooth/20261005162117.4606-1-kevin@simpleble.org/) | Kevin Dewald | Independent | 3 | Initial version |
| [Indicate PAST RX ready to userspace](https://lore.kernel.org/linux-bluetooth/cover.1791750397.git.pav@iki.fi/) | Pauli Virtanen | Independent | 2 | Initial version |
| [a2dp: Fix UAF after rejected SetConfiguration](https://lore.kernel.org/linux-bluetooth/20261007195206.350586-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 3 | Version 2 |
| [mgmt-tester: Add simultaneous discovery stop tests](https://lore.kernel.org/linux-bluetooth/20261010031852.2842893-1-yaroslav.voytovych@gmail.com/) | Iaroslav Voitovych | Independent | 3 | Initial version |
| [Enable bluetooth on BeagleV-Ahead](https://lore.kernel.org/linux-bluetooth/cover.1791720467.git.thomas.gerner@muenchen-mail.de/) | Thomas Gerner | Independent | 2 | Initial version |
| [Test links completing after their connection was aborted](https://lore.kernel.org/linux-bluetooth/20261008215756.2710812-1-enghitalo@gmail.com/) | Hitalo Souza | Independent | 2 | Initial version |
| [doc/mgmt: Document Advertising setting as Global Advertising](https://lore.kernel.org/linux-bluetooth/20261005152111.3419786-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 2 | Initial version |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [[BUG] Bluetooth: btintel_pcie: BE201 (8086:a876) dead after "Failed to get mac a...](https://lore.kernel.org/linux-bluetooth/CAMuQ30-uAH1aYbU9yCJXw_9LPJ1Gsn97kVhLG6pu07QnYYPpsQ@mail.gmail.com/) | Kanstantsin Haradzetski | 2 messages |
| [[GIT PULL] bluetooth 2026-10-05](https://lore.kernel.org/linux-bluetooth/20261005194436.3594085-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 2 messages |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Add Role property to org.bluez.Bearer.LE1](https://lore.kernel.org/linux-bluetooth/20261009180448.29117-1-kevin@simpleble.org/) | v2->v3 |
| [Add cover art support](https://lore.kernel.org/linux-bluetooth/20261009134924.122040-1-jan.brummer@tabos.org/) | v1->v4 |
| [Bluetooth: Fix SCO setup failures after an abandoned setup](https://lore.kernel.org/linux-bluetooth/20261008222616.2780570-1-enghitalo@gmail.com/) | v1->v2->v3 |
| [Bluetooth: MGMT: Fix advertising instances with Global Advertising](https://lore.kernel.org/linux-bluetooth/20261006141502.3789138-1-luiz.dentz@gmail.com/) | v1->v2->v3->v4->v5 |
| [Bluetooth: btmtk: Add MT7928 support](https://lore.kernel.org/linux-bluetooth/20261008085559.813654-1-chris.lu@mediatek.com/) | v1->v2->v3->v4 |
| [Bluetooth: hci_event: Don't fail a connected SCO link on setup errors](https://lore.kernel.org/linux-bluetooth/20261008222616.2780570-2-enghitalo@gmail.com/) | v1->v2->v3 |
| [org.bluez.Bearer: Add Role property](https://lore.kernel.org/linux-bluetooth/20261009180448.29117-2-kevin@simpleble.org/) | v2->v3 |
| [sdp: Prevent integer underflow in string attribute length calculation](https://lore.kernel.org/linux-bluetooth/20261008042720.3134391-1-benquike@gmail.com/) | v1->v2 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 40 |
| Hitalo Souza | Independent | 24 |
| Kevin Dewald | Independent | 19 |
| Pauli Virtanen | Independent | 18 |
| Cheng Jiang | Qualcomm | 16 |
| Cen Zhang | Independent | 12 |
| Iaroslav Voitovych | Independent | 11 |
| Loic Poulain | Qualcomm | 10 |
| Andrei-Alexandru Bleortu | Independent | 5 |
| Chris Lu | MediaTek | 4 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: hci_sync: Fix command skb lifetime during scan setup](https://lore.kernel.org/linux-bluetooth/179129701852.2655967.14077509856109864264.git-patchwork-notify@kernel.org/)
- [Bluetooth: ISO: Serialize concurrent connect calls](https://lore.kernel.org/linux-bluetooth/179129701702.2655967.13266802072066582497.git-patchwork-notify@kernel.org/)
- [Bluetooth: ISO: Reject concurrent BIS listener setup](https://lore.kernel.org/linux-bluetooth/179129701552.2655967.7619580785559847090.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: fix mesh adv timeout units](https://lore.kernel.org/linux-bluetooth/179129701402.2655967.18407429567239565101.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sock: Serialize dead-device detachment](https://lore.kernel.org/linux-bluetooth/179129701278.2655967.8493236646880910714.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: fix mesh adv timeout units](https://lore.kernel.org/linux-bluetooth/179129881986.2665799.5801037739103499530.git-patchwork-notify@kernel.org/)
- [Bluetooth: MGMT: Fix advertising instances with Global Advertising](https://lore.kernel.org/linux-bluetooth/179129940679.2669348.4817363571989252284.git-patchwork-notify@kernel.org/)
- [Bluetooth: msft: Lock failed probe cleanup against feature readers](https://lore.kernel.org/linux-bluetooth/179139421527.3628206.15092469243511428076.git-patchwork-notify@kernel.org/)
- [Bluetooth: Add missing newline to bt_dev_{err,warn}_ratelimited()](https://lore.kernel.org/linux-bluetooth/179139421378.3628206.2740207447215524505.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: Serialize devcoredump reset during device open](https://lore.kernel.org/linux-bluetooth/179139421227.3628206.5217968051871081602.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_core: Keep RCU protection through LTK filtering](https://lore.kernel.org/linux-bluetooth/179139421077.3628206.11889027224704009743.git-patchwork-notify@kernel.org/)
- [Bluetooth: ISO: Hold the listener during disconnect notification](https://lore.kernel.org/linux-bluetooth/179139420927.3628206.651102883424358739.git-patchwork-notify@kernel.org/)
- [Bluetooth: MGMT: Reject quality report requests during unregister](https://lore.kernel.org/linux-bluetooth/179139420777.3628206.6252425087306372679.git-patchwork-notify@kernel.org/)
- [Bluetooth: 6LoWPAN: Use RCU-safe device list removal](https://lore.kernel.org/linux-bluetooth/179139420653.3628206.2096536706982565327.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: Hold the listener while notifying child teardown](https://lore.kernel.org/linux-bluetooth/179155561651.812174.13580314758223313991.git-patchwork-notify@kernel.org/)
- [Bluetooth: selftest: Pin module for selftest debugfs file operations](https://lore.kernel.org/linux-bluetooth/179155561501.812174.1610963869730671308.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: Protect IRK identity reads with RCU](https://lore.kernel.org/linux-bluetooth/179155561351.812174.8832870892083391062.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_debugfs: Pin module for debugfs file operations](https://lore.kernel.org/linux-bluetooth/179155561201.812174.6892291542337327416.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtk: fix skb double free on ISO padding failure](https://lore.kernel.org/linux-bluetooth/179155561051.812174.8873772264427168812.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_vhci: Pin module for debugfs file operations](https://lore.kernel.org/linux-bluetooth/179155560901.812174.12507365136782263933.git-patchwork-notify@kernel.org/)
- [Bluetooth: 6lowpan: Drain RCU readers on registration failure](https://lore.kernel.org/linux-bluetooth/179155560751.812174.8668330528853448667.git-patchwork-notify@kernel.org/)
- [Bluetooth: 6lowpan: Pin module for 6lowpan_control debugfs file](https://lore.kernel.org/linux-bluetooth/179155560628.812174.5344547417953773024.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel: Zero version data before parsing TLVs](https://lore.kernel.org/linux-bluetooth/179157540571.979491.7048149964326431480.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel: Zero version data before parsing TLVs](https://lore.kernel.org/linux-bluetooth/179157600603.981840.12084970276342453886.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel: load unlocker.sfi to allow unsigned firmware](https://lore.kernel.org/linux-bluetooth/179157600477.981840.7983819101524117703.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [hfp-hf: Enhance HFP Hands-Free profile support](https://lore.kernel.org/linux-bluetooth/179123160703.1879401.13552645753482333474.git-patchwork-notify@kernel.org/)
- [doc/mgmt: Document Advertising setting as Global Advertising](https://lore.kernel.org/linux-bluetooth/179130563226.2711940.9825841812660336441.git-patchwork-notify@kernel.org/)
- [BAP transport Release and reacquire fixes](https://lore.kernel.org/linux-bluetooth/179139840927.3650240.11495171159381518976.git-patchwork-notify@kernel.org/)
- [transport: Preserve Release on late BAP ready](https://lore.kernel.org/linux-bluetooth/179139840777.3650240.1957954919500542671.git-patchwork-notify@kernel.org/)
- [emulator: Fix extended advertising report types](https://lore.kernel.org/linux-bluetooth/179139840653.3650240.14235783377943488144.git-patchwork-notify@kernel.org/)
- [sdp: Prevent integer underflow in string attribute length calculation](https://lore.kernel.org/linux-bluetooth/179147160852.307075.7678126183237517482.git-patchwork-notify@kernel.org/)
- [a2dp: Fix crashes around pending SetConfiguration](https://lore.kernel.org/linux-bluetooth/179147160704.307075.10856321040219058548.git-patchwork-notify@kernel.org/)
- [a2dp: Fix UAF after rejected SetConfiguration](https://lore.kernel.org/linux-bluetooth/179147160555.307075.10575654872907648485.git-patchwork-notify@kernel.org/)
- [shared/mgmt: Fix notify leak in mgmt_unregister()](https://lore.kernel.org/linux-bluetooth/179147280477.313948.6286426737429078397.git-patchwork-notify@kernel.org/)
- [Ranging Profile and Ranging Service PTS fixes](https://lore.kernel.org/linux-bluetooth/179156640627.904243.17709722202598866188.git-patchwork-notify@kernel.org/)
- [Add Role property to org.bluez.Bearer.LE1](https://lore.kernel.org/linux-bluetooth/179157900577.998686.6559169203209957987.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- [doc/mgmt: Document Advertising setting as Global A...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1179727%2F000000-9c0205@github.com/)
- [audio/hfp-hf: Add HFP HF server and SDP record](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F4dc15b-7edaa6@github.com/)
- [sdp: Prevent integer underflow in string attribute...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1181104%2F000000-b904ef@github.com/)
- [transport: Preserve Release on late BAP ready](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2Ff8f352-d84171@github.com/)
- [a2dp: Fix UAF after rejected SetConfiguration](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1181105%2F000000-1f2db3@github.com/)
- [client: Handle system bus connection failures](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1181803%2F000000-05c12b@github.com/)
- [shared/mgmt: Fix notify leak in mgmt_unregister()](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1181228%2F000000-5b628c@github.com/)
- [tools/sco-tester: Add test closing the socket befo...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1181897%2F000000-39fe2d@github.com/)
- [Add cover art support](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1182479%2F000000-5a07c6@github.com/)
- [shared/rap: Track RAS CCC state per connection](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1182593%2F000000-bd47bb@github.com/)
- [org.bluez.Bearer: Add Role property](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2Fb11135-7428ca@github.com/)
- [emulator: Free hooks in btdev_destroy](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1182787%2F000000-0034d2@github.com/)
- [emulator: Add btdev_send_event](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1182788%2F000000-17c1dd@github.com/)
- [test: functional: retry pairable when Busy](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1183123%2F000000-ccca92@github.com/)
- [unit: test-rap: disable optimization to speed up c...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1182943%2F000000-dd49fc@github.com/)
- [iso-tester: remove IO sources during teardown](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1183466%2F000000-d08111@github.com/)

---

## Company Focus Areas

### Independent Contributors

- [Bluetooth: Fix SCO setup failures after an abandoned setup](https://lore.kernel.org/linux-bluetooth/20261008222616.2780570-1-enghitalo@gmail.com/)
- [Add Role property to org.bluez.Bearer.LE1](https://lore.kernel.org/linux-bluetooth/20261008173000.3615-1-kevin@simpleble.org/)
- [Add Role property to org.bluez.Bearer.LE1](https://lore.kernel.org/linux-bluetooth/20261009180448.29117-1-kevin@simpleble.org/)
- [Bluetooth: Fix SCO setup failures after an abandoned setup](https://lore.kernel.org/linux-bluetooth/20261007154353.148223-1-enghitalo@gmail.com/)

### Intel

- [Bluetooth: MGMT: Fix advertising instances with Global Advertising](https://lore.kernel.org/linux-bluetooth/20261006141502.3789138-1-luiz.dentz@gmail.com/)
- [Bluetooth: MGMT: Fix advertising instances with Global Advertising](https://lore.kernel.org/linux-bluetooth/20261005175219.3547838-1-luiz.dentz@gmail.com/)
- [Bluetooth: MGMT: Fix advertising instances with Global Advertising](https://lore.kernel.org/linux-bluetooth/20261005195948.3616794-1-luiz.dentz@gmail.com/)
- [Bluetooth: MGMT: Fix advertising instances with Global Advertising](https://lore.kernel.org/linux-bluetooth/20261005204420.3684587-1-luiz.dentz@gmail.com/)

### Qualcomm

- [Ranging Profile and Ranging Service PTS fixes](https://lore.kernel.org/linux-bluetooth/20261009092532.3600749-1-cheng.jiang@oss.qualcomm.com/)
- [Bluetooth: hci_qca: Support QCA2066 on M.2 connector via pwrseq](https://lore.kernel.org/linux-bluetooth/20261005-monza-wireless-v7-5-5a6de7662dcb@oss.qualcomm.com/)
- [Bluetooth: hci_qca: Add M.2 Bluetooth device support using pwrseq](https://lore.kernel.org/linux-bluetooth/20261005-monza-wireless-v7-1-5a6de7662dcb@oss.qualcomm.com/)
- [Bluetooth: hci_qca: Embed bt_power in struct qca_serdev](https://lore.kernel.org/linux-bluetooth/20261005-monza-wireless-v7-4-5a6de7662dcb@oss.qualcomm.com/)

### MediaTek

- [Bluetooth: btmtk: Add MT7928 support](https://lore.kernel.org/linux-bluetooth/20261005111946.550573-1-chris.lu@mediatek.com/)
- [Bluetooth: btmtk: Add MT7928 support](https://lore.kernel.org/linux-bluetooth/20261005121156.772369-1-chris.lu@mediatek.com/)
- [Bluetooth: btmtk: Add MT7928 support](https://lore.kernel.org/linux-bluetooth/20261006032321.465448-1-chris.lu@mediatek.com/)
- [Bluetooth: btmtk: Add MT7928 support](https://lore.kernel.org/linux-bluetooth/20261008085559.813654-1-chris.lu@mediatek.com/)
