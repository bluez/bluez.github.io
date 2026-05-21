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
This week saw significant activity on the linux-bluetooth mailing list with 409 total messages, including 255 human contributions. Key discussions revolved around kernel patches addressing issues such as use-after-free bugs and Bluetooth socket families, while BlueZ userspace patches focused on improving QoS state handling and fixing uninitialized values. Intel, Red Hat, Collabora, and Meta were among the most active contributors, showcasing their focus on improving Bluetooth functionality across both kernel and userspace.

---

## Key Patch Series & Discussions

### Kernel Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Functional/integration testing](https://lore.kernel.org/linux-bluetooth/cover.1778688966.git.pav@iki.fi/) | Pauli Virtanen | Independent | 16 | v5 |
| [Add helper for "cleanup" variable attribute](https://lore.kernel.org/linux-bluetooth/20260511132131.1283892-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 6 | v3 |
| [net: convert remaining bluetooth socket families to getsockopt_iter](https://lore.kernel.org/linux-bluetooth/20260511-getsock_three-v1-0-1461fa8786ab@debian.org/) | Breno Leitao | Meta | 7 | v1 |
| [Bluetooth: SMP: add missing skb len check in smp_cmd_keypress_notify](https://lore.kernel.org/linux-bluetooth/20260517145417.31910-1-meatuni001@gmail.com/) | Muhammad Bilal | Independent | 0 | Discussion |
| [Bluetooth: hci_sync: pin conn across hci_le_create_conn_sync](https://lore.kernel.org/linux-bluetooth/490e228dd02983fb1530fb114d4174148f810261.1778506829.git.michael.bommarito@gmail.com/) | Michael Bommarito | Independent | 4 | Discussion |

### BlueZ Userspace Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [shared/bap: set QoS state when CIS is lost](https://lore.kernel.org/linux-bluetooth/20260513163435.11344-1-raghavendra.rao@collabora.com/) | raghu447 | Collabora | 2 | v2 |
| [shared/rap: fix use of uninitialized value](https://lore.kernel.org/linux-bluetooth/e7e72c0208f579fd6bb63b76f9d2a1ea3cabd2fc.1779013529.git.pav@iki.fi/) | Pauli Virtanen | Independent | 3 | Discussion |
| [pbap: Fix not checking Database Identifier length](https://lore.kernel.org/linux-bluetooth/20260512083750.178053-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 0 | Applied |
| [media: use custom DBus timeouts only when remote side is waiting](https://lore.kernel.org/linux-bluetooth/60b9da865b9beb482f914818c31866ebb00960f7.1779011736.git.pav@iki.fi/) | Pauli Virtanen | Independent | 0 | Discussion |
| [monitor: Add decoding for Microsoft defined event](https://lore.kernel.org/linux-bluetooth/20260513190554.1569879-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 0 | Applied |

### Discussions & Bug Reports
| Topic | From | Notes |
|-------|------|-------|
| [MT7922 does not work in 7.1-rc3, works ok in 7.0](https://lore.kernel.org/linux-bluetooth/46f7ee10-3fa8-490c-bb17-5929229206fa@vii.li/) | Taneli Vähäkangas | Regression issue |
| [Bluetooth: hci_uart: fix UAF in hci_uart_tty_close()](https://lore.kernel.org/linux-bluetooth/20260516022200.396369-1-w15303746062@163.com/) | w15303746062 | Multiple versions (v1-v9) |
| [BUG: General Protection Fault in h5_recv due to TTY line discipline race condition](https://lore.kernel.org/linux-bluetooth/6f2b8e36.f987.19e1f420686.Coremail.25181214217@stu.xidian.edu.cn/) | 王明煜 | Critical bug report |

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
- [Bluetooth: btmtk: accept too short WMT FUNC_CTRL events](https://lore.kernel.org/linux-bluetooth/177850980405.2266296.3114753928820395948.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: ecred_reconfigure: send packed pdu, not stack pointer](https://lore.kernel.org/linux-bluetooth/177851700405.2324731.8694479011940333354.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_qca: Convert timeout from jiffies to ms](https://lore.kernel.org/linux-bluetooth/177852780480.2428736.14134229951295592073.git-patchwork-notify@kernel.org/)

### Pushed to bluez/bluez master
- [adapter: add BCAA UUID also when seen device is not discoverable](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1093117%2F000000-2c6d6b@github.com/)
- [mesh: Remove unused but set variable](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1092724%2F000000-849390@github.com/)
- [shared/bap: set QoS state when CIS is lost](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1094333%2F000000-f91af1@github.com/)

---

## Company Focus Areas

### Intel
- Focused on kernel patches, including support for Intel Lizard Peak 2 and fixes for MAC access programming.

### Red Hat
- Contributed to BlueZ userspace patches, including cleanup helpers and media-related fixes.

### Collabora
- Worked on shared/bap QoS state handling and pbap fixes.

### Meta
- Addressed kernel-level Bluetooth socket family conversions.

### Qualcomm
- Focused on kernel patches for hci_uart and hci_qca improvements.

---

## Notable Trends
1. Increased activity in kernel patches addressing use-after-free bugs and socket family conversions.
2. BlueZ userspace patches focused on QoS state handling and fixing uninitialized values.
3. Intel continues to lead contributions in kernel-level Bluetooth hardware support.
4. Multiple regression issues reported for MT7922 and MT7925 Bluetooth hardware.
5. Collaboration between independent contributors and companies like Intel, Red Hat, and Collabora.
6. Frequent updates to patch series, with several reaching v4 or higher.
7. Significant bot activity, particularly from bluez.test.bot and patchwork-bot+bluetooth.
```
