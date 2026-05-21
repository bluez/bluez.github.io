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
This week saw significant activity on the linux-bluetooth mailing list, with 409 total messages, including 255 human contributions. Key discussions revolved around kernel patches addressing use-after-free bugs, Bluetooth socket family conversions, and support for new hardware such as Intel Lizard Peak2 and MediaTek MT7925. The BlueZ userspace also saw updates, including fixes for uninitialized values and enhancements to integration testing. Collaboration across companies like Intel, Red Hat, Meta, and Collabora was evident in the contributions.

---

## Key Patch Series & Discussions

### Kernel Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Functional/integration testing](https://lore.kernel.org/linux-bluetooth/cover.1778688966.git.pav@iki.fi/) | Pauli Virtanen | Independent | 16 | v5 |
| [Add helper for "cleanup" variable attribute](https://lore.kernel.org/linux-bluetooth/20260511132131.1283892-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 6 | v3 |
| [Convert remaining Bluetooth socket families to getsockopt_iter](https://lore.kernel.org/linux-bluetooth/20260511-getsock_three-v1-0-1461fa8786ab@debian.org/) | Breno Leitao | Meta | 7 | v1 |
| [Bluetooth: SMP: add missing skb len check in smp_cmd_keypress_notify](https://lore.kernel.org/linux-bluetooth/20260517145417.31910-1-meatuni001@gmail.com/) | Muhammad Bilal | Independent | 0 | Discussion ongoing |
| [Bluetooth: hci_sync: pin conn across hci_le_create_conn_sync](https://lore.kernel.org/linux-bluetooth/490e228dd02983fb1530fb114d4174148f810261.1778506829.git.michael.bommarito@gmail.com/) | Michael Bommarito | Independent | 4 | Discussion ongoing |

### BlueZ Userspace Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Shared/rap: fix use of uninitialized value](https://lore.kernel.org/linux-bluetooth/e7e72c0208f579fd6bb63b76f9d2a1ea3cabd2fc.1779013529.git.pav@iki.fi/) | Pauli Virtanen | Independent | 3 | Pushed to master |
| [Pbap: Fix not checking Database Identifier length](https://lore.kernel.org/linux-bluetooth/20260512083750.178053-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 0 | Pushed to master |
| [Adapter: add BCAA UUID also when seen device is not discoverable](https://lore.kernel.org/linux-bluetooth/a03d5b481c87d86d2bd2bdb376729ea6c4f992a9.1778535912.git.pav@iki.fi/) | Pauli Virtanen | Independent | 0 | Pushed to master |
| [Media: Fix possible crash on exit/adapter removal](https://lore.kernel.org/linux-bluetooth/20260512101431.2017966-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 0 | Pushed to master |

### Discussions & Bug Reports
| Topic | From | Notes |
|-------|------|-------|
| [MT7922 does not work in 7.1-rc3, works ok in 7.0](https://lore.kernel.org/linux-bluetooth/46f7ee10-3fa8-490c-bb17-5929229206fa@vii.li/) | Taneli Vähäkangas | Regression report |
| [Question: recommended way to detect re-pairing completion over D-Bus](https://lore.kernel.org/linux-bluetooth/CALC1NsyNYQM0NMFmfqG6sg8fqoKhHUBoH7dcQCeQ0MXN3NkpFw@mail.gmail.com/) | Tomoka Kimura | General inquiry |
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
- [Bluetooth: btmtk: accept too short WMT FUNC_CTRL events](https://lore.kernel.org/linux-bluetooth/177850980405.2266296.3114753928820395948.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: ecred_reconfigure: send packed pdu, not stack pointer](https://lore.kernel.org/linux-bluetooth/177851700405.2324731.8694479011940333354.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_qca: Convert timeout from jiffies to ms](https://lore.kernel.org/linux-bluetooth/177852780480.2428736.14134229951295592073.git-patchwork-notify@kernel.org/)
- [Bluetooth: convert remaining Bluetooth socket families to getsockopt_iter](https://lore.kernel.org/linux-bluetooth/177860821104.3015105.542889541013880756.git-patchwork-notify@kernel.org/)

### Pushed to bluez/bluez master
- [adapter: add BCAA UUID also when seen device is not discoverable](https://lore.kernel.org/bluez/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1093117%2F000000-2c6d6b@github.com)
- [mesh: Remove unused but set variable](https://lore.kernel.org/bluez/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1092724%2F000000-849390@github.com)
- [media: Fix possible crash on exit/adapter removal](https://lore.kernel.org/bluez/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1093445%2F000000-c915f8@github.com)

---

## Company Focus Areas

### Intel
- Luiz Augusto von Dentz contributed patches for Bluetooth management and L2CAP fixes.
- Ravindra worked on adding support for Intel Lizard Peak2 hardware.

### Red Hat
- Bastien Nocera focused on kernel patches for cleanup variable attributes and media-related fixes.

### Meta
- Breno Leitao contributed patches for converting Bluetooth socket families to getsockopt_iter.

### Collabora
- Frédéric Danis and raghu447 contributed to BlueZ userspace patches, including fixes for uninitialized values and QoS state handling.

### Qualcomm
- Shuai Zhang worked on hci_qca timeout conversions.

### Independent Contributors
- Pauli Virtanen was the top contributor, focusing on functional testing and various BlueZ userspace fixes.
- Siwei Zhang addressed use-after-free issues in L2CAP.

---

## Notable Trends
1. Increased focus on addressing use-after-free bugs in Bluetooth kernel subsystems.
2. Continued development of support for new hardware, including Intel Lizard Peak2 and MediaTek MT7925.
3. Collaboration across companies, including Intel, Red Hat, Meta, and Collabora, on both kernel and BlueZ userspace patches.
4. Enhancements to BlueZ userspace, including fixes for uninitialized values and integration testing improvements.
5. Multiple iterations of patch series to address issues in hci_uart and L2CAP subsystems.
6. Reports of regressions in MediaTek MT7922 and MT7925 Bluetooth functionality.
7. Introduction of new features and fixes for Bluetooth management and socket handling.
```
