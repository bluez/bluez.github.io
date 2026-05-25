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
This week saw active discussions and contributions across kernel and BlueZ userspace patches, with notable focus on bug fixes, hardware support additions, and functional testing improvements. Key topics included fixes for use-after-free issues, enhancements to Bluetooth socket families, and the addition of support for new Intel and MediaTek Bluetooth devices. Collaboration between contributors from Intel, Collabora, and independent developers was evident, driving forward both kernel and userspace improvements.

---

## Key Patch Series & Discussions

### Kernel Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Functional/integration testing](https://lore.kernel.org/linux-bluetooth/cover.1778688966.git.pav@iki.fi/) | Pauli Virtanen | Independent | 16 | v5 |
| [Add helper for "cleanup" variable attribute](https://lore.kernel.org/linux-bluetooth/20260511132131.1283892-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 6 | v3 |
| [net: convert remaining bluetooth socket families to getsockopt_iter](https://lore.kernel.org/linux-bluetooth/20260511-getsock_three-v1-0-1461fa8786ab@debian.org/) | Breno Leitao | Meta | 7 | v1 |
| [Bluetooth: SMP: add missing skb len check in smp_cmd_keypress_notify](https://lore.kernel.org/linux-bluetooth/20260517145417.31910-1-meatuni001@gmail.com/) | Muhammad Bilal | Independent | 1 | Applied |
| [Bluetooth: hci_sync: pin conn across hci_le_create_conn_sync](https://lore.kernel.org/linux-bluetooth/490e228dd02983fb1530fb114d4174148f810261.1778506829.git.michael.bommarito@gmail.com/) | Michael Bommarito | Independent | 4 | v1 |

### BlueZ Userspace Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [shared/rap: fix use of uninitialized value](https://lore.kernel.org/linux-bluetooth/e7e72c0208f579fd6bb63b76f9d2a1ea3cabd2fc.1779013529.git.pav@iki.fi/) | Pauli Virtanen | Independent | 3 | Applied |
| [pbap: Fix not checking Database Identifier length](https://lore.kernel.org/linux-bluetooth/20260512083750.178053-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 1 | Applied |
| [media: Fix possible crash on exit/adapter removal](https://lore.kernel.org/linux-bluetooth/20260512101431.2017966-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 1 | Applied |
| [tester.config: add missing CRYPTO_AES](https://lore.kernel.org/linux-bluetooth/478a4d370bc0b20b98223507166dfd580ae8477d.1779051031.git.pav@iki.fi/) | Pauli Virtanen | Independent | 1 | Applied |

### Discussions & Bug Reports
| Topic | From | Notes |
|-------|------|-------|
| [MT7922 does not work in 7.1-rc3, works ok in 7.0](https://lore.kernel.org/linux-bluetooth/46f7ee10-3fa8-490c-bb17-5929229206fa@vii.li/) | Taneli Vähäkangas | Issue with MediaTek MT7922 device |
| [Bluetooth: btmtk: regression in 634a4408c breaks MT7922 FUNC_CTRL handshake](https://lore.kernel.org/linux-bluetooth/CAJ8Bt0iC5bVgCRw28YXB1mo+-p_sTM_cp6fF+qVNapyL-Hsayg@mail.gmail.com/) | Sergey Kasmy | Regression reported |
| [Question: recommended way to detect re-pairing completion over D-Bus](https://lore.kernel.org/linux-bluetooth/CALC1NsyNYQM0NMFmfqG6sg8fqoKhHUBoH7dcQCeQ0MXN3NkpFw@mail.gmail.com/) | Tomoka Kimura | Inquiry about D-Bus re-pairing detection |

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
- [Bluetooth: hci_qca: Convert timeout from jiffies to ms](https://lore.kernel.org/linux-bluetooth/177852780480.2428736.14134229951295592073.git-patchwork-notify@kernel.org/)
- [Bluetooth: bnep: Fix UAF read of dev->name](https://lore.kernel.org/linux-bluetooth/177886020713.52984.6738499435725891558.git-patchwork-notify@kernel.org/)

### Pushed to bluez/bluez master
- [adapter: add BCAA UUID also when seen device is not discoverable](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1093117%2F000000-2c6d6b@github.com/)
- [mesh: Remove unused but set variable](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1092724%2F000000-849390@github.com/)
- [shared/rap: fix use of uninitialized value](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1096012%2F000000-a02319@github.com/)

---

## Company Focus Areas

### Intel
- Continued work on Bluetooth hardware support, including patches for Intel Lizard Peak 2.
- Contributions to SMP and L2CAP fixes.

### Red Hat
- Focused on userspace improvements, including variable attributes and media-related fixes.

### Collabora
- Addressed issues in shared libraries and media components.

### MediaTek
- Added support for MT7925 Bluetooth devices.

### Qualcomm
- Provided patches for hci_qca timeout conversion and other hardware-related fixes.

---

## Notable Trends
1. Increased focus on fixing use-after-free issues in various Bluetooth subsystems.
2. Addition of support for new Bluetooth hardware, including Intel Lizard Peak 2 and MediaTek MT7925.
3. Functional and integration testing improvements for BlueZ userspace.
4. Collaboration across companies like Intel, Collabora, and Meta to address critical bugs.
5. Active discussions on regression issues affecting MediaTek MT7922 devices.
6. Efforts to improve Bluetooth socket family handling in the kernel.
7. Enhanced validation and error handling in both kernel and userspace components.
```
