---
title: "linux-bluetooth Weekly Report - Week 21"
date: 2026-05-25
summary: "Total messages: 336 (201 human, 135 CI/bot)"
draft: false
---

**Total messages: 336 (201 human, 135 CI/bot)**

Note: Of the 336 messages, 201 are human-generated, 135 are CI/bot (bluez.test.bot: 59, bugzilla-daemon: 22, BluezTestBot: 19, patchwork-bot+bluetooth: 18, github-actions[bot]: 4, kernel test robot: 4, prathibhamadugonde: 4, patchwork-bot+netdevbpf: 2, syzbot: 2, Sasha Levin: 1).

---

## Summary
This week saw active discussions and contributions across both kernel and BlueZ userspace patches, with a total of 336 messages exchanged. Key topics included fixes for memory leaks, race conditions, and use-after-free bugs in Bluetooth subsystems, as well as support for new hardware like QCA2066 and Realtek RTL8852BE. Collaboration among contributors from Intel, Qualcomm, Collabora, and independent developers was evident in addressing critical issues and adding new features.

---

## Key Patch Series & Discussions

### Kernel Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: L2CAP: rate-limit ECHO_RSP per signaling PDU](https://lore.kernel.org/linux-bluetooth/20260518002800.1361430-1-michael.bommarito@gmail.com/) | Michael Bommarito | Independent | 0 | 7 messages exchanged |
| [Bluetooth: hci_qca: Increase SSR delay for rampatch and NVM loading](https://lore.kernel.org/linux-bluetooth/20260522110838.1158643-1-shuai.zhang@oss.qualcomm.com/) | Shuai Zhang | Qualcomm | 0 | 7 messages exchanged |
| [Bluetooth: L2CAP: Fix slab-use-after-free in l2cap_sock_cleanup_listen()](https://lore.kernel.org/linux-bluetooth/20260520163859.2859782-1-oss@fourdim.xyz/) | Siwei Zhang | Independent | 0 | v7, 6 messages exchanged |
| [arm64: dts: qcom: monaco-arduino-monza: Add QCA2066 M.2 WiFi/BT support](https://lore.kernel.org/linux-bluetooth/20260520-monza-wireless-v1-3-9f6942310653@oss.qualcomm.com/) | Loic Poulain | Qualcomm | 3 | 7 messages exchanged |
| [Bluetooth: btmtk: remove extra copy in cmd array init](https://lore.kernel.org/linux-bluetooth/20260520021500.13504-1-liujiajia@kylinos.cn/) | Jiajia Liu | Independent | 0 | 4 messages exchanged |

### BlueZ Userspace Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [client/btpclient: Add GAP extended advertising support](https://lore.kernel.org/linux-bluetooth/20260519105519.226648-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 3 | 5 messages exchanged |
| [shared/bap: Fix unused value in qos](https://lore.kernel.org/linux-bluetooth/20260521032815.1845-1-kx960506@163.com/) | michael_kong | Independent | 2 | 3 messages exchanged |
| [adapter: Add configurable default LE PHYs](https://lore.kernel.org/linux-bluetooth/20260525145010.154170-1-tarjeib@gmail.com/) | Tarjei Bitustøyl | Independent | 0 | v4, 2 messages exchanged |
| [client/btpclient: Fix GAP unpair command](https://lore.kernel.org/linux-bluetooth/20260519074742.163473-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 2 | v2, 2 messages exchanged |
| [shared/rap: Add client ranging registration and notification parsing](https://lore.kernel.org/linux-bluetooth/20260520163037.1823823-1-prathm@qti.qualcomm.com/) | Prathibha Madugonde | Qualcomm | 0 | v2, 2 messages exchanged |

### Discussions & Bug Reports
| Topic | From | Notes |
|-------|------|-------|
| [Bluetooth: RFCOMM: add minimum length check in rfcomm_recv_frame](https://lore.kernel.org/linux-bluetooth/20260519184821.18925-1-meatuni001@gmail.com/) | Muhammad Bilal | v4, 1 message |
| [Bluetooth: L2CAP: possible sock_put leak in l2cap_sock_shutdown](https://lore.kernel.org/linux-bluetooth/20260521085228.80538-1-stanislavsn1@verifone.com/) | stanislavsn1 | 1 message |
| [Bluetooth: btusb: Add Realtek RTL8852BE BT 0x04c5/0x1670 (Fujitsu)](https://lore.kernel.org/linux-bluetooth/20260518210335.1105068-1-jarys.cz@gmail.com/) | Jaroslav Srba | v2, 1 message |
| [Bluetooth: hci_uart: fix UAFs and race conditions in close and init paths](https://lore.kernel.org/linux-bluetooth/20260518024949.439299-1-w15303746062@163.com/) | w15303746062 | v9, 1 message |

---

## Top Contributors (by message count)
| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 34 |
| Siwei Zhang | Independent | 12 |
| Manivannan Sadhasivam | Independent | 12 |
| Michael Bommarito | Independent | 10 |
| Muhammad Bilal | Independent | 10 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)
- [Bluetooth: MGMT: validate Add Extended Advertising Data length](https://lore.kernel.org/linux-bluetooth/177914100613.1984363.1176300915940293179.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtk: fix urb->setup_packet leak in error paths](https://lore.kernel.org/linux-bluetooth/177914100464.1984363.3049951945476473554.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_uart: fix UAFs and race conditions in close and init pa](https://lore.kernel.org/linux-bluetooth/177920280488.2756414.8251481561878776667.git-patchwork-notify@kernel.org/)

### Pushed to bluez/bluez master
- [client/btpclient: refactor read-commands bitmap bu...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1097304%2F000000-e6f7d0@github.com/)
- [doc: Fix Data Path direction in btmin-le-audio.rst](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1098468%2F000000-b65a3a@github.com/)

---

## Company Focus Areas

### Intel
- Luiz Augusto von Dentz contributed to various patches, including fixes for L2CAP and mesh crypto tests.

### Qualcomm
- Shuai Zhang and Loic Poulain focused on QCA2066 hardware support and improvements in hci_qca.

### Collabora
- Frédéric Danis and Raghava447 worked on BlueZ patches, including extended advertising support and QoS fixes.

### Independent Contributors
- Significant contributions from Siwei Zhang, Michael Bommarito, and Muhammad Bilal addressing memory leaks, race conditions, and other critical bug fixes.

---

## Notable Trends
1. Increased focus on fixing memory leaks and race conditions in Bluetooth kernel subsystems.
2. Addition of support for new hardware, including QCA2066 and Realtek RTL8852BE.
3. Collaboration between companies like Intel, Qualcomm, and Collabora on critical patches.
4. Continued refinement of L2CAP and RFCOMM protocols to address edge cases and improve reliability.
5. Active iteration of patch series to address feedback and improve code quality.
6. Enhancement of BlueZ userspace tools with extended advertising and QoS features.
7. Ongoing efforts to improve documentation and testing frameworks for Bluetooth development.
```
