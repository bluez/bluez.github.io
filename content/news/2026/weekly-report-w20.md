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
This week saw a high volume of activity on the linux-bluetooth mailing list, with 409 messages exchanged. Discussions focused on kernel patches addressing various Bluetooth subsystem issues, including fixes for use-after-free errors, enhancements for socket families, and support for new hardware. BlueZ userspace patches included fixes for streaming and device handling. Intel, Meta, and Collabora were among the most active contributors, with notable contributions from independent developers as well.

---

## Key Patch Series & Discussions

### Kernel Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Functional/integration testing](https://lore.kernel.org/linux-bluetooth/cover.1778688966.git.pav@iki.fi/) | Pauli Virtanen | Independent | 16 | v5 |
| [Add helper for "cleanup" variable attribute](https://lore.kernel.org/linux-bluetooth/20260511132131.1283892-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 6 | v3 |
| [net: convert remaining bluetooth socket families to getsockopt_iter](https://lore.kernel.org/linux-bluetooth/20260511-getsock_three-v1-0-1461fa8786ab@debian.org/) | Breno Leitao | Meta | 7 | v1 |
| [Bluetooth: convert remaining bluetooth socket families to getsockopt_iter](https://lore.kernel.org/linux-bluetooth/20260512-getsock_three-v2-0-30b7b22ef14c@debian.org/) | Breno Leitao | Meta | 6 | v2 |
| [Bluetooth: SMP: add missing skb len check in smp_cmd_keypress_notify](https://lore.kernel.org/linux-bluetooth/20260517145417.31910-1-meatuni001@gmail.com/) | Muhammad Bilal | Independent | 0 | Discussion |
| [Bluetooth: hci_sync: pin conn across hci_le_create_conn_sync](https://lore.kernel.org/linux-bluetooth/490e228dd02983fb1530fb114d4174148f810261.1778506829.git.michael.bommarito@gmail.com/) | Michael Bommarito | Independent | 4 | Discussion |

### BlueZ Userspace Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [shared/bap: set QoS state when CIS is lost](https://lore.kernel.org/linux-bluetooth/20260513163435.11344-1-raghavendra.rao@collabora.com/) | raghu447 | Collabora | 0 | v2 |
| [shared/rap: fix use of uninitialized value](https://lore.kernel.org/linux-bluetooth/e7e72c0208f579fd6bb63b76f9d2a1ea3cabd2fc.1779013529.git.pav@iki.fi/) | Pauli Virtanen | Independent | 3 | Discussion |
| [adapter: add BCAA UUID also when seen device is not discoverable](https://lore.kernel.org/linux-bluetooth/a03d5b481c87d86d2bd2bdb376729ea6c4f992a9.1778535912.git.pav@iki.fi/) | Pauli Virtanen | Independent | 0 | Discussion |

### Discussions & Bug Reports
| Topic | From | Notes |
|-------|------|-------|
| [MT7922 does not work in 7.1-rc3, works ok in 7.0](https://lore.kernel.org/linux-bluetooth/46f7ee10-3fa8-490c-bb17-5929229206fa@vii.li/) | Taneli Vähäkangas | Regression issue reported |
| [Bluetooth: btusb: MT7925 fails "wmt func ctrl" (-EINVAL)](https://lore.kernel.org/linux-bluetooth/9f6967e5-c37f-4e21-b0d2-8eea4a0b5809@codewiz.org/) | Bernie Innocenti | Regression issue |
| [BUG: General Protection Fault in h5_recv due to TTY line discipline race condition](https://lore.kernel.org/linux-bluetooth/6f2b8e36.f987.19e1f420686.Coremail.25181214217@stu.xidian.edu.cn/) | 王明煜 | Bug report |

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
- [Bluetooth: SMP: add missing skb len check in smp_cmd_keypress_notify](https://lore.kernel.org/linux-bluetooth/20260517145417.31910-1-meatuni001@gmail.com/)
- [Bluetooth: btintel_pcie: Reset controller before configuring MSI-X](https://lore.kernel.org/linux-bluetooth/20260511132711.1216139-1-kiran.k@intel.com/)

### Pushed to bluez/bluez master
- [shared/bap: set QoS state when CIS is lost](https://lore.kernel.org/linux-bluetooth/20260513163435.11344-1-raghavendra.rao@collabora.com/)
- [adapter: add BCAA UUID also when seen device is not discoverable](https://lore.kernel.org/linux-bluetooth/a03d5b481c87d86d2bd2bdb376729ea6c4f992a9.1778535912.git.pav@iki.fi/)

---

## Company Focus Areas

### Intel
- [Bluetooth: btusb: Add support for Intel Lizard Peak2 (0x8087:0x0040)](https://lore.kernel.org/linux-bluetooth/20260512062045.1213631-1-ravindra@intel.com/)
- [Bluetooth: hci_sync: Remove remaining dependencies of hci_request](https://lore.kernel.org/linux-bluetooth/tencent_CA96C7486F1CF8F0C72A2274E56AD1766708@qq.com/)

### Red Hat
- [Add helper for "cleanup" variable attribute](https://lore.kernel.org/linux-bluetooth/20260511132131.1283892-1-hadess@hadess.net/)
- [media: Fix possible crash on exit/adapter removal](https://lore.kernel.org/linux-bluetooth/20260512101431.2017966-1-hadess@hadess.net/)

### Meta
- [net: convert remaining bluetooth socket families to getsockopt_iter](https://lore.kernel.org/linux-bluetooth/20260511-getsock_three-v1-0-1461fa8786ab@debian.org/)
- [Bluetooth: convert remaining bluetooth socket families to getsockopt_iter](https://lore.kernel.org/linux-bluetooth/20260512-getsock_three-v2-0-30b7b22ef14c@debian.org/)

### Collabora
- [shared/bap: set QoS state when CIS is lost](https://lore.kernel.org/linux-bluetooth/20260513163435.11344-1-raghavendra.rao@collabora.com/)
- [pbap: Fix not checking Database Identifier length](https://lore.kernel.org/linux-bluetooth/20260512083750.178053-1-frederic.danis@collabora.com/)

### Qualcomm
- [Bluetooth: hci_qca: Convert timeout from jiffies to ms](https://lore.kernel.org/linux-bluetooth/20260511135837.3967550-1-shuai.zhang@oss.qualcomm.com/)

---

## Notable Trends
1. Increased activity from independent contributors, particularly Pauli Virtanen.
2. Multiple patches addressing use-after-free issues in Bluetooth subsystems.
3. Continued focus on hardware support, including Intel Lizard Peak2 and MediaTek MT7925.
4. Regression issues reported for MT7922 and MT7925 Bluetooth hardware.
5. Collaboration across companies such as Intel, Meta, and Collabora on critical patches.
6. Active discussions on improving Bluetooth socket families and error handling.
7. Persistent contributions from bots, particularly bluez.test.bot and patchwork-bot+bluetooth.
```
