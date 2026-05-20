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
This week saw robust activity on the linux-bluetooth mailing list, with 409 total messages exchanged. Key highlights included ongoing discussions about Bluetooth kernel patches, userspace improvements, and bug fixes. Notable contributions came from Pauli Virtanen, Luiz Augusto von Dentz, and Breno Leitao, among others. Several patches were merged into `bluetooth-next` and the BlueZ master branch.

---

## Key Patch Series & Discussions

### Kernel Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Functional/integration testing](https://lore.kernel.org/linux-bluetooth/cover.1778688966.git.pav@iki.fi/) | Pauli Virtanen | Independent | 16 | v5 |
| [Add helper for "cleanup" variable attribute](https://lore.kernel.org/linux-bluetooth/20260511132131.1283892-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 6 | v3 |
| [Bluetooth: convert remaining bluetooth socket families to getsockopt_iter](https://lore.kernel.org/linux-bluetooth/20260512-getsock_three-v2-0-30b7b22ef14c@debian.org/) | Breno Leitao | Meta | 6 | v2 |
| [Bluetooth: SMP: add missing skb len check in smp_cmd_keypress_notify](https://lore.kernel.org/linux-bluetooth/20260517145417.31910-1-meatuni001@gmail.com/) | Muhammad Bilal | Independent | 0 | Discussion ongoing |
| [Bluetooth: hci_sync: pin conn across hci_le_create_conn_sync](https://lore.kernel.org/linux-bluetooth/490e228dd02983fb1530fb114d4174148f810261.1778506829.git.michael.bommarito@gmail.com/) | Michael Bommarito | Independent | 4 | Discussion ongoing |
| [Bluetooth: L2CAP: Fix use-after-free in l2cap_sock_new_connection_cb()](https://lore.kernel.org/linux-bluetooth/20260511170929.709823-1-oss@fourdim.xyz/) | Siwei Zhang | Independent | 0 | v4 |
| [Bluetooth: btintel_pcie: Reset controller before configuring MSI-X](https://lore.kernel.org/linux-bluetooth/20260511132711.1216139-1-kiran.k@intel.com/) | Kiran K | Intel | 0 | Discussion ongoing |

### BlueZ Userspace Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [shared/bap: set QoS state when CIS is lost](https://lore.kernel.org/linux-bluetooth/20260513163435.11344-1-raghavendra.rao@collabora.com/) | raghu447 | Collabora | 0 | v2 |
| [shared/rap: fix use of uninitialized value](https://lore.kernel.org/linux-bluetooth/e7e72c0208f579fd6bb63b76f9d2a1ea3cabd2fc.1779013529.git.pav@iki.fi/) | Pauli Virtanen | Independent | 3 | Discussion ongoing |
| [adapter: add BCAA UUID also when seen device is not discoverable](https://lore.kernel.org/linux-bluetooth/a03d5b481c87d86d2bd2bdb376729ea6c4f992a9.1778535912.git.pav@iki.fi/) | Pauli Virtanen | Independent | 0 | Discussion ongoing |
| [pbap: Fix not checking Database Identifier length](https://lore.kernel.org/linux-bluetooth/20260512083750.178053-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 0 | Discussion ongoing |
| [support libical 4.0](https://lore.kernel.org/linux-bluetooth/1445e90e.ded.19e159db7d2.Coremail.fundawang@yeah.net/) | Funda Wang | Independent | 0 | Discussion ongoing |

### Discussions & Bug Reports
| Topic | From | Notes |
|-------|------|-------|
| [MT7922 does not work in 7.1-rc3, works ok in 7.0](https://lore.kernel.org/linux-bluetooth/46f7ee10-3fa8-490c-bb17-5929229206fa@vii.li/) | Taneli Vähäkangas | Issue reported with MT7922 functionality |
| [Bluetooth: hci_uart: fix UAF in hci_uart_tty_close()](https://lore.kernel.org/linux-bluetooth/20260513064547.352601-1-w15303746062@163.com/) | w15303746062 | UAF issue reported |
| [Question: recommended way to detect re-pairing completion over D-Bus](https://lore.kernel.org/linux-bluetooth/CALC1NsyNYQM0NMFmfqG6sg8fqoKhHUBoH7dcQCeQ0MXN3NkpFw@mail.gmail.com/) | Tomoka Kimura | Request for guidance on D-Bus re-pairing detection |

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
- [Bluetooth: convert remaining bluetooth socket families to getsockopt_iter](https://lore.kernel.org/linux-bluetooth/20260512-getsock_three-v2-0-30b7b22ef14c@debian.org/)
- [Bluetooth: btusb: Add support for Intel Lizard Peak2 (0x8087:0x0040)](https://lore.kernel.org/linux-bluetooth/20260512082256.1214764-1-ravindra@intel.com/)

### Pushed to bluez/bluez master
- [test-rap: Fix gatt_ccc_read_cb on big-endian](https://lore.kernel.org/linux-bluetooth/20260514190403.1568957-1-luiz.dentz@gmail.com/)
- [tester.config: add missing CRYPTO_AES](https://lore.kernel.org/linux-bluetooth/478a4d370bc0b20b98223507166dfd580ae8477d.1779051031.git.pav@iki.fi/)

---

## Company Focus Areas

### Intel
- [Bluetooth: btusb: Add support for Intel Lizard Peak2 (0x8087:0x0040)](https://lore.kernel.org/linux-bluetooth/20260512062045.1213631-1-ravindra@intel.com/) by Ravindra
- [Bluetooth: btintel_pcie: Reset controller before configuring MSI-X](https://lore.kernel.org/linux-bluetooth/20260511132711.1216139-1-kiran.k@intel.com/) by Kiran K

### Red Hat
- [Add helper for "cleanup" variable attribute](https://lore.kernel.org/linux-bluetooth/20260511132131.1283892-1-hadess@hadess.net/) by Bastien Nocera
- [media: Fix possible crash on exit/adapter removal](https://lore.kernel.org/linux-bluetooth/20260512101431.2017966-1-hadess@hadess.net/) by Bastien Nocera

### Meta
- [Bluetooth: convert remaining bluetooth socket families to getsockopt_iter](https://lore.kernel.org/linux-bluetooth/20260512-getsock_three-v2-0-30b7b22ef14c@debian.org/) by Breno Leitao

### Collabora
- [shared/bap: set QoS state when CIS is lost](https://lore.kernel.org/linux-bluetooth/20260513163435.11344-1-raghavendra.rao@collabora.com/) by raghu447
- [pbap: Fix not checking Database Identifier length](https://lore.kernel.org/linux-bluetooth/20260512083750.178053-1-frederic.danis@collabora.com/) by Frédéric Danis

### Qualcomm
- [Bluetooth: hci_qca: Convert timeout from jiffies to ms](https://lore.kernel.org/linux-bluetooth/20260511135837.3967550-1-shuai.zhang@oss.qualcomm.com/) by Shuai Zhang

---

## Notable Trends
1. Increased activity on kernel patches related to Bluetooth socket families and error handling.
2. Multiple contributors addressing use-after-free (UAF) and race condition issues in Bluetooth subsystems.
3. Continued focus on adding support for new hardware, including Intel Lizard Peak2 and MediaTek MT7925.
4. Discussions around improving BlueZ userspace functionality, including QoS state management and bug fixes.
5. Collaboration across major companies like Intel, Red Hat, Meta, Collabora, and Qualcomm.
6. Several patches addressing regression issues in MT7922 and MT7925 Bluetooth functionality.
7. Active contributions from independent developers, showcasing strong community involvement.
```
