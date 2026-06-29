---
title: "linux-bluetooth Weekly Report - Week 26"
date: 2026-06-28
summary: "Total messages: 290 (223 human, 67 CI/bot)"
draft: false
---

**Total messages: 290 (223 human, 67 CI/bot)**

Note: Of the 290 messages, 223 are human-generated, 67 are CI/bot (bluez.test.bot: 37, patchwork-bot+bluetooth: 17, BluezTestBot: 7, bugzilla-daemon: 2, kernel test robot: 2, prathibhamadugonde: 1, Sasha Levin: 1).

---

## Summary
This week saw significant activity on the linux-bluetooth mailing list, with a total of 290 messages exchanged. Key discussions focused on bug fixes for btusb and btqca, support for new hardware such as the MT7928 and IPQ5018, and security-related patches addressing vulnerabilities like CVE-2026-46140. Contributions came from a diverse group of developers, with Zijun Hu (Qualcomm) leading the message count. Several patches were applied to `bluetooth-next` and BlueZ master branches, reflecting active development in both kernel and userspace Bluetooth subsystems.

---

## Key Patch Series & Discussions

### Kernel Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: btusb/btqca/hci_sync: Clean up btusb and fix several bugs](https://lore.kernel.org/linux-bluetooth/20260622-bt_bugfix-v1-0-11f936d84e72@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 13 | Initial version |
| [Bluetooth: btusb/btqca/hci_sync: Clean up btusb and fix several bugs](https://lore.kernel.org/linux-bluetooth/20260625-bt_bugfix-v2-0-93396a6f7d5e@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 12 | Version 2 |
| [Bluetooth: hci_conn: hold conn references in hci_sync tasks](https://lore.kernel.org/linux-bluetooth/cover.1782652695.git.pav@iki.fi/) | Pauli Virtanen | Independent | 7 | Version 4 |
| [Bluetooth: hci_conn: hold conn reference in abort_conn_sync()](https://lore.kernel.org/linux-bluetooth/7a22e9136652bfc95b52bacc146e5ac461b82ec2.1782645211.git.pav@iki.fi/) | Pauli Virtanen | Independent | 7 | Version 3 |
| [remoteproc: qcom: Add M0 BTSS secure PIL driver](https://lore.kernel.org/linux-bluetooth/20260625-ipq5018-bluetooth-v1-2-d999be0e04f7@outlook.com/) | George Moussalem | Independent | 6 | Initial version |
| [Bluetooth: btmtk: Add MT7928 support](https://lore.kernel.org/linux-bluetooth/20260623034121.691031-1-chris.lu@mediatek.com/) | Chris Lu | MediaTek | 2 | Version 4 |
| [Bluetooth: btmtk: Add MT7928 support](https://lore.kernel.org/linux-bluetooth/20260624075505.1318804-1-chris.lu@mediatek.com/) | Chris Lu | MediaTek | 3 | Version 5 |
| [Bluetooth: hci_bcm: add BCM43752](https://lore.kernel.org/linux-bluetooth/20260628095500.29810-1-hugo@whynothugo.nl/) | Hugo Osvaldo Barrera | Independent | 2 | Initial version |

### BlueZ Userspace Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [a2dp: Fix handling of codec capability storage](https://lore.kernel.org/linux-bluetooth/20260622155621.675255-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 2 | Version 2 |
| [shared/rap: Fix step payload pointer in parse_step](https://lore.kernel.org/linux-bluetooth/20260623111112.1332742-1-prathm@qti.qualcomm.com/) | Prathibha Madugonde | Qualcomm | 2 | Initial version |
| [bass: Fix possible crash on bass_update_bis_sync](https://lore.kernel.org/linux-bluetooth/20260623191432.270241-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 3 | Initial version |

### Discussions & Bug Reports
| Topic | From | Notes |
|-------|------|-------|
| [Bluetooth: btusb/btqca/hci_sync: Clean up btusb and fix several bugs](https://lore.kernel.org/linux-bluetooth/20260622-bt_bugfix-v1-0-11f936d84e72@oss.qualcomm.com/) | Zijun Hu | Active discussion with 32 messages |
| [crypto: af_alg - Add af_alg_restrict sysctl, defaulting to 1](https://lore.kernel.org/linux-bluetooth/20260622234803.6982-1-ebiggers@kernel.org/) | Eric Biggers | Security-related discussion |
| [Add PCIe M.2 Key E connector support for NXP i.MX boards](https://lore.kernel.org/linux-bluetooth/20260623030736.1421537-1-sherry.sun@oss.nxp.com/) | Sherry Sun | Hardware support for NXP boards |

---

## Top Contributors (by message count)
| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Zijun Hu | Qualcomm | 34 |
| Luiz Augusto von Dentz | Intel | 18 |
| Sherry Sun | Independent | 18 |
| Pauli Virtanen | Independent | 17 |
| Eric Biggers | Independent | 12 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)
- [Bluetooth: L2CAP: cancel pending_rx_work before taking conn->lock](https://lore.kernel.org/linux-bluetooth/178214762700.1322955.1313476336537592947.git-patchwork-notify@kernel.org/)
- [Bluetooth: ISO: avoid NULL deref of conn in iso_conn_big_sync()](https://lore.kernel.org/linux-bluetooth/178214762553.1322955.9611658441298431960.git-patchwork-notify@kernel.org/)
- [Bluetooth: btnxpuart: Fix out-of-bounds firmware read in nxp_recv_fw_r](https://lore.kernel.org/linux-bluetooth/178214762399.1322955.7597515099317930743.git-patchwork-notify@kernel.org/)
- [Bluetooth: simplify force_no_mitm_write() with kstrtobool_from_user()](https://lore.kernel.org/linux-bluetooth/178214762225.1322955.16888557488603170773.git-patchwork-notify@kernel.org/)
- [Bluetooth: enable context analysis](https://lore.kernel.org/linux-bluetooth/178214762073.1322955.15712319484363446864.git-patchwork-notify@kernel.org/)

### Pushed to bluez/bluez master
- [shared: rap: Defer CS Event registration until connection setup](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1114528%2F000000-f46211@github.com/)
- [a2dp: Fix handling of codec capability storage](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1114843%2F000000-4ec0b2@github.com/)
- [monitor: Add decoding of new MSFT extension features](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F9305ae-5792da@github.com/)

---

## Company Focus Areas

### Intel
- Continued contributions to A2DP codec handling and Bluetooth audio improvements.

### Qualcomm
- Active work on btusb and btqca bug fixes and hardware support for IPQ5018 Bluetooth.

### MediaTek
- Development of MT7928 Bluetooth support.

### Independent Contributors
- Security fixes and enhancements, including CVE-2026-46140 and race condition resolutions.

---

## Notable Trends
1. Increased focus on bug fixes and cleanup in btusb and btqca drivers.
2. Hardware support expansions, including MT7928 and IPQ5018 Bluetooth controllers.
3. Security-related patches addressing vulnerabilities and race conditions.
4. Collaboration across companies and independent contributors on kernel and BlueZ improvements.
5. Active discussions on improving Bluetooth subsystem stability and performance.
6. Continued enhancements to A2DP codec handling and audio features.
7. Growing contributions from independent developers in both kernel and userspace.
```
