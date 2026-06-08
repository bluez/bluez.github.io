---
title: "linux-bluetooth Weekly Report - Week 23"
date: 2026-06-07
summary: "Total messages: 299 (190 human, 109 CI/bot)"
draft: false
---

**Total messages: 299 (190 human, 109 CI/bot)**

Note: Of the 299 messages, 190 are human-generated, 109 are CI/bot (bluez.test.bot: 49, patchwork-bot+bluetooth: 27, BluezTestBot: 19, bugzilla-daemon: 4, prathibhamadugonde: 3, patchwork-bot+netdevbpf: 2, github-actions[bot]: 2, syzbot: 1, Sasha Levin: 1, kernel test robot: 1).

---

## Summary
This week saw a total of 299 messages on the linux-bluetooth mailing list, with 190 human contributions and 109 bot-generated messages. Discussions revolved around bug fixes, feature enhancements, and support for new hardware, with significant contributions from Intel, Qualcomm, Red Hat, and Collabora. Notable topics included fixes for use-after-free issues, support for new Bluetooth devices, and updates to BlueZ profiles and tools.

---

## Key Patch Series & Discussions

### Kernel Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: btusb: fix wakeup irq devres lifetime](https://lore.kernel.org/linux-bluetooth/20260604063740.2595260-1-johan@kernel.org/) | Johan Hovold | Independent | 5 | v4, [Applied](https://lore.kernel.org/linux-bluetooth/178058834413.2488052.9198416432295112289.git-patchwork-notify@kernel.org/) |
| [Bluetooth: L2CAP: Fix UAF in l2cap_chan_timeout](https://lore.kernel.org/linux-bluetooth/20260603123111.2334409-1-elver@google.com/) | Marco Elver | Google | 1 | v1 |
| [Bluetooth: hci_event: fix simultaneous discovery stuck in FINDING](https://lore.kernel.org/linux-bluetooth/20260601012620.11764-1-liujiajia@kylinos.cn/) | Jiajia Liu | Independent | 1 | v1, [Applied](https://lore.kernel.org/linux-bluetooth/178050900789.1520440.5604013251973902506.git-patchwork-notify@kernel.org/) |
| [Bluetooth: btusb: Add support for TP-Link TL-UB250](https://lore.kernel.org/linux-bluetooth/20260603035818.926654-1-cxs1494089474@gmail.com/) | Cris | Independent | 1 | v2, [Applied](https://lore.kernel.org/linux-bluetooth/178050900665.1520440.1096131778194850357.git-patchwork-notify@kernel.org/) |
| [Bluetooth: hci_core: Fix UAF in hci_unregister_dev()](https://lore.kernel.org/linux-bluetooth/20260603085047.256779-1-jaggyaur@gmail.com/) | Jordan Walters | Independent | 1 | v4, [Applied](https://lore.kernel.org/linux-bluetooth/178050901088.1520440.5455772548360225875.git-patchwork-notify@kernel.org/) |

### BlueZ Userspace Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [profiles/audio/bass: Use BASS_Modify_Source when assistant is active](https://lore.kernel.org/linux-bluetooth/20260602210022.213562-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 4 | [Pushed](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1104856%2F000000-269d2a@github.com/) |
| [shared/bap: add ASE Control Point error responses](https://lore.kernel.org/linux-bluetooth/20260602082925.7061-1-raghavendra.rao@collabora.com/) | raghu447 | Collabora | 1 | [Pushed](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1104482%2F000000-6dc162@github.com/) |
| [build: Support libical 4.0](https://lore.kernel.org/linux-bluetooth/20260604080139.1264222-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 1 | [Pushed](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F2a6968-c6bc42@github.com/) |
| [adapter: Fix using case sensitive strncmp for pattern match addresses](https://lore.kernel.org/linux-bluetooth/20260604171933.129638-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 1 | [Pushed](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1106123%2F000000-ffc843@github.com/) |
| [test-mesh-crypto: Fix retval for skipped test](https://lore.kernel.org/linux-bluetooth/20260605093555.1969171-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 1 | [Pushed](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1106487%2F000000-8650ce@github.com/) |

### Discussions & Bug Reports
| Topic | From | Notes |
|-------|------|-------|
| [Bluetooth: Add SPDX id lines to some source files](https://lore.kernel.org/linux-bluetooth/20260604004125.715884-1-tim.bird@sony.com/) | Tim Bird | v2, v3 |
| [Bluetooth: Fix Use-After-Free in hci_unregister_dev](https://lore.kernel.org/linux-bluetooth/20260603075134.246832-1-jaggyaur@gmail.com/) | Jordan Walters | v1->v2->v3 |
| [Bluetooth: L2CAP: Fix use-after-free in l2cap_sock_new_connection_cb()](https://lore.kernel.org/linux-bluetooth/20260603150835.3539963-1-oss@fourdim.xyz/) | Siwei Zhang | v7->v8->v9 |
| [Bluetooth: btusb: Add support for TP-Link TL-UB250](https://lore.kernel.org/linux-bluetooth/20260603035818.926654-1-cxs1494089474@gmail.com/) | Cris | v1->v2 |

---

## Top Contributors (by message count)
| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 46 |
| Johan Hovold | Independent | 13 |
| Bastien Nocera | Red Hat | 12 |
| Dmitry Baryshkov | Qualcomm | 10 |
| Bartosz Golaszewski | Independent | 8 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)
- [Bluetooth: btusb: Add TP-Link UB600 for Realtek 8761BUV](https://lore.kernel.org/linux-bluetooth/178034100989.57646.131798545923088031.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: fix wakeup irq devres lifetime](https://lore.kernel.org/linux-bluetooth/178058834413.2488052.9198416432295112289.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_qca: fix NULL pointer dereferences for non-serdev devices](https://lore.kernel.org/linux-bluetooth/178034100604.57646.7464742328539604683.git-patchwork-notify@kernel.org/)

### Pushed to bluez/bluez master
- [profiles/audio/bass: Use BASS_Modify_Source when assistant is active](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1104856%2F000000-269d2a@github.com/)
- [build: Support libical 4.0](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F2a6968-c6bc42@github.com/)

---

## Company Focus Areas

### Intel
- Significant contributions from Luiz Augusto von Dentz, including patches for BlueZ profiles and tools.
- Kiran K worked on Bluetooth SAR revision 2 support and fixes for btintel_pcie.

### Red Hat
- Bastien Nocera focused on BlueZ build improvements and test fixes.

### Qualcomm
- Dmitry Baryshkov contributed to WiFi/BT chip support for SM8350.
- Prathibha Madugonde worked on ranging profile updates.

### Collabora
- Raghu447 contributed to shared BAP error handling and BlueZ updates.

### Google
- Marco Elver addressed use-after-free issues in L2CAP.

---

## Notable Trends
1. Increased focus on fixing use-after-free (UAF) bugs across multiple subsystems.
2. Hardware support enhancements, including new device compatibility for TP-Link and Qualcomm chips.
3. Continued improvements to BlueZ profiles, including audio and ranging features.
4. Collaboration across companies, with significant contributions from Intel, Qualcomm, and Collabora.
5. Updates to support newer libraries, such as libical 4.0.
6. Ongoing efforts to improve error handling and robustness in Bluetooth stack components.
```
