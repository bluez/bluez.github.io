---
title: "linux-bluetooth Weekly Report - Week 21"
date: 2026-05-24
summary: "Total messages: 300 (179 human, 121 CI/bot)"
draft: false
---

**Total messages: 300 (179 human, 121 CI/bot)**

Note: Of the 300 messages, 179 are human-generated, 121 are CI/bot (bluez.test.bot: 50, bugzilla-daemon: 21, patchwork-bot+bluetooth: 18, BluezTestBot: 15, github-actions[bot]: 4, kernel test robot: 4, prathibhamadugonde: 4, patchwork-bot+netdevbpf: 2, syzbot: 2, Sasha Levin: 1).

---

## Summary
During week 21 (18 - 24 May 2026) the linux-bluetooth mailing list carried 300 messages, 179 from contributors and 121 from CI and bots. There were 68 human-initiated threads: 48 kernel patch series, 16 BlueZ userspace series and 4 discussions or reports. 18 patches were applied via patchwork and 13 commits were pushed to bluez repositories. The most active contributor was Luiz Augusto von Dentz (Intel) with 34 messages. 10 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: L2CAP: rate-limit ECHO_RSP per signaling PDU](https://lore.kernel.org/linux-bluetooth/20260518002800.1361430-1-michael.bommarito@gmail.com/) | Michael Bommarito | Independent | 1 | Initial version |
| [arm64: dts: qcom: monaco-arduino-monza: Add QCA2066 M.2 WiFi/BT support](https://lore.kernel.org/linux-bluetooth/20260520-monza-wireless-v1-3-9f6942310653@oss.qualcomm.com/) | Loic Poulain | Qualcomm | 3 | Initial version |
| [Bluetooth: L2CAP: Fix slab-use-after-free in l2cap_sock_cleanup_listen()](https://lore.kernel.org/linux-bluetooth/20260520163859.2859782-1-oss@fourdim.xyz/) | Siwei Zhang | Independent | 1 | Version 7 |
| [Bluetooth: L2CAP: reject BR/EDR signaling packets over MTUsig](https://lore.kernel.org/linux-bluetooth/20260520135034.1060859-1-michael.bommarito@gmail.com/) | Michael Bommarito | Independent | 1 | Version 2 |
| [Bluetooth: L2CAP: reject BR/EDR signaling packets over MTUsig](https://lore.kernel.org/linux-bluetooth/20260521000555.3712030-1-michael.bommarito@gmail.com/) | Michael Bommarito | Independent | 1 | Version 3 |
| [Bluetooth: hci_qca: Increase SSR delay for rampatch and NVM loading](https://lore.kernel.org/linux-bluetooth/20260522110838.1158643-1-shuai.zhang@oss.qualcomm.com/) | Shuai Zhang | Qualcomm | 1 | Initial version |
| [Bluetooth: hci_qca: Support QCA2066 on M.2 connector via pwrseq](https://lore.kernel.org/linux-bluetooth/20260520-monza-wireless-v1-2-9f6942310653@oss.qualcomm.com/) | Loic Poulain | Qualcomm | 3 | Initial version |
| [Bluetooth: btmtk: remove extra copy in cmd array init](https://lore.kernel.org/linux-bluetooth/20260520021500.13504-1-liujiajia@kylinos.cn/) | Jiajia Liu | Independent | 1 | Initial version |
| [Bluetooth: L2CAP: use chan timer to close channels in cleanup_listen()](https://lore.kernel.org/linux-bluetooth/20260520200611.3033410-1-oss@fourdim.xyz/) | Siwei Zhang | Independent | 1 | Initial version |
| [Bluetooth: Add SPDX id lines to some source files](https://lore.kernel.org/linux-bluetooth/20260523001337.28134-1-tim.bird@sony.com/) | Tim Bird | Independent | 1 | Initial version |
| [Bluetooth: HIDP: fix missing length checks in hidp_input_report()](https://lore.kernel.org/linux-bluetooth/20260520214133.27746-1-meatuni001@gmail.com/) | Muhammad Bilal | Independent | 1 | Version 2 |
| [Bluetooth: HIDP: fix missing length checks in hidp_input_report()](https://lore.kernel.org/linux-bluetooth/20260520225643.35683-1-meatuni001@gmail.com/) | Muhammad Bilal | Independent | 1 | Version 3 |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [client/btpclient: Add GAP extended advertising support](https://lore.kernel.org/linux-bluetooth/20260519105519.226648-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 3 | Initial version |
| [Add Synaptics BCM4384 Bluetooth support](https://lore.kernel.org/linux-bluetooth/20260520090131.3505676-1-kaihsin.chung@synaptics.com/) | kaihsin Chung | Independent | 2 | Version 6 |
| [shared/bap: Fix unused value in qos](https://lore.kernel.org/linux-bluetooth/20260521032815.1845-1-kx960506@163.com/) | michael_kong | Independent | 2 | Initial version |
| [Fixes/improvements for the PCI M.2 power sequencing driver](https://lore.kernel.org/linux-bluetooth/20260519-pwrseq-m2-bt-v3-0-b39dc2ae3966@oss.qualcomm.com/) | Manivannan Sadhasivam | Independent | 9 | Version 3 |
| [client/btpclient: Fix GAP unpair command](https://lore.kernel.org/linux-bluetooth/20260519074742.163473-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 2 | Initial version |
| [client/btpclient: Fix GAP unpair command](https://lore.kernel.org/linux-bluetooth/20260519085016.188744-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 2 | Version 2 |
| [device: fix inverted NULL check in gatt_db clone](https://lore.kernel.org/linux-bluetooth/tencent_017770C54B37BDA20BEEC119272E1AED0608@qq.com/) | Zhao Dongdong | Independent | 1 | Version 2 |
| [doc: Fix Data Path direction in btmin-le-audio.rst](https://lore.kernel.org/linux-bluetooth/20260521060919.2124-1-kx960506@163.com/) | michael_kong | Independent | 1 | Initial version |
| [shared/rap: Add client ranging registration and notification parsing](https://lore.kernel.org/linux-bluetooth/20260521071821.2355923-1-prathm@qti.qualcomm.com/) | Prathibha Madugonde | Qualcomm | 1 | Version 2 |
| [shared/rap: Add client real-time ranging registration and notification parsing](https://lore.kernel.org/linux-bluetooth/20260520163037.1823823-1-prathm@qti.qualcomm.com/) | Prathibha Madugonde | Qualcomm | 1 | Initial version |
| [device: fix inverted NULL check in gatt_db clone](https://lore.kernel.org/linux-bluetooth/tencent_9B9A0B74FBCC9D4EF1CA4D8EE89DFB444606@qq.com/) | Zhao Dongdong | Independent | 1 | Initial version |
| [monitor: Add support for HCI Event Encryption Change v2](https://lore.kernel.org/linux-bluetooth/20260522111540.581113-1-apusaka@google.com/) | Archie Pusaka | Google | 1 | Initial version |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [Add configurable default LE PHY policy](https://lore.kernel.org/linux-bluetooth/20260524221421.258593-1-tarjeib@gmail.com/) | Tarjei Bitustøyl | 2 messages |
| [[GIT PULL] bluetooth 2026-05-20](https://lore.kernel.org/linux-bluetooth/20260520204959.2902497-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 2 messages |
| [[REGRESSION] Bluetooth: MT7922 fails to initialize after "Bluetooth: btmtk: vali...](https://lore.kernel.org/linux-bluetooth/CADCSNFD0Ut-jJohTQFczjBgaVf=mBrc2rq4hJQncVZpF4bCoxw@mail.gmail.com/) | Baley Eccles | 2 messages |
| [RTL8922A (0bda:d922): BLE HID disconnects with supervision timeout (0x08) during...](https://lore.kernel.org/linux-bluetooth/20d6a474-18c9-439b-8b01-a3ef5e8310cd@posteo.de/) | Benjamin Mirko Blume | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Bluetooth: HIDP: fix missing length checks in hidp_input_report()](https://lore.kernel.org/linux-bluetooth/20260520225643.35683-1-meatuni001@gmail.com/) | v2->v3 |
| [Bluetooth: L2CAP: reject BR/EDR signaling packets over MTUsig](https://lore.kernel.org/linux-bluetooth/20260521144518.1361335-1-michael.bommarito@gmail.com/) | v2->v3->v4 |
| [Bluetooth: L2CAP: use chan timer to close channels in cleanup_listen()](https://lore.kernel.org/linux-bluetooth/20260521021249.3258069-1-oss@fourdim.xyz/) | v1->v2 |
| [Bluetooth: RFCOMM: add minimum length check in rfcomm_recv_frame](https://lore.kernel.org/linux-bluetooth/20260519184821.18925-1-meatuni001@gmail.com/) | v1->v2->v3->v4 |
| [Bluetooth: bnep: reject short frames before parsing](https://lore.kernel.org/linux-bluetooth/20260521052611.1815693-1-rollkingzzc@gmail.com/) | v3->v4 |
| [Bluetooth: btusb: Add Realtek RTL8852BE BT 0x04c5/0x1670 (Fujitsu)](https://lore.kernel.org/linux-bluetooth/20260518210335.1105068-1-jarys.cz@gmail.com/) | v1->v2 |
| [Bluetooth: hci_uart: fix UAFs and race conditions in close and init pa](https://lore.kernel.org/linux-bluetooth/20260518024949.439299-1-w15303746062@163.com/) | v8->v9 |
| [client/btpclient: Fix GAP unpair command](https://lore.kernel.org/linux-bluetooth/20260519085016.188744-1-frederic.danis@collabora.com/) | v1->v2 |
| [device: fix inverted NULL check in gatt_db clone](https://lore.kernel.org/linux-bluetooth/tencent_017770C54B37BDA20BEEC119272E1AED0608@qq.com/) | v1->v2 |
| [shared/rap: Add client ranging registration and notification parsing](https://lore.kernel.org/linux-bluetooth/20260521111550.2508891-1-prathm@qti.qualcomm.com/) | v2->v4 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 34 |
| Siwei Zhang | Independent | 12 |
| Manivannan Sadhasivam | Independent | 12 |
| Michael Bommarito | Independent | 10 |
| Muhammad Bilal | Independent | 10 |
| Frédéric Danis | Collabora | 8 |
| Loic Poulain | Qualcomm | 7 |
| Greg KH | Independent | 6 |
| Thorsten Leemhuis | Independent | 5 |
| Dmitry Baryshkov | Qualcomm | 5 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: MGMT: validate Add Extended Advertising Data length](https://lore.kernel.org/linux-bluetooth/177914100613.1984363.1176300915940293179.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtk: fix urb->setup_packet leak in error paths](https://lore.kernel.org/linux-bluetooth/177914100464.1984363.3049951945476473554.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_uart: fix UAFs and race conditions in close and init pa](https://lore.kernel.org/linux-bluetooth/177920280488.2756414.8251481561878776667.git-patchwork-notify@kernel.org/)
- [Bluetooth: fix UAF in l2cap_sock_cleanup_listen() vs l2cap_conn_del()](https://lore.kernel.org/linux-bluetooth/177930720449.3737015.13239327454432512997.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: fix chan ref leak in l2cap_chan_timeout() on !conn](https://lore.kernel.org/linux-bluetooth/177937742713.384060.6353314036524937573.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtk: remove extra copy in cmd array init](https://lore.kernel.org/linux-bluetooth/177937742563.384060.10935423618601860001.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_conn: Fix memory leak in hci_le_big_terminate()](https://lore.kernel.org/linux-bluetooth/177937742413.384060.3222345140031912120.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: use chan timer to close channels in cleanup_listen()](https://lore.kernel.org/linux-bluetooth/177937742263.384060.14413660411972346162.git-patchwork-notify@kernel.org/)
- [Bluetooth: HIDP: fix missing length checks in hidp_input_report()](https://lore.kernel.org/linux-bluetooth/177937742113.384060.11759025481013709702.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: Allow firmware re-download when version matches](https://lore.kernel.org/linux-bluetooth/177937741964.384060.1194018588221994045.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: Allow firmware re-download when version matches](https://lore.kernel.org/linux-bluetooth/177937741813.384060.14319271092503544369.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [shared/rap: fix use of uninitialized value](https://lore.kernel.org/linux-bluetooth/177914340713.1994926.13382920627560378159.git-patchwork-notify@kernel.org/)
- [device: fix inverted NULL check in gatt_db clone](https://lore.kernel.org/linux-bluetooth/177914340564.1994926.16942800321099150405.git-patchwork-notify@kernel.org/)
- [tester.config: add missing CRYPTO_AES](https://lore.kernel.org/linux-bluetooth/177937020756.309926.1774626011773589967.git-patchwork-notify@kernel.org/)
- [client/btpclient: Add GAP extended advertising support](https://lore.kernel.org/linux-bluetooth/177937020614.309926.17020443890346502033.git-patchwork-notify@kernel.org/)
- [shared/bap: Fix unused value in qos](https://lore.kernel.org/linux-bluetooth/177937080686.318149.11082502260395458608.git-patchwork-notify@kernel.org/)
- [doc: Fix Data Path direction in btmin-le-audio.rst](https://lore.kernel.org/linux-bluetooth/177937080557.318149.17077931742242076597.git-patchwork-notify@kernel.org/)
- [shared/bap: set QoS state when CIS is lost](https://lore.kernel.org/linux-bluetooth/177946740515.1283301.14377729161583626182.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- [client/btpclient: refactor read-commands bitmap bu...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1097304%2F000000-e6f7d0@github.com/)
- [client/btpclient: Fix GAP unpair command](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1097183%2F000000-05e977@github.com/)
- [gitlint: ignore lines with URLs and enable regex-s...](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2Ff2343f-9b6d3e@github.com/)
- [ci: add verify_fixes and verify_signedoff checks f...](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2F80ebbf-c1b86b@github.com/)
- [ci: use HEAD^2 in verify scripts to skip GitHub me...](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2Fc1b86b-f2343f@github.com/)
- [all: Fix "exit" typos](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2F9b6d3e-3dfee9@github.com/)
- [tester.config: add missing CRYPTO_AES](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F757cd9-d167d3@github.com/)
- [shared/bap: Fix unused value in qos](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1098419%2F000000-e58872@github.com/)
- [doc: Fix Data Path direction in btmin-le-audio.rst](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1098468%2F000000-b65a3a@github.com/)
- [test-mesh-crypto: Don't attempt to run test if AF_...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1099512%2F000000-41cabc@github.com/)
- [monitor: Add support for HCI Event Encryption Chan...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1099306%2F000000-6e45cd@github.com/)
- [shared/bap: set QoS state when CIS is lost](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2Fd167d3-f818e9@github.com/)
- [adapter: Add configurable default LE PHYs](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1100107%2F000000-4655bf@github.com/)

---

## Company Focus Areas

### Independent Contributors

- [Bluetooth: L2CAP: rate-limit ECHO_RSP per signaling PDU](https://lore.kernel.org/linux-bluetooth/20260518002800.1361430-1-michael.bommarito@gmail.com/)
- [Bluetooth: L2CAP: Fix slab-use-after-free in l2cap_sock_cleanup_listen()](https://lore.kernel.org/linux-bluetooth/20260520163859.2859782-1-oss@fourdim.xyz/)
- [Bluetooth: L2CAP: reject BR/EDR signaling packets over MTUsig](https://lore.kernel.org/linux-bluetooth/20260520135034.1060859-1-michael.bommarito@gmail.com/)
- [Bluetooth: L2CAP: reject BR/EDR signaling packets over MTUsig](https://lore.kernel.org/linux-bluetooth/20260521000555.3712030-1-michael.bommarito@gmail.com/)

### Qualcomm

- [arm64: dts: qcom: monaco-arduino-monza: Add QCA2066 M.2 WiFi/BT support](https://lore.kernel.org/linux-bluetooth/20260520-monza-wireless-v1-3-9f6942310653@oss.qualcomm.com/)
- [Bluetooth: hci_qca: Increase SSR delay for rampatch and NVM loading](https://lore.kernel.org/linux-bluetooth/20260522110838.1158643-1-shuai.zhang@oss.qualcomm.com/)
- [Bluetooth: hci_qca: Support QCA2066 on M.2 connector via pwrseq](https://lore.kernel.org/linux-bluetooth/20260520-monza-wireless-v1-2-9f6942310653@oss.qualcomm.com/)
- [Bluetooth: btusb: Allow firmware re-download when version matches](https://lore.kernel.org/linux-bluetooth/20260521052547.2862803-1-shuaz@qti.qualcomm.com/)

### Collabora

- [client/btpclient: Add GAP extended advertising support](https://lore.kernel.org/linux-bluetooth/20260519105519.226648-1-frederic.danis@collabora.com/)
- [client/btpclient: Fix GAP unpair command](https://lore.kernel.org/linux-bluetooth/20260519074742.163473-1-frederic.danis@collabora.com/)
- [client/btpclient: Fix GAP unpair command](https://lore.kernel.org/linux-bluetooth/20260519085016.188744-1-frederic.danis@collabora.com/)

### Intel

- [[GIT PULL] bluetooth 2026-05-20](https://lore.kernel.org/linux-bluetooth/20260520204959.2902497-1-luiz.dentz@gmail.com/)
- [Bluetooth: L2CAP: Fix possible crash on l2cap_ecred_conn_rsp](https://lore.kernel.org/linux-bluetooth/20260521190332.3171234-1-luiz.dentz@gmail.com/)
- [test-mesh-crypto: Don't attempt to run test if AF_ALG is not available](https://lore.kernel.org/linux-bluetooth/20260522164912.3253018-1-luiz.dentz@gmail.com/)

### Google

- [monitor: Add support for HCI Event Encryption Change v2](https://lore.kernel.org/linux-bluetooth/20260522111540.581113-1-apusaka@google.com/)
