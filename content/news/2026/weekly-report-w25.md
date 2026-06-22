---
title: "linux-bluetooth Weekly Report - Week 25"
date: 2026-06-21
summary: "Total messages: 182 (121 human, 61 CI/bot)"
draft: false
---

**Total messages: 182 (121 human, 61 CI/bot)**

Note: Of the 182 messages, 121 are human-generated, 61 are CI/bot (bluez.test.bot: 28, patchwork-bot+bluetooth: 11, bugzilla-daemon: 9, BluezTestBot: 8, prathibhamadugonde: 2, kernel test robot: 1, github-actions[bot]: 1, syzbot: 1).

---

## Summary
This week saw active discussions around kernel and BlueZ patches, with significant contributions from independent developers and corporate contributors such as Intel, Qualcomm, MediaTek, and Collabora. Key topics included support for new hardware, bug fixes, and enhancements to Bluetooth subsystems. Several patches were applied to `bluetooth-next` and BlueZ master, addressing issues like buffer overflows, null pointer dereferences, and out-of-bounds reads.

---

## Key Patch Series & Discussions

### Kernel Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Add PCIe M.2 Key E connector support for NXP i.MX boards](https://lore.kernel.org/linux-bluetooth/20260618101047.4185497-1-sherry.sun@oss.nxp.com/) | Sherry Sun | Independent | 8 | Active discussion (13 messages) |
| [Bluetooth: btmtk: Add MT7928 support](https://lore.kernel.org/linux-bluetooth/20260616030132.532184-1-chris.lu@mediatek.com/) | Chris Lu | MediaTek | 1 | Active discussion (8 messages) |
| [Bluetooth: btmtksdio: teardown fixes](https://lore.kernel.org/linux-bluetooth/20260616111224.152140-1-senozhatsky@chromium.org/) | Sergey Senozhatsky | Independent | 3 | Active discussion (8 messages, v2) |
| [Bluetooth: hci_conn: Fix null ptr deref in hci_abort_conn()](https://lore.kernel.org/linux-bluetooth/20260615131131.1459372-1-oss@fourdim.xyz/) | Siwei Zhang | Independent | 2 | Active discussion (6 messages, v5) |
| [Initial Channel Sounding Support for](https://lore.kernel.org/linux-bluetooth/20260616072245.3700010-1-naga.akella@oss.qualcomm.com/) | Naga Bhavani Akella | Qualcomm | 3 | Active discussion (5 messages, v4) |

### BlueZ Userspace Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [audio: harden A2DP parser handling](https://lore.kernel.org/linux-bluetooth/20260620191735.2675946-1-geraldonetto@gmail.com/) | Geraldo Netto | Independent | 2 | Active discussion (3 messages) |
| [shared/gatt: Fix gatt-db buffer overflow for cloned db](https://lore.kernel.org/linux-bluetooth/20260616123029.301362-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 1 | Applied to BlueZ master |
| [shared/rap: Fix Mode 0 step serialization](https://lore.kernel.org/linux-bluetooth/20260618075529.98419-1-prathm@qti.qualcomm.com/) | Prathibha Madugonde | Qualcomm | 1 | Applied to BlueZ master |
| [hci-tester: Work-around possible string overflow](https://lore.kernel.org/linux-bluetooth/20260616085538.3568474-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 1 | Applied to BlueZ master |
| [src: Remove dead assignments in batocomp](https://lore.kernel.org/linux-bluetooth/20260621181534.92005-1-kapoorarnav43@gmail.com/) | Arnav Kapoor | Independent | 1 | Applied to BlueZ master |

### Discussions & Bug Reports
| Topic | From | Notes |
|-------|------|-------|
| [Bluetooth: MGMT: Fix UAF of hci_conn_params in add_device_complete](https://lore.kernel.org/linux-bluetooth/20260615150922.1737274-1-sam@bynar.io/) | Samuel Page | Fix for use-after-free issue |
| [Bluetooth: btnxpuart: Fix out-of-bounds firmware read in nxp_recv_fw_req_v3()](https://lore.kernel.org/linux-bluetooth/178159619299.2177923.13356195860330189592@maoyixie.com/) | Maoyi Xie | Addressed firmware read vulnerability |
| [Bluetooth: simplify force_no_mitm_write() with kstrtobool_from_user()](https://lore.kernel.org/linux-bluetooth/20260617153019.981515-1-dmantipov@yandex.ru/) | Dmitry Antipov | Code simplification |
| [Bluetooth: L2CAP: validate option length before reading conf opt value](https://lore.kernel.org/linux-bluetooth/20260620195635.41765-1-meatuni001@gmail.com/) | Muhammad Bilal | Validation for option length in L2CAP |
| [RTL8852BE (0bda:b853) Bluetooth initialization fails with -16 on ThinkBook 14+](https://lore.kernel.org/linux-bluetooth/b2bc01ba-edc8-4e73-9358-a3bf1d7c569d@mail.ru/) | Misha | Hardware initialization issue |

---

## Top Contributors (by message count)
| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Sergey Senozhatsky | Independent | 13 |
| Sherry Sun | Independent | 9 |
| Siwei Zhang | Independent | 8 |
| Luiz Augusto von Dentz | Intel | 7 |
| Geraldo Netto | Independent | 7 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)
- [Bluetooth: btusb: Add new VID/PID 0x0489/0xe156 for MT7902](https://lore.kernel.org/linux-bluetooth/178154700663.231677.10761395159710291118.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_uart: clear HCI_UART_SENDING when write_work is canceled](https://lore.kernel.org/linux-bluetooth/178154700514.231677.2643745417902047047.git-patchwork-notify@kernel.org/)
- [Bluetooth: 6lowpan: Fix using chan->conn as indication to no remote netdev](https://lore.kernel.org/linux-bluetooth/178154760489.235436.5189666063896910775.git-patchwork-notify@kernel.org/)
- [Bluetooth: MGMT: Fix UAF of hci_conn_params in add_device_complete](https://lore.kernel.org/linux-bluetooth/178155240489.265251.9283382501593618053.git-patchwork-notify@kernel.org/)

### Pushed to bluez/bluez master
- [ci: add CheckKernelLLVM](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2F979e81-058d4c@github.com/)
- [shared/bap: Transition ASE to QoS Configured on CIS loss](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F40f2e3-9c36e4@github.com/)
- [audio: harden a2dp parsers](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1114241%2F000000-dc20a9@github.com/)
- [shared: harden btsnoop trace parsing](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1114243%2F000000-ffaded@github.com/)
- [src: Remove dead assignments in batocomp](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1114380%2F000000-64653d@github.com/)

---

## Company Focus Areas

### Intel
- Luiz Augusto von Dentz contributed patches for 6lowpan fixes and other improvements.
- Chandrashekar Devegowda worked on adding a reset_type parameter to the hdev->reset() callback.

### Qualcomm
- Naga Bhavani Akella contributed patches for initial channel sounding support.
- Prathibha Madugonde and Loic Poulain worked on various BlueZ userspace improvements.

### MediaTek
- Chris Lu contributed patches for MT7928 Bluetooth support.

### Collabora
- Frédéric Danis focused on fixing gatt-db buffer overflow issues and adding management security level events.

### Red Hat
- Bastien Nocera contributed a patch to address string overflow issues in hci-tester.

### Independent Contributors
- Sergey Senozhatsky was the top contributor, focusing on btmtksdio teardown fixes.
- Geraldo Netto contributed patches to harden A2DP parser handling and btsnoop trace parsing.

---

## Notable Trends
1. Increased activity around hardware support, including MT7928 and NXP i.MX boards.
2. Focus on security fixes, including buffer overflows, null pointer dereferences, and out-of-bounds reads.
3. Collaboration across companies like Intel, Qualcomm, MediaTek, and Collabora, showcasing a strong community effort.
4. Continued improvements to BlueZ userspace components, including gatt-db, A2DP parsers, and btsnoop trace parsing.
5. Active iteration of patch series, with multiple versions submitted for review and refinement.
6. Ongoing work to improve Bluetooth management and connection handling, including fixes for UAF and connection abort issues.
7. Contributions from independent developers remain a significant part of the community's activity.
```
