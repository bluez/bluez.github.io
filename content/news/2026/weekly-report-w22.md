---
title: "linux-bluetooth Weekly Report - Week 22"
date: 2026-05-31
summary: "Total messages: 202 (115 human, 87 CI/bot)"
draft: false
---

**Total messages: 202 (115 human, 87 CI/bot)**

Note: Of the 202 messages, 115 are human-generated, 87 are CI/bot (bluez.test.bot: 35, patchwork-bot+bluetooth: 18, bugzilla-daemon: 15, BluezTestBot: 14, syzbot: 2, kernel test robot: 2, patchwork-bot+netdevbpf: 1).

---

## Summary
This week saw active contributions to the linux-bluetooth mailing list, with 202 total messages exchanged. Key highlights included patches addressing security vulnerabilities, hardware support enhancements, and refactoring efforts for HCI reset functions. Collaboration between contributors from Intel, Qualcomm, and Collabora was evident, along with significant independent contributions.

---

## Key Patch Series & Discussions

### Kernel Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: hci_core: Refactor HCI reset functions](https://lore.kernel.org/linux-bluetooth/20260526-hci_send-v2-0-596977a9a814@igalia.com/) | Heitor Alves de Siqueira | Independent | 3 | Applied |
| [Add Synaptics BCM4384 Bluetooth support](https://lore.kernel.org/linux-bluetooth/20260527090849.3647601-1-kaihsin.chung@synaptics.com/) | kaihsin Chung | Independent | 2 | Version 7 |
| [Bluetooth: Add Broadcom channel priority commands](https://lore.kernel.org/linux-bluetooth/20260525-brcm-prio-v3-1-6259e10233f8@chaosmail.tech/) | Sasha Finkelstein | Independent | 0 | Version 3 |
| [Bluetooth: L2CAP: fix heap over-read in l2cap_get_conf_opt](https://lore.kernel.org/linux-bluetooth/20260526021747.31634-1-meatuni001@gmail.com/) | Muhammad Bilal | Independent | 0 | Applied |
| [Bluetooth: ISO: fix UAF in iso_recv_frame](https://lore.kernel.org/linux-bluetooth/20260527045919.39077-1-meatuni001@gmail.com/) | Muhammad Bilal | Independent | 2 | Applied |
| [Bluetooth: hci_qca: Use 100 ms SSR delay for rampatch and NVM loading](https://lore.kernel.org/linux-bluetooth/20260525065156.2213123-1-shuai.zhang@oss.qualcomm.com/) | Shuai Zhang | Qualcomm | 0 | Applied |
| [Bluetooth: RFCOMM: validate skb length in MCC handlers](https://lore.kernel.org/linux-bluetooth/20260525110443.139485-1-suunj1331@gmail.com/) | SeungJu Cheon | Independent | 0 | Applied |

### BlueZ Userspace Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [emulator/btdev: Add LE Set Host Feature V2 command emulation](https://lore.kernel.org/linux-bluetooth/20260526170309.3529062-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 2 | Applied |
| [advertising: add property with advertisement Instance](https://lore.kernel.org/linux-bluetooth/20260531101754.3325247-1-michal.dzik@streamunlimited.com/) | Michal Dzik | Independent | 2 | Pushed to master |
| [adapter: Add configurable default LE PHYs](https://lore.kernel.org/linux-bluetooth/20260525145010.154170-1-tarjeib@gmail.com/) | Tarjei Bitustøyl | Independent | 0 | Pushed to master |

### Discussions & Bug Reports
| Topic | From | Notes |
|-------|------|-------|
| [PipeWire & BlueZ face-to-face meetings 29-31st May](https://lore.kernel.org/linux-bluetooth/D08B7EE1-2591-4E99-990C-1F991195191A@collabora.com/) | George Kiagiadakis | Collaboration between PipeWire and BlueZ teams |
| [Bluetooth: SCO: Fix use-after-free on listening socket in sco_conn_ready()](https://lore.kernel.org/linux-bluetooth/CAOrxSK5OMUHuXzb5dsVMwy_N_6=BX69Cp98J8QVTKVFDGYY7tw@mail.gmail.com/) | Sanghyun Park | Addressed a critical bug |

---

## Top Contributors (by message count)
| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 19 |
| Tarjei Bitustøyl | Independent | 7 |
| Cen Zhang | Independent | 6 |
| Paul Menzel | Max Planck Institute | 5 |
| Siwei Zhang | Independent | 5 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)
- [Bluetooth: l2cap: clear chan->ident on ECRED reconfiguration success](https://lore.kernel.org/linux-bluetooth/177981781839.3917724.6787409743685668457.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: Add USB ID 2c4e:0128 for Mercusys MA60XNB](https://lore.kernel.org/linux-bluetooth/177981781684.3917724.4396187093136502203.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: Add support for HCI_LE_Set_Host_Feature [v2]](https://lore.kernel.org/linux-bluetooth/177981780889.3917724.4877683146753954690.git-patchwork-notify@kernel.org/)

### Pushed to bluez/bluez master
- [adapter: Add configurable default LE PHYs](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1100433%2F000000-360693@github.com/)
- [advertising: add property with advertisement Instance](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1103543%2F000000-c8e847@github.com/)

---

## Company Focus Areas

### Intel
- Luiz Augusto von Dentz contributed patches for HCI reset functions and LE Set Host Feature V2 command emulation.

### Qualcomm
- Shuai Zhang and Yepuri Siddu worked on hardware support for QCC2072 and SSR delay improvements.

### Collabora
- Frédéric Danis focused on MGMT event validation and collaboration with PipeWire.

---

## Notable Trends
1. Increased focus on security fixes, including heap over-read and use-after-free vulnerabilities.
2. Hardware support enhancements, particularly for Synaptics BCM4384 and QCC2072.
3. Refactoring efforts in HCI reset functions and advertising TLV validation.
4. Collaboration between PipeWire and BlueZ teams for future integration.
5. Independent contributors actively addressing critical bugs and proposing new features.
```
