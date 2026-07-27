---
title: "linux-bluetooth Weekly Report - Week 30"
date: 2026-07-26
summary: "Total messages: 337 (240 human, 97 CI/bot)"
draft: false
---

**Total messages: 337 (240 human, 97 CI/bot)**

Note: Of the 337 messages, 240 are human-generated, 97 are CI/bot (bluez.test.bot: 58, patchwork-bot+bluetooth: 20, BluezTestBot: 10, github-actions[bot]: 2, syzbot: 2, bugzilla-daemon: 2, patchwork-bot+netdevbpf: 1, prathibhamadugonde: 1, kernel test robot: 1).

---

## Summary
This week saw active contributions across kernel and BlueZ userspace development, with 337 messages exchanged. Key highlights include patches for vendor HCI frame support, fixes for multiple use-after-free (UAF) issues, and enhancements to Bluetooth SCO handling. Contributions from Intel, Qualcomm, and independent developers dominated discussions, reflecting ongoing collaboration and technical advancements.

---

## Key Patch Series & Discussions

### Kernel Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Add support for Shorter Connection Interval (SCI)](https://lore.kernel.org/linux-bluetooth/20260724191225.1815634-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 12 | Active discussion |
| [Bluetooth: ISO: fix HUP on socket release/shutdown + UAF/locking fixes](https://lore.kernel.org/linux-bluetooth/cover.1784923689.git.pav@iki.fi/) | Pauli Virtanen | Independent | 11 | Active discussion |
| [Bluetooth: Miscellaneous fixes and cleanups](https://lore.kernel.org/linux-bluetooth/20260725-generic_fix-v1-0-305aec261a19@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 11 | Active discussion |
| [Bluetooth: qca: add QCC2072 support](https://lore.kernel.org/linux-bluetooth/20260723-rb3-industrial-bt-uart-v1-1-3c8e580c09d1@oss.qualcomm.com/) | Rahul Samana | Qualcomm | 3 | Active discussion |
| [Bluetooth: Replace HCI_VENDOR_PKT usages with HCI_EV_VENDOR](https://lore.kernel.org/linux-bluetooth/20260721-fix_vendor-v2-0-1977a8c39708@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 3 | Active discussion |

### BlueZ Userspace Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [BlueZ: Add generic support for vendor HCI frames](https://lore.kernel.org/linux-bluetooth/20260719-vendor_hci-v1-0-df2ac5a50117@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 3 | Active discussion |
| [Hide WakeAllowed when the adapter cannot wake the host](https://lore.kernel.org/linux-bluetooth/20260725201856.2142333-1-matthew.schwartz@linux.dev/) | Matthew Schwartz | Independent | 3 | Active discussion |
| [input: HID gamepad quirk system for broken SDP records](https://lore.kernel.org/linux-bluetooth/20260722090246.212017-1-rhpcir@gmail.com/) | Pakrohk | Independent | 0 | Active discussion |
| [Bluetooth: SCO: fix sco_conn double free on outgoing connect](https://lore.kernel.org/linux-bluetooth/20260726055431.42350-1-baul.lee@xbow.com/) | Baul Lee | Independent | 0 | Active discussion |
| [Bluetooth: SCO: give the socket its own sco_conn reference](https://lore.kernel.org/linux-bluetooth/20260723232902.792805-1-qwe.aldo@gmail.com/) | Aldo Ariel Panzardo | Independent | 0 | Active discussion |

### Discussions & Bug Reports
| Topic | From | Notes |
|-------|------|-------|
| [Bluetooth: Fix parent socket UAF in accept queues](https://lore.kernel.org/linux-bluetooth/65767989c644f8adf52f35334f4034c66f47881f.1784383243.git.xizh2024@lzu.edu.cn/) | Ren Wei | Addressing UAF issues |
| [Intel AX200 Bluetooth firmware download failure](https://lore.kernel.org/linux-bluetooth/178509941543.717042.15160055403720914460@mails.wedevs.org/) | Bug Report | Firmware issue reported |
| [Patch for stack buffer overflow and heap OOB read in avrcp.c](https://lore.kernel.org/linux-bluetooth/CAB6rVYfCF5+jpSTtZ8u+S4LxCZ+kGudm3OWU=-fCMbZJnYDZUg@mail.gmail.com/) | Nathan Auvray | Security patch proposed |

---

## Top Contributors (by message count)
| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 39 |
| Pauli Virtanen | Independent | 37 |
| Zijun Hu | Qualcomm | 33 |
| Loic Poulain | Qualcomm | 15 |
| Dmitry Baryshkov | Qualcomm | 8 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)
- [Bluetooth: hci_sync: Protect UUID list traversal](https://lore.kernel.org/linux-bluetooth/178457881239.4151939.8896306930179003502.git-patchwork-notify@kernel.org/)
- [Bluetooth: RFCOMM: Fix session UAF in set_termios](https://lore.kernel.org/linux-bluetooth/178457881088.4151939.5706907972052659419.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: validate Realtek vendor event length](https://lore.kernel.org/linux-bluetooth/178457880938.4151939.12864032373120218164.git-patchwork-notify@kernel.org/)

### Pushed to bluez/bluez master
- [tools/iso-tester: fix GIOChannel refcounting](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1131086%2F000000-75f75e@github.com/)
- [adapter: restrict delta=0 RSSI to proximity filters](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2Fefd216-f3f03d@github.com/)
- [sdpd-request: Fix unchecked malloc](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1133038%2F000000-bf6289@github.com/)

---

## Company Focus Areas

### Intel
- Vendor-specific HCI frame support.
- Enhancements to PCI sysfs for Bluetooth devices.

### Qualcomm
- Support for QCC2072 and QCA2066 Bluetooth hardware.
- Fixes for vendor-specific HCI packet handling.

### Independent Contributors
- Security patches for buffer overflows.
- Fixes for UAF issues across multiple subsystems.

---

## Notable Trends
1. Increased focus on addressing use-after-free (UAF) vulnerabilities in Bluetooth subsystems.
2. Vendor-specific enhancements for HCI frame handling.
3. Security patches targeting buffer overflow and out-of-bounds reads.
4. Collaboration between Qualcomm and Intel on hardware-specific Bluetooth improvements.
5. Active contributions from independent developers on bug fixes and feature enhancements.
6. Expansion of Bluetooth support for new hardware platforms.
7. Refinements to Bluetooth SCO and ISO handling mechanisms.
```
