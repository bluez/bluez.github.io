---
title: "linux-bluetooth Weekly Report - Week 20"
date: 2026-05-18
summary: "Total messages: 409 (255 human, 154 CI/bot)"
draft: false
---

**Total messages: 409 (255 human, 154 CI/bot)**

Note: Of the 409 messages, 255 are human-generated, 154 are CI/bot (bluez.test.bot: 72, bugzilla-daemon: 34, patchwork-bot+bluetooth: 23, BluezTestBot: 13, kernel test robot: 4, Sasha Levin: 3, syzbot: 2, github-actions[bot]: 2, patchwork-bot+netdevbpf: 1).

---

## Summary
This week saw active discussions and contributions on the linux-bluetooth mailing list, with 409 messages exchanged. Key highlights included multiple patch series addressing kernel and BlueZ userspace issues, as well as bug fixes and new hardware support. Notable contributions came from Pauli Virtanen, Luiz Augusto von Dentz, and Breno Leitao, among others. Several patches were merged into `bluetooth-next` and BlueZ master branches, reflecting steady progress in improving Bluetooth functionality and stability.

---

## Key Patch Series & Discussions

### Kernel Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Functional/integration testing](https://lore.kernel.org/linux-bluetooth/cover.1778688966.git.pav@iki.fi/) | Pauli Virtanen | Independent | 16 | Applied to bluetooth-next |
| [Add helper for "cleanup" variable attribute](https://lore.kernel.org/linux-bluetooth/20260511132131.1283892-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 6 | Applied to bluetooth-next |
| [net: convert remaining bluetooth socket families to getsockopt_iter](https://lore.kernel.org/linux-bluetooth/20260511-getsock_three-v1-0-1461fa8786ab@debian.org/) | Breno Leitao | Meta | 7 | Applied to bluetooth-next |
| [Bluetooth: SMP: add missing skb len check in smp_cmd_keypress_notify](https://lore.kernel.org/linux-bluetooth/20260517145417.31910-1-meatuni001@gmail.com/) | Muhammad Bilal | Independent | 0 | Discussion ongoing |
| [Bluetooth: btusb: Add support for Intel Lizard Peak2 (0x8087:0x0040)](https://lore.kernel.org/linux-bluetooth/20260512062045.1213631-1-ravindra@intel.com/) | Ravindra | Intel | 0 | Applied to bluetooth-next |

### BlueZ Userspace Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [adapter: add BCAA UUID also when seen device is not discoverable](https://lore.kernel.org/linux-bluetooth/a03d5b481c87d86d2bd2bdb376729ea6c4f992a9.1778535912.git.pav@iki.fi/) | Pauli Virtanen | Independent | 0 | Pushed to BlueZ master |
| [mesh: Remove unused but set variable](https://lore.kernel.org/linux-bluetooth/20260511113511.1217887-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 3 | Pushed to BlueZ master |
| [pbap: Fix not checking Database Identifier length](https://lore.kernel.org/linux-bluetooth/20260512083750.178053-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 0 | Pushed to BlueZ master |
| [shared/bap: set QoS state when CIS is lost](https://lore.kernel.org/linux-bluetooth/20260513163435.11344-1-raghavendra.rao@collabora.com/) | raghu447 | Collabora | 0 | Pushed to BlueZ master |
| [tester.config: add missing CRYPTO_AES](https://lore.kernel.org/linux-bluetooth/478a4d370bc0b20b98223507166dfd580ae8477d.1779051031.git.pav@iki.fi/) | Pauli Virtanen | Independent | 0 | Pushed to BlueZ master |

### Discussions & Bug Reports
| Topic | From | Notes |
|-------|------|-------|
| [MT7922 does not work in 7.1-rc3, works ok in 7.0](https://lore.kernel.org/linux-bluetooth/46f7ee10-3fa8-490c-bb17-5929229206fa@vii.li/) | Taneli Vähäkangas | Regression issue |
| [Bluetooth: hci_uart: fix UAF in hci_uart_tty_close()](https://lore.kernel.org/linux-bluetooth/20260513064547.352601-1-w15303746062@163.com/) | w15303746062 | Multiple versions discussed (v1-v9) |
| [Question: recommended way to detect re-pairing completion over D-Bus](https://lore.kernel.org/linux-bluetooth/CALC1NsyNYQM0NMFmfqG6sg8fqoKhHUBoH7dcQCeQ0MXN3NkpFw@mail.gmail.com/) | Tomoka Kimura | General inquiry |

---

## Top Contributors (by message count)
| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Pauli Virtanen | Independent | 38 |
| Luiz Augusto von Dentz | Intel | 34 |
| Breno Leitao | Meta | 17 |
| Bastien Nocera | Red Hat | 13 |
| w15303746062 | Independent | 11 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)
- Bluetooth: btmtk: accept too short WMT FUNC_CTRL events
- Bluetooth: L2CAP: ecred_reconfigure: send packed pdu, not stack pointer
- Bluetooth: hci_qca: Convert timeout from jiffies to ms
- Bluetooth: convert remaining bluetooth socket families to getsockopt_iter
- net: convert remaining bluetooth socket families to getsockopt_iter
- pbap: Fix not checking Database Identifier length
- monitor: Fix RAS CS step mode parsing issues
- Add helper for "cleanup" variable attribute
- mesh: Remove unused but set variable
- adapter: add BCAA UUID also when seen device is not discoverable
- monitor: Add decoding for Microsoft defined event
- Bluetooth: btusb: MT7925: Add VID/PID 13d3/3609
- Bluetooth: btusb: Add support for Intel Lizard Peak 2 (0x8087:0x0040)
- Functional/integration testing
- Bluetooth: bnep: Fix UAF read of dev->name
- Bluetooth: btintel_pcie: Fix incorrect MAC access programming
- Bluetooth: hci_sync: Fix not setting mask for HCI_EVT_LE_ALL_REMOTE_FEATURES_COM
- Bluetooth: ISO: drop ISO_END frames received without prior ISO_START
- Bluetooth: MGMT: validate Add Extended Advertising Data length
- Bluetooth: btmtk: fix urb->setup_packet leak in error paths
- shared/rap: fix use of uninitialized value
- device: fix inverted NULL check in gatt_db clone

### Pushed to bluez/bluez master
- adapter: add BCAA UUID also when seen device is not discoverable
- all: Remove more unneeded MIN/MAX macro definitions
- mesh: Remove unused but set variable
- bap: set QoS state when CIS is lost while the state is active
- monitor: Fix RAS CS step mode parsing issues
- pbap: Fix not checking Database Identifier length
- media: Fix possible crash on exit/adapter removal
- emulator: btvirt: check pkt lengths, don't get stuck in loops
- monitor: Add decoding for Microsoft defined event
- shared/bap: set QoS state when CIS is lost
- test-rap: Fix gatt_ccc_read_cb on big-endian
- build: Fix inclusion of local_node.json and prov_db.json
- tester.config: add missing CRYPTO_AES
- shared/rap: fix use of uninitialized value
- media: use custom DBus timeouts only when remote side is waiting

---

## Company Focus Areas

### Intel
- Multiple patches for Intel hardware support, including [btusb: Add support for Intel Lizard Peak2](https://lore.kernel.org/linux-bluetooth/20260512062045.1213631-1-ravindra@intel.com/) and [btintel_pcie: Fix incorrect MAC access programming](https://lore.kernel.org/linux-bluetooth/20260514190248.1275299-1-kiran.k@intel.com/).

### Red Hat
- Contributions to BlueZ userspace, including [Add helper for "cleanup" variable attribute](https://lore.kernel.org/linux-bluetooth/20260511132131.1283892-1-hadess@hadess.net/) and [mesh: Remove unused but set variable](https://lore.kernel.org/linux-bluetooth/20260511113511.1217887-1-hadess@hadess.net/).

### Meta
- Kernel patches for Bluetooth socket families, such as [convert remaining bluetooth socket families to getsockopt_iter](https://lore.kernel.org/linux-bluetooth/20260511-getsock_three-v1-0-1461fa8786ab@debian.org/).

### Collabora
- BlueZ userspace contributions, including [shared/bap: set QoS state when CIS is lost](https://lore.kernel.org/linux-bluetooth/20260513163435.11344-1-raghavendra.rao@collabora.com/) and [pbap: Fix not checking Database Identifier length](https://lore.kernel.org/linux-bluetooth/20260512083750.178053-1-frederic.danis@collabora.com/).

### Qualcomm
- Kernel patches for Qualcomm hardware, such as [hci_qca: Convert timeout from jiffies to ms](https://lore.kernel.org/linux-bluetooth/20260511135837.3967550-1-shuai.zhang@oss.qualcomm.com/).

---

## Notable Trends
1. Increased focus on kernel patches addressing hardware-specific issues, particularly for Intel and Qualcomm devices.
2. Continued refinement of BlueZ userspace, with contributions targeting QoS and variable handling improvements.
3. Active discussions around regression issues in MT7922 and MT7925 Bluetooth hardware.
4. Multiple patch series with iterative versions, showcasing thorough review and testing processes.
5. Contributions from independent developers remain significant, with Pauli Virtanen leading in message count.
6. Collaboration across companies like Intel, Red Hat, Meta, and Collabora driving improvements in both kernel and userspace.
7. Steady integration of patches into `bluetooth-next` and BlueZ master branches, ensuring timely updates and fixes.
```
