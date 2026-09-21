---
title: "linux-bluetooth Weekly Report - Week 37"
date: 2026-09-13
summary: "Total messages: 372 (224 human, 148 CI/bot)"
draft: false
---

**Total messages: 372 (224 human, 148 CI/bot)**

Note: Of the 372 messages, 224 are human-generated, 148 are CI/bot (bluez.test.bot: 85, patchwork-bot+bluetooth: 38, BluezTestBot: 18, kernel test robot: 4, patchwork-bot+netdevbpf: 1, syzbot: 1, github-actions[bot]: 1).

---

## Summary
During week 37 (7 - 13 September 2026) the linux-bluetooth mailing list carried 372 messages, 224 from contributors and 148 from CI and bots. There were 61 human-initiated threads: 34 kernel patch series, 16 BlueZ userspace series and 11 discussions or reports. 38 patches were applied via patchwork and 23 commits were pushed to bluez repositories. The most active contributor was Luiz Augusto von Dentz (Intel) with 70 messages. 7 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: dial the peer's on-air address when we cannot resolve](https://lore.kernel.org/linux-bluetooth/20260908012048.3681904-2-radek@podgorny.cz/) | Radek Podgorny | Independent | 2 | Initial version |
| [Bluetooth: btusb: Support Qualcomm multi-subsystem QCC2072](https://lore.kernel.org/linux-bluetooth/20260907-btusb_qcc2072-v3-0-1f65350b03b8@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 4 | Version 3 |
| [Bluetooth: btusb: Support Qualcomm multi-subsystem QCC2072](https://lore.kernel.org/linux-bluetooth/20260910-btusb_qcc2072-v4-0-e78f04b7675e@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 4 | Version 4 |
| [Bluetooth: btusb: Support Qualcomm multi-subsystem QCC2072](https://lore.kernel.org/linux-bluetooth/20260911-btusb_qcc2072-v5-0-422754f4e938@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 4 | Version 5 |
| [Bluetooth: btintel_pcie: two PM fixes, assembled as one series](https://lore.kernel.org/linux-bluetooth/20260909123416.71919-1-lsa.uz@pm.me/) | Sergey Lebedev | Independent | 2 | Initial version |
| [Bluetooth: btmtk: Harden firmware parsing and improve logging](https://lore.kernel.org/linux-bluetooth/20260909120011.1198001-1-chris.lu@mediatek.com/) | Chris Lu | MediaTek | 3 | Initial version |
| [Bluetooth: btmtk: firmware debug event routing and WMT FUNC_CTRL status fixes](https://lore.kernel.org/linux-bluetooth/20260911104234.2276126-1-chris.lu@mediatek.com/) | Chris Lu | MediaTek | 3 | Initial version |
| [Bluetooth: eSCO re-setup after HFP profile switch gets no Sync_Conn_Complete (In...](https://lore.kernel.org/linux-bluetooth/DLCQ0KQND9EO.2NFOQQ5PCPL9B@pm.me/) | Caleb White | Independent | 1 | Initial version |
| [Bluetooth: btusb: fix NXP IW610 composite device handling](https://lore.kernel.org/linux-bluetooth/20260907142604.1080571-1-n.thibert@ext.mylight150.com/) | Nicolas Thibert | Independent | 1 | Initial version |
| [Bluetooth: hci_bcsp: Use the shared CRC-CCITT byte helper](https://lore.kernel.org/linux-bluetooth/D667F392AF7221D8+20260907151015.13522-1-zhangxuhua@kylinsec.com.cn/) | Xuhua Zhang | Independent | 1 | Initial version |
| [Bluetooth: ISO: Fix parent socket leak in iso_conn_ready()](https://lore.kernel.org/linux-bluetooth/20260910181206.1558734-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 2 | Version 2 |
| [Bluetooth: SMP: Zeroize raw key data on the stack in smp_e()](https://lore.kernel.org/linux-bluetooth/20260910123254.408963-1-thuth@redhat.com/) | Thomas Huth | Independent | 1 | Initial version |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Add functional tests for A2DP and BAP](https://lore.kernel.org/linux-bluetooth/20260909192308.1306567-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 12 | Initial version |
| [monitor: Reference request frames on responses](https://lore.kernel.org/linux-bluetooth/20260909182840.1289776-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 10 | Initial version |
| [client/btpclient: Add BAP/ASCS/PACS support for auto-pts BAP tests](https://lore.kernel.org/linux-bluetooth/20260910084917.23512-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 8 | Version 3 |
| [client/btpclient: Add BAP/ASCS/PACS support for auto-pts BAP tests](https://lore.kernel.org/linux-bluetooth/20260908170633.510244-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 8 | Version 2 |
| [RAS: Add support for on-demand ranging data](https://lore.kernel.org/linux-bluetooth/20260907135606.824752-1-naga.akella@oss.qualcomm.com/) | Naga Bhavani Akella | Qualcomm | 3 | Initial version |
| [test-runner: use virtio-fs by default, functional test speedup](https://lore.kernel.org/linux-bluetooth/cover.1789237077.git.pav@iki.fi/) | Pauli Virtanen | Independent | 4 | Version 2 |
| [BlueZ: Support vendor packets](https://lore.kernel.org/linux-bluetooth/20260910-vendor_hci-v4-0-b953ce117d12@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 3 | Version 4 |
| [gatt-server: Check prepare write length before reallocating](https://lore.kernel.org/linux-bluetooth/20260910184216.1601639-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 4 | Initial version |
| [test-runner: use virtio-fs by default, functional test speedup](https://lore.kernel.org/linux-bluetooth/cover.1789058875.git.pav@iki.fi/) | Pauli Virtanen | Independent | 2 | Initial version |
| [6lowpan: do not compress headers that are not fully present](https://lore.kernel.org/linux-bluetooth/CA+0ovCgMrVBnn+0d198i0th0bcr0EAwNZ=0juh1ug8DdJX5mPw@mail.gmail.com/) | Farhad Alemi | Independent | 1 | Initial version |
| [Add cover art support](https://lore.kernel.org/linux-bluetooth/20260907193404.124504-2-jan.brummer@tabos.org/) | Jan-Michael | Independent | 1 | Version 3 |
| [build: run the test suite in parallel](https://lore.kernel.org/linux-bluetooth/20260910164412.1495535-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 1 | Initial version |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [Enable D-Bus activation of bluetooth.service](https://lore.kernel.org/linux-bluetooth/20260911213253.766659-1-dev@grantmoyer.com/) | Grant Moyer | 3 messages |
| [[GIT PULL] bluetooth 2026-09-07](https://lore.kernel.org/linux-bluetooth/20260907172648.457103-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 3 messages |
| [[GIT PULL] bluetooth 2026-09-08](https://lore.kernel.org/linux-bluetooth/20260908212127.1022197-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 2 messages |
| [[Linux Kernel Bug] possible deadlock in l2cap_chan_connect](https://lore.kernel.org/linux-bluetooth/CANypQFabseTuRiyz2pGkc_Qj0moGDnY7KEp1qdTOqkw6gAL3hw@mail.gmail.com/) | Jiaming Zhang | 2 messages |
| [Disparity in Secureboot reported state by btintel driver](https://lore.kernel.org/linux-bluetooth/44081c21-4d08-4cde-8efe-2f9943b0a90f@debian.org/) | Laurent Bigonville | 1 message |
| [RTL8852BU (0bda:b853) rom_version 3: btrtl -ENODATA, no ECO 4 firmware](https://lore.kernel.org/linux-bluetooth/f166df21-09fe-4c16-bcce-07fbd9b31122@flutilliant.com/) | Tristan Laroye | 1 message |
| [Subject: [BUG] Bluetooth: btusb: unbounded firmware retry loop wedges MT6639](https://lore.kernel.org/linux-bluetooth/6a87fe0d-6a58-4e85-830d-ffbf7fe84c8c@batcode.io/) | Douglas Santos | 1 message |
| [[BUG] kernel BUG in lowpan_header_compress](https://lore.kernel.org/linux-bluetooth/CA+0ovCjTsygN76s2o=TZqPqW8v2gBhmRnz+q6G-NaB3Cq-YPqQ@mail.gmail.com/) | Farhad Alemi | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Bluetooth: btusb: Add USB ID 13d3:3626 for RTL8851BE](https://lore.kernel.org/linux-bluetooth/178928149096.19047.17192117267904511764@gmail.com/) | v1->v2 |
| [Bluetooth: btusb: Add recv_intr() hook to btusb_data](https://lore.kernel.org/linux-bluetooth/20260911-btusb_qcc2072-v5-1-422754f4e938@oss.qualcomm.com/) | v3->v4->v5 |
| [Bluetooth: btusb: Support Qualcomm multi-subsystem QCC2072](https://lore.kernel.org/linux-bluetooth/20260911-btusb_qcc2072-v5-0-422754f4e938@oss.qualcomm.com/) | v3->v4->v5 |
| [Bluetooth: keep dst_type with dst when reusing an LE connection](https://lore.kernel.org/linux-bluetooth/20260913-for-upstream-le-conn-reuse-dst-type-v2-1-ed1d5dd4ae37@podgorny.cz/) | v1->v2 |
| [client/btpclient: Add BAP/ASCS/PACS support for auto-pts BAP tests](https://lore.kernel.org/linux-bluetooth/20260910084917.23512-1-frederic.danis@collabora.com/) | v2->v3 |
| [client/btpclient: Add BTP_EV_BAP_ASE_FOUND support](https://lore.kernel.org/linux-bluetooth/20260910084917.23512-2-frederic.danis@collabora.com/) | v2->v3 |
| [test-runner: use virtio-fs by default, functional test speedup](https://lore.kernel.org/linux-bluetooth/cover.1789237077.git.pav@iki.fi/) | v1->v2 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 70 |
| Zijun Hu | Qualcomm | 19 |
| Frédéric Danis | Collabora | 18 |
| Pauli Virtanen | Independent | 15 |
| Sergey Lebedev | Independent | 12 |
| Radek Podgorny | Independent | 11 |
| Naga Bhavani Akella | Qualcomm | 8 |
| Chris Lu | MediaTek | 8 |
| Farhad Alemi | Independent | 3 |
| Xuhua Zhang | Independent | 3 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: eir: validate service data length before reading UUID](https://lore.kernel.org/linux-bluetooth/178888503863.3627954.209106965339274612.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: Add device ID for Realtek RTL8761BUE (StarTech AV53C](https://lore.kernel.org/linux-bluetooth/178888503713.3627954.5248734968096243658.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_h5: Avoid clearing the escape bit for ordinary bytes](https://lore.kernel.org/linux-bluetooth/178888503563.3627954.6813577109173768938.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: Add device ID for MediaTek MT7925 (13d3:3631)](https://lore.kernel.org/linux-bluetooth/178888503412.3627954.4047194716743316404.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: Add device ID for MediaTek MT7925 (13d3:3631)](https://lore.kernel.org/linux-bluetooth/178888503263.3627954.4027043693720648569.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: fix NXP IW610 composite device handling](https://lore.kernel.org/linux-bluetooth/178888503113.3627954.15907243154963861505.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: cap device debug regions at 1 MB](https://lore.kernel.org/linux-bluetooth/178888502963.3627954.4649873667262966331.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_ll: Sleep while waiting for the controller to power up](https://lore.kernel.org/linux-bluetooth/178888502815.3627954.2543217288175652376.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_bcsp: Use the shared CRC-CCITT byte helper](https://lore.kernel.org/linux-bluetooth/178888502661.3627954.13490393593598630816.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_core: Fix queuing tx_work after workqueue is drained](https://lore.kernel.org/linux-bluetooth/178888502461.3627954.10490846236142598970.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: validate TX skb length in send_sync](https://lore.kernel.org/linux-bluetooth/178888501048.3627954.5315062891707768596.git-patchwork-notify@kernel.org/)
- [Bluetooth: coredump: Quiesce dump work on unregister](https://lore.kernel.org/linux-bluetooth/178888500873.3627954.10684835097412320189.git-patchwork-notify@kernel.org/)
- [Bluetooth: put the peer's on-air address on air when we cannot resolve](https://lore.kernel.org/linux-bluetooth/178898280763.1023805.2181772004585809678.git-patchwork-notify@kernel.org/)
- [Bluetooth: dial the address the peer is actually on air with](https://lore.kernel.org/linux-bluetooth/178898280613.1023805.6938780571676141703.git-patchwork-notify@kernel.org/)
- [Bluetooth: bnep: linearize skb before sending](https://lore.kernel.org/linux-bluetooth/178898280461.1023805.10741395648052018810.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtk: Harden firmware parsing and improve logging](https://lore.kernel.org/linux-bluetooth/178898400812.1032931.449738913453021907.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_codec: validate vendor codec count length](https://lore.kernel.org/linux-bluetooth/178906980564.2055460.13921415718571070478.git-patchwork-notify@kernel.org/)
- [Bluetooth: Fix code style error](https://lore.kernel.org/linux-bluetooth/178906980687.2055460.13615750651234605058.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: Serialize local codec list cleanup](https://lore.kernel.org/linux-bluetooth/178907340813.2075844.8834816914605472412.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_qca: Do not write to the serial port after it is closed](https://lore.kernel.org/linux-bluetooth/178907340663.2075844.14300677494257499736.git-patchwork-notify@kernel.org/)
- [Bluetooth: SMP: Zeroize raw key data on the stack in smp_e()](https://lore.kernel.org/linux-bluetooth/178907340539.2075844.9772843571255871634.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [RAS: Add support for on-demand ranging data](https://lore.kernel.org/linux-bluetooth/178889521113.3704993.1182340712604469655.git-patchwork-notify@kernel.org/)
- [Functional/integration testing](https://lore.kernel.org/linux-bluetooth/178889520963.3704993.9911217550470009790.git-patchwork-notify@kernel.org/)
- [avrcp: Fix out-of-bounds parsing of ListPlayerAttributes response](https://lore.kernel.org/linux-bluetooth/178889520813.3704993.10488710039351775103.git-patchwork-notify@kernel.org/)
- [client/cs: fix crash in reference ranging provider](https://lore.kernel.org/linux-bluetooth/178889520689.3704993.715155796199185527.git-patchwork-notify@kernel.org/)
- [Functional/integration testing](https://lore.kernel.org/linux-bluetooth/178889761229.3720652.8197583151733196686.git-patchwork-notify@kernel.org/)
- [monitor: Check valid range of CE Length](https://lore.kernel.org/linux-bluetooth/178905420738.1498636.178528734451251713.git-patchwork-notify@kernel.org/)
- [client/btpclient: Add BAP/ASCS/PACS support for auto-pts BAP tests](https://lore.kernel.org/linux-bluetooth/178905781038.1735972.6039510848479561946.git-patchwork-notify@kernel.org/)
- [workflows: allow the sync workflow to be triggered manually](https://lore.kernel.org/linux-bluetooth/178906140613.1999514.17268461793181455665.git-patchwork-notify@kernel.org/)
- [build: run the test suite in parallel](https://lore.kernel.org/linux-bluetooth/178906140489.1999514.2405079666006763952.git-patchwork-notify@kernel.org/)
- [workflows: pass the email token to the cleanup task](https://lore.kernel.org/linux-bluetooth/178906200413.2003385.4059694147440618491.git-patchwork-notify@kernel.org/)
- [monitor: clamp max_len in print_packet](https://lore.kernel.org/linux-bluetooth/178906561337.2027917.4685625875514348005.git-patchwork-notify@kernel.org/)
- [media: fix wrong argument to lp_get_uid() in avrcp-player](https://lore.kernel.org/linux-bluetooth/178906561212.2027917.7890033207836807475.git-patchwork-notify@kernel.org/)
- [bluetooth.service: Fix ConfigurationDirectory warning](https://lore.kernel.org/linux-bluetooth/178906561062.2027917.11205750738338201649.git-patchwork-notify@kernel.org/)
- [obexd: Reference count the phonebook back-end setup and teardown](https://lore.kernel.org/linux-bluetooth/178906560903.2027917.2521995556932726344.git-patchwork-notify@kernel.org/)
- [Add component batteries and Fast Pair Message Stream](https://lore.kernel.org/linux-bluetooth/178906560638.2027917.8831170681056127640.git-patchwork-notify@kernel.org/)
- [plugin/admin: Make allowlist adapter-scoped and enforce at runtime](https://lore.kernel.org/linux-bluetooth/178906560762.2027917.10966834300247209330.git-patchwork-notify@kernel.org/)
- [Add functional tests for A2DP and BAP](https://lore.kernel.org/linux-bluetooth/178907341262.2075844.17541117108756556262.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- [rap: Add OndemandRanging configuration option](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1160130%2F000000-394aa8@github.com/)
- [Add cover art support](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1159982%2F000000-f564a3@github.com/)
- [client: avoid registering ranging objects as direc...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F12f5eb-875012@github.com/)
- [client/btpclient: Add BTP_EV_BAP_ASE_FOUND support](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1160712%2F000000-b28861@github.com/)
- [monitor: Fix the LE features decoding to include B...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F875012-293eb9@github.com/)
- [monitor: Fix the LE event mask decoding to include...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F293eb9-19ebd6@github.com/)
- [Use AddressSanitizer instead of Valgrind for testers](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2F1e08fd-9693b1@github.com/)
- [sync_patchwork: don't let one series abort the who...](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2F436a7d-08efb9@github.com/)
- [cleanup_pr: tell submitters to resend the change t...](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2F8ef6a7-171e7d@github.com/)
- [cleanup_pr: read the PR list before closing any of...](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2Fc4559c-2857bb@github.com/)
- [email: compose a new message for each email](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2F2857bb-436a7d@github.com/)
- [cleanup_pr: reply to the original series when arch...](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2F171e7d-720a43@github.com/)
- [cleanup_pr: notify by email when a PR is archived](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2Fdb1a03-8ef6a7@github.com/)
- [githubtool: fix create_pr with the current PyGithub](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2F720a43-c4559c@github.com/)
- [cleanup_pr: fix TypeError comparing naive and awar...](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2F9693b1-db1a03@github.com/)
- [sync_patchwork: don't recreate a PR that was alrea...](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2F08efb9-fa1938@github.com/)
- [build: add doc/test-functional.rst to EXTRA_DIST](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1161557%2F000000-aca79b@github.com/)
- [gatt-server: Check prepare write length before rea...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1162311%2F000000-9ddfe4@github.com/)
- [monitor: Check valid range of CE Length](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F19ebd6-51d1b7@github.com/)
- [workflows: pass the email token to the cleanup task](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F51d1b7-cd10ad@github.com/)
- [doc: enable virtio-fs in tester kernel configs](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1162236%2F000000-86f64a@github.com/)
- [battery: Add component battery objects](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2Fcd10ad-1b9a0e@github.com/)
- [tools/test-runner: replace alloca() based argv setup](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1163573%2F000000-3e9e53@github.com/)

---

## Company Focus Areas

### Independent Contributors

- [Bluetooth: dial the peer's on-air address when we cannot resolve](https://lore.kernel.org/linux-bluetooth/20260908012048.3681904-2-radek@podgorny.cz/)
- [Bluetooth: btintel_pcie: two PM fixes, assembled as one series](https://lore.kernel.org/linux-bluetooth/20260909123416.71919-1-lsa.uz@pm.me/)
- [test-runner: use virtio-fs by default, functional test speedup](https://lore.kernel.org/linux-bluetooth/cover.1789237077.git.pav@iki.fi/)
- [Bluetooth: eSCO re-setup after HFP profile switch gets no Sync_Conn_Complete (In...](https://lore.kernel.org/linux-bluetooth/DLCQ0KQND9EO.2NFOQQ5PCPL9B@pm.me/)

### Intel

- [Add functional tests for A2DP and BAP](https://lore.kernel.org/linux-bluetooth/20260909192308.1306567-1-luiz.dentz@gmail.com/)
- [monitor: Reference request frames on responses](https://lore.kernel.org/linux-bluetooth/20260909182840.1289776-1-luiz.dentz@gmail.com/)
- [gatt-server: Check prepare write length before reallocating](https://lore.kernel.org/linux-bluetooth/20260910184216.1601639-1-luiz.dentz@gmail.com/)
- [[GIT PULL] bluetooth 2026-09-07](https://lore.kernel.org/linux-bluetooth/20260907172648.457103-1-luiz.dentz@gmail.com/)

### Qualcomm

- [RAS: Add support for on-demand ranging data](https://lore.kernel.org/linux-bluetooth/20260907135606.824752-1-naga.akella@oss.qualcomm.com/)
- [Bluetooth: btusb: Support Qualcomm multi-subsystem QCC2072](https://lore.kernel.org/linux-bluetooth/20260907-btusb_qcc2072-v3-0-1f65350b03b8@oss.qualcomm.com/)
- [Bluetooth: btusb: Support Qualcomm multi-subsystem QCC2072](https://lore.kernel.org/linux-bluetooth/20260910-btusb_qcc2072-v4-0-e78f04b7675e@oss.qualcomm.com/)
- [Bluetooth: btusb: Support Qualcomm multi-subsystem QCC2072](https://lore.kernel.org/linux-bluetooth/20260911-btusb_qcc2072-v5-0-422754f4e938@oss.qualcomm.com/)

### Collabora

- [client/btpclient: Add BAP/ASCS/PACS support for auto-pts BAP tests](https://lore.kernel.org/linux-bluetooth/20260910084917.23512-1-frederic.danis@collabora.com/)
- [client/btpclient: Add BAP/ASCS/PACS support for auto-pts BAP tests](https://lore.kernel.org/linux-bluetooth/20260908170633.510244-1-frederic.danis@collabora.com/)

### MediaTek

- [Bluetooth: btmtk: Harden firmware parsing and improve logging](https://lore.kernel.org/linux-bluetooth/20260909120011.1198001-1-chris.lu@mediatek.com/)
- [Bluetooth: btmtk: firmware debug event routing and WMT FUNC_CTRL status fixes](https://lore.kernel.org/linux-bluetooth/20260911104234.2276126-1-chris.lu@mediatek.com/)

### Debian

- [Disparity in Secureboot reported state by btintel driver](https://lore.kernel.org/linux-bluetooth/44081c21-4d08-4cde-8efe-2f9943b0a90f@debian.org/)
