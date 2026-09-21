---
title: "linux-bluetooth Weekly Report - Week 33"
date: 2026-08-16
summary: "Total messages: 235 (145 human, 90 CI/bot)"
draft: false
---

**Total messages: 235 (145 human, 90 CI/bot)**

Note: Of the 235 messages, 145 are human-generated, 90 are CI/bot (bluez.test.bot: 42, patchwork-bot+bluetooth: 21, BluezTestBot: 15, bugzilla-daemon: 7, kernel test robot: 3, syzbot: 1, Sasha Levin: 1).

---

## Summary
During week 33 (10 - 16 August 2026) the linux-bluetooth mailing list carried 235 messages, 145 from contributors and 90 from CI and bots. There were 51 human-initiated threads: 34 kernel patch series, 12 BlueZ userspace series and 5 discussions or reports. 21 patches were applied via patchwork and 10 commits were pushed to bluez repositories. The most active contributor was Bastien Nocera (Red Hat) with 27 messages. 7 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: btintel: harden version TLV parsing](https://lore.kernel.org/linux-bluetooth/20260814171503.42684-1-acharyalaxman8848@gmail.com/) | Laxman Acharya Padhya | Independent | 3 | Version 2 |
| [Bluetooth: L2CAP: avoid maybe-return-locked in l2cap_get_chan_by_scid/dcid](https://lore.kernel.org/linux-bluetooth/35f8d2856ef35e1c6314101ee60b16af39d88e78.1786871620.git.pav@iki.fi/) | Pauli Virtanen | Independent | 3 | Version 2 |
| [Bluetooth: btintel_pcie: parse FW memory region addresses via mailbox TLV](https://lore.kernel.org/linux-bluetooth/20260811154553.629211-1-kiran.k@intel.com/) | Kiran K | Intel | 3 | Initial version |
| [Bluetooth: btmtk: fix subsystem reset error reporting](https://lore.kernel.org/linux-bluetooth/20260815110119.11301-1-ismailtarim7@gmail.com/) | Ismail Tarim | Independent | 2 | Initial version |
| [Bluetooth: btmtk: fix subsystem reset error reporting](https://lore.kernel.org/linux-bluetooth/20260815115624.8309-1-ismailtarim7@gmail.com/) | Ismail Tarim | Independent | 2 | Version 2 |
| [Bluetooth: btnxpuart: Validate the FW dump header length](https://lore.kernel.org/linux-bluetooth/20260814084110.920879-1-ali@iusegentoo.com/) | Ali Ahmet Memis | Independent | 1 | Version 2 |
| [Bluetooth: btusb: treat 0bda:0002 as a generic HCI device](https://lore.kernel.org/linux-bluetooth/20260815033346.15882-1-andrewbille@gmail.com/) | Andrew Bille | Independent | 1 | Initial version |
| [Bluetooth: hci_sync: Clear HCI_CMD_PENDING when dropping the last request](https://lore.kernel.org/linux-bluetooth/20260811083730.71393-1-johannes.goede@oss.qualcomm.com/) | Hans de Goede | Qualcomm | 2 | Initial version |
| [Bluetooth: virtio_bt: harden probe error paths](https://lore.kernel.org/linux-bluetooth/20260811032702.67908-1-cong.yi@linux.dev/) | Yi Cong | Independent | 2 | Initial version |
| [Bluetooth: ISO: fix use-after-free of listener socket in iso_conn_ready](https://lore.kernel.org/linux-bluetooth/tencent_E5954D5C14D99713A73E3121B97EEDA6170A@qq.com/) | Hang Nan | Independent | 1 | Version 2 |
| [Bluetooth: bnep: refactor deprecated strcpy](https://lore.kernel.org/linux-bluetooth/20260811094932.86448-1-ajithpv.linux@gmail.com/) | Ajith P V | Independent | 1 | Initial version |
| [Bluetooth: btintel: Bound exception info print to the received length](https://lore.kernel.org/linux-bluetooth/20260814080123.902388-1-ali@iusegentoo.com/) | Ali Ahmet Memis | Independent | 1 | Initial version |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [3 SDP XML security fixes](https://lore.kernel.org/linux-bluetooth/20260812080410.2116906-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 9 | Version 4 |
| [3 SDP XML security fixes](https://lore.kernel.org/linux-bluetooth/20260811145704.1766949-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 9 | Version 3 |
| [Add CS distance provider implementation](https://lore.kernel.org/linux-bluetooth/20260812100345.2956271-1-naga.akella@oss.qualcomm.com/) | Naga Bhavani Akella | Qualcomm | 5 | Version 2 |
| [device_schedule_reprobe(): core helper and conversions](https://lore.kernel.org/linux-bluetooth/anpxFdwNxk0XwPjQ@makrotopia.org/) | Daniel Golle | Independent | 4 | Initial version |
| [adv_monitor: Fix buffer overflow caused by integer overflow](https://lore.kernel.org/linux-bluetooth/20260813091937.2600061-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 2 | Initial version |
| [attrib: Fix smatch "non-ANSI function declaration" warning](https://lore.kernel.org/linux-bluetooth/20260814092747.3064311-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 1 | Initial version |
| [sdp-xml: Fix leaking the parse stack on malformed input](https://lore.kernel.org/linux-bluetooth/20260814174731.1441738-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 3 | Initial version |
| [avrcp: Fix Out-of-Bounds Read in AVRCP GetFolderItems parsing](https://lore.kernel.org/linux-bluetooth/20260814140155.3155081-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 1 | Version 4 |
| [driver core: add device_schedule_reprobe()](https://lore.kernel.org/linux-bluetooth/anpxXANMYTlOHbPo@makrotopia.org/) | Daniel Golle | Independent | 4 | Initial version |
| [media: fix wrong argument to lp_get_uid() in avrcp-player](https://lore.kernel.org/linux-bluetooth/f2c2db83dbe2a47623828db3e5f4baf476336d9e.1786827817.git.pav@iki.fi/) | Pauli Virtanen | Independent | 1 | Initial version |
| [monitor: clamp max_len in print_packet](https://lore.kernel.org/linux-bluetooth/20260814230419.2042327-1-chad@allthenticate.com/) | Chad Spensky | Independent | 1 | Initial version |
| [sdp-xml: Use a queue to collect sequence members](https://lore.kernel.org/linux-bluetooth/20260814173225.1410500-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 1 | Initial version |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [[BUG] Bluetooth: WCN6855 10ab:9309 stops reporting ISO TX completions during BAP...](https://lore.kernel.org/linux-bluetooth/28554782-1f3b-4537-b891-1c483a29e8c3@posteo.de/) | Jonas Zunker | 4 messages |
| [Please backport two btusb/btrtl commits for RTL8761BU to 7.1.y, 6.18.y, 6.12.y a...](https://lore.kernel.org/linux-bluetooth/em37b1be4a-6bda-427f-a913-4d6e6521e457@gmail.com/) | Stefan Muraru | 2 messages |
| [CVE Request: BlueZ AVRCP Out-of-Bounds Read (CWE-125)](https://lore.kernel.org/linux-bluetooth/CADE-WFd0FhWa=cc-w1_cm3C8kRdc3PE5HaFJ+uSM+99jjr_wjg@mail.gmail.com/) | Elman Shahbazov | 1 message |
| [[BUG] Bluetooth: KASAN null-ptr-deref in klist_put during HCI connection sysfs t...](https://lore.kernel.org/linux-bluetooth/CAA2SOT5U4fUJg2DOKr0-YKm0g5xAutjLKvkci99k5kQ6GMtf0g@mail.gmail.com/) | ZW Tang | 1 message |
| [[BUG] Bluetooth: MT7922 active LE scan misses ADV_SCAN_IND seen during passive s...](https://lore.kernel.org/linux-bluetooth/SJV4NCsCsuzgYtrsd-ssacoDxzwaT1MYgaSnswFnNLg84G1cUlFPrTttf7W_o9fcIQOtKCRlRl0myFNq9ubEsASY7-8_5WyHDMGxsblJE6U=@proton.me/) | nibbo | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [3 SDP XML security fixes](https://lore.kernel.org/linux-bluetooth/20260812080410.2116906-1-hadess@hadess.net/) | v3->v4 |
| [Bluetooth: ISO: fix use-after-free of listener socket in iso_conn_read](https://lore.kernel.org/linux-bluetooth/tencent_E5954D5C14D99713A73E3121B97EEDA6170A@qq.com/) | v1->v2 |
| [Bluetooth: btintel: validate version TLV value lengths](https://lore.kernel.org/linux-bluetooth/20260814171503.42684-2-acharyalaxman8848@gmail.com/) | v1->v2 |
| [Bluetooth: btmtk: fix subsystem reset error reporting](https://lore.kernel.org/linux-bluetooth/20260815115624.8309-1-ismailtarim7@gmail.com/) | v1->v2 |
| [Bluetooth: btnxpuart: Validate the FW dump header length](https://lore.kernel.org/linux-bluetooth/20260814182849.940976-1-ali@iusegentoo.com/) | v1->v2->v3 |
| [Bluetooth: btusb: treat 0bda:0002 rev 7558 as a generic HCI device](https://lore.kernel.org/linux-bluetooth/20260815095127.29624-1-andrewbille@gmail.com/) | v2->v3 |
| [unit: Add test for sdp_xml_parse_record()](https://lore.kernel.org/linux-bluetooth/20260812080410.2116906-2-hadess@hadess.net/) | v3->v4 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Bastien Nocera | Red Hat | 27 |
| Luiz Augusto von Dentz | Intel | 11 |
| Pauli Virtanen | Independent | 10 |
| Naga Bhavani Akella | Qualcomm | 7 |
| hadess | Red Hat | 6 |
| Ali Ahmet Memis | Independent | 6 |
| Ismail Tarim | Independent | 6 |
| Daniel Golle | Independent | 5 |
| Laxman Acharya Padhya | Independent | 5 |
| Manivannan Sadhasivam | Independent | 5 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: L2CAP: reject accept queue add unless BT_LISTEN](https://lore.kernel.org/linux-bluetooth/178647901488.1134064.17530228641432806685.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtksdio: fix deadlock in close and reset paths](https://lore.kernel.org/linux-bluetooth/178647901335.1134064.2663051483826196708.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_bcm: fix usage_count leak when autosuspend_delay is neg](https://lore.kernel.org/linux-bluetooth/178647901188.1134064.781270046343002067.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: access chan->conn safely in get/setsockopt](https://lore.kernel.org/linux-bluetooth/178647901038.1134064.15275221947394205709.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: Clear HCI_CMD_PENDING when dropping the last requ](https://lore.kernel.org/linux-bluetooth/178647900915.1134064.11707666593550364764.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_intel: fix usage_count leak when autosuspend_delay is n](https://lore.kernel.org/linux-bluetooth/178647902888.1134064.482617253125004598.git-patchwork-notify@kernel.org/)
- [Bluetooth: virtio_bt: Fix use-after-free and memory leak in probe erro](https://lore.kernel.org/linux-bluetooth/178647902738.1134064.8343131189969253325.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_h5: fix usage_count leak when autosuspend_delay is nega](https://lore.kernel.org/linux-bluetooth/178647902588.1134064.14529193736524382598.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: fix race l2cap_sock_cleanup_listen() vs. put_chan](https://lore.kernel.org/linux-bluetooth/178647902444.1134064.3239306935930173291.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: Add Realtek RTL8821CE device 13d3:3558](https://lore.kernel.org/linux-bluetooth/178647902288.1134064.4544105919269302004.git-patchwork-notify@kernel.org/)
- [Bluetooth: mgmt: fix 'hdev->discovery.uuids' NULL dereference](https://lore.kernel.org/linux-bluetooth/178647902138.1134064.3407354756099050470.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_serdev: Fix use-after-free in hci_uart_unregister_devic](https://lore.kernel.org/linux-bluetooth/178647901938.1134064.357441239366725882.git-patchwork-notify@kernel.org/)
- [Bluetooth: bnep: refactor deprecated strcpy](https://lore.kernel.org/linux-bluetooth/178647901788.1134064.15151706764322926988.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmrvl: Slightly simplify btmrvl_process_event()](https://lore.kernel.org/linux-bluetooth/178647901638.1134064.11068841351283919495.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [client: Avoid scan prompt when discovery is already active](https://lore.kernel.org/linux-bluetooth/178647960920.1138292.11461123973777581306.git-patchwork-notify@kernel.org/)
- [tools/l2cap-tester: add tests changing BT_SECURITY after connecting](https://lore.kernel.org/linux-bluetooth/178647960763.1138292.17435722690288115421.git-patchwork-notify@kernel.org/)
- [emulator: btvirt: support debug for -s socket server](https://lore.kernel.org/linux-bluetooth/178647960618.1138292.9372075870430178417.git-patchwork-notify@kernel.org/)
- [adv_monitor: Fix buffer overflow caused by integer overflow](https://lore.kernel.org/linux-bluetooth/178672801263.3885098.12402993534569851547.git-patchwork-notify@kernel.org/)
- [attrib: Fix smatch "non-ANSI function declaration" warning](https://lore.kernel.org/linux-bluetooth/178672801113.3885098.13144459149018536960.git-patchwork-notify@kernel.org/)
- [avrcp: Fix Out-of-Bounds Read in AVRCP GetFolderItems parsing](https://lore.kernel.org/linux-bluetooth/178672800963.3885098.13548471500210922609.git-patchwork-notify@kernel.org/)
- [3 SDP XML security fixes](https://lore.kernel.org/linux-bluetooth/178672800814.3885098.3891730375352054107.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- [tools/l2cap-tester: add tests changing BT_SECURITY...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F690c16-10df0b@github.com/)
- [unit: Add test for sdp_xml_parse_record()](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1144151%2F000000-ba6f40@github.com/)
- [doc: Add org.bluez.CSDistance1 documentation](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1144626%2F000000-fccc3b@github.com/)
- [adv_monitor: Fix buffer overflow caused by integer...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1145281%2F000000-3a78ed@github.com/)
- [monitor: clamp max_len in print_packet](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1146334%2F000000-b0c2f7@github.com/)
- [sdp-xml: Use a queue to collect sequence members](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1146222%2F000000-421aab@github.com/)
- [sdp-xml: Fix leaking the parse stack on malformed ...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1146225%2F000000-6ba044@github.com/)
- [attrib: Fix smatch "non-ANSI function declaration"...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1145981%2F000000-3ca1cb@github.com/)
- [avrcp: Fix Out-of-Bounds Read in AVRCP GetFolderIt...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1146125%2F000000-61b2d3@github.com/)
- [media: fix wrong argument to lp_get_uid() in avrcp...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1146603%2F000000-582ec3@github.com/)

---

## Company Focus Areas

### Independent Contributors

- [device_schedule_reprobe(): core helper and conversions](https://lore.kernel.org/linux-bluetooth/anpxFdwNxk0XwPjQ@makrotopia.org/)
- [Bluetooth: btintel: harden version TLV parsing](https://lore.kernel.org/linux-bluetooth/20260814171503.42684-1-acharyalaxman8848@gmail.com/)
- [[BUG] Bluetooth: WCN6855 10ab:9309 stops reporting ISO TX completions during BAP...](https://lore.kernel.org/linux-bluetooth/28554782-1f3b-4537-b891-1c483a29e8c3@posteo.de/)
- [Bluetooth: L2CAP: avoid maybe-return-locked in l2cap_get_chan_by_scid/dcid](https://lore.kernel.org/linux-bluetooth/35f8d2856ef35e1c6314101ee60b16af39d88e78.1786871620.git.pav@iki.fi/)

### Red Hat

- [3 SDP XML security fixes](https://lore.kernel.org/linux-bluetooth/20260812080410.2116906-1-hadess@hadess.net/)
- [3 SDP XML security fixes](https://lore.kernel.org/linux-bluetooth/20260811145704.1766949-1-hadess@hadess.net/)
- [adv_monitor: Fix buffer overflow caused by integer overflow](https://lore.kernel.org/linux-bluetooth/20260813091937.2600061-1-hadess@hadess.net/)
- [attrib: Fix smatch "non-ANSI function declaration" warning](https://lore.kernel.org/linux-bluetooth/20260814092747.3064311-1-hadess@hadess.net/)

### UnionTech

- [Bluetooth: btintel_pcie: Fix array bounds check bugs](https://lore.kernel.org/linux-bluetooth/460316663D6D34ED+20260813103734.222955-1-zhaojinming@uniontech.com/)
- [Bluetooth: btmtksdio: fix deadlock in close and reset paths](https://lore.kernel.org/linux-bluetooth/81B94E6D2ACC0BFD+20260810-btmtksdio-deadlock-fix-v2-1-0eb31f9066d6@uniontech.com/)
- [Bluetooth: hci_serdev: Fix use-after-free in hci_uart_unregister_device()](https://lore.kernel.org/linux-bluetooth/D747A53C08BD2456+20260810-bluetooth-hci-serdev-uart-unregister-v2-1-690493a6ab95@uniontech.com/)
- [Bluetooth: virtio_bt: Fix use-after-free and memory leak in probe error paths](https://lore.kernel.org/linux-bluetooth/20260811-virtio-bt-fix-probe-errors-v1-1-2f1acfde8336@uniontech.com/)

### Intel

- [Bluetooth: btintel_pcie: parse FW memory region addresses via mailbox TLV](https://lore.kernel.org/linux-bluetooth/20260811154553.629211-1-kiran.k@intel.com/)
- [sdp-xml: Fix leaking the parse stack on malformed input](https://lore.kernel.org/linux-bluetooth/20260814174731.1441738-1-luiz.dentz@gmail.com/)
- [sdp-xml: Use a queue to collect sequence members](https://lore.kernel.org/linux-bluetooth/20260814173225.1410500-1-luiz.dentz@gmail.com/)

### Qualcomm

- [Add CS distance provider implementation](https://lore.kernel.org/linux-bluetooth/20260812100345.2956271-1-naga.akella@oss.qualcomm.com/)
- [Bluetooth: hci_sync: Clear HCI_CMD_PENDING when dropping the last request](https://lore.kernel.org/linux-bluetooth/20260811083730.71393-1-johannes.goede@oss.qualcomm.com/)
