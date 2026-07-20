---
title: "linux-bluetooth Weekly Report - Week 29"
date: 2026-07-19
summary: "Total messages: 366 (267 human, 99 CI/bot)"
draft: false
---

**Total messages: 366 (267 human, 99 CI/bot)**

Note: Of the 366 messages, 267 are human-generated, 99 are CI/bot (bluez.test.bot: 58, BluezTestBot: 17, patchwork-bot+bluetooth: 13, bugzilla-daemon: 6, prathibhamadugonde: 2, github-actions[bot]: 1, patchwork-bot+netdevbpf: 1, kernel test robot: 1).

---

## Summary
This week saw significant activity on the linux-bluetooth mailing list, with 366 messages exchanged. Key highlights included discussions around support for new hardware such as the MT7928 chipset and Qualcomm QCC2072, as well as improvements to Channel Sounding APIs and Bluetooth packet handling. Notable contributors included Chris Lu (MediaTek), Luiz Augusto von Dentz (Intel), and Naga Bhavani Akella (Qualcomm), who were among the most active participants in patch submissions and discussions.

---

## Key Patch Series & Discussions

### Kernel Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: btmtk: Add MT7928 support](https://lore.kernel.org/linux-bluetooth/20260717083936.2923891-1-chris.lu@mediatek.com/) | Chris Lu | MediaTek | 7 | v10->v16 |
| [Bluetooth: btusb: Preparation for upcoming Qualcomm QCC2072 support](https://lore.kernel.org/linux-bluetooth/20260713-btusb_prep_qcc2072-v2-0-bbcb651285f2@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 5 | v2 |
| [Bluetooth: btusb: Add support for Qualcomm QCC2072](https://lore.kernel.org/linux-bluetooth/20260713-btusb_qcom-v1-1-39cabc0dd601@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 0 | Initial submission |
| [Bluetooth: btintel: Fix spurious error on FW download error recovery](https://lore.kernel.org/linux-bluetooth/20260714031005.230895-1-ameenaladdin@gmail.com/) | Ameen Al-Asady | Independent | 2 | v1->v2 |
| [Bluetooth: btintel_pcie: Fix DMA memory leak on probe failure](https://lore.kernel.org/linux-bluetooth/tencent_02AC78E0C64C34C55D3AC3DAC5AE5DE20E05@qq.com/) | Zhao Dongdong | Independent | 3 | v1->v2->v3 |

### BlueZ Userspace Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [plugin/admin: Make allowlist adapter-scoped and enforce at runtime](https://lore.kernel.org/linux-bluetooth/20260715090206.212130-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 8 | v2 |
| [Channel Sounding: Aggregate procedure data and expose via D-Bus](https://lore.kernel.org/linux-bluetooth/20260717072647.255002-1-prathm@qti.qualcomm.com/) | Prathibha Madugonde | Qualcomm | 2 | Initial submission |
| [doc: Add Channel Sounding API](https://lore.kernel.org/linux-bluetooth/20260715083958.2723407-1-naga.akella@oss.qualcomm.com/) | Naga Bhavani Akella | Qualcomm | 3 | v5->v6 |
| [tools/sco-tester: fix missing clear of io_id in callbacks](https://lore.kernel.org/linux-bluetooth/acc2842d415b9bef95e60243695463fa7953bf71.1783950503.git.pav@iki.fi/) | Pauli Virtanen | Independent | 4 | Initial submission |
| [adapter: Trigger profile connection on inbound device connection](https://lore.kernel.org/linux-bluetooth/tencent_C252270EE8A4AC5702E228978CF8ABF4E109@qq.com/) | Chengyi Zhao | Independent | 0 | Initial submission |

### Discussions & Bug Reports
| Topic | From | Notes |
|-------|------|-------|
| [Bluetooth: RFCOMM: Fix session UAF in set_termios](https://lore.kernel.org/linux-bluetooth/20260719160311.2898053-1-nicoyip.dev@gmail.com/) | Chengfeng Ye | Addressed a use-after-free issue in RFCOMM |
| [Bluetooth: btusb: Build the driver from multiple source files](https://lore.kernel.org/linux-bluetooth/20260714-btusb_main-v2-1-fd32cf15c26e@oss.qualcomm.com/) | Zijun Hu | Proposed restructuring of btusb driver code |
| [Bluetooth: hci_core: Explicitly kfree_skb() HCI_DRV_PKT and HCI_DIAG_PKT frames](https://lore.kernel.org/linux-bluetooth/20260719-fix_hci_rx_work-v1-1-2d7fdeed3640@oss.qualcomm.com/) | Zijun Hu | Addressed memory management for HCI packets |
| [Bluetooth: virtio_bt: fix virtbt_probe error handling](https://lore.kernel.org/linux-bluetooth/tencent_968BDEBA1F64E4B914B4E3DC25149BDDF40A@qq.com/) | Zhao Dongdong | Fixed error handling in virtio_bt probe function |

---

## Top Contributors (by message count)
| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Chris Lu | MediaTek | 56 |
| Luiz Augusto von Dentz | Intel | 24 |
| Naga Bhavani Akella | Qualcomm | 19 |
| Loic Poulain | Qualcomm | 18 |
| Zijun Hu | Qualcomm | 17 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)
- [Bluetooth: btintel_pcie: serialize reset_type with RECOVERY_IN_PROGRESS](https://lore.kernel.org/linux-bluetooth/178421521189.862995.16187217090027119655.git-patchwork-notify@kernel.org/)

### Pushed to bluez/bluez master
- [monitor: Fix printing subpages bits after all subpages](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2Fb7d71e-1309d5@github.com/)
- [tools/sco-tester: fix missing clear of io_id in callbacks](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1126713%2F000000-014940@github.com/)
- [doc/org.bluez.ChannelSounding1: Add Used by reference and Examples](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1127251%2F000000-76701e@github.com/)
- [src/device: Add ConnectedUUIDs property](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1127021%2F000000-a894f3@github.com/)

---

## Company Focus Areas

### Intel
- Luiz Augusto von Dentz contributed to multiple discussions and patches, including a [GIT PULL request](https://lore.kernel.org/linux-bluetooth/20260713141940.954317-1-luiz.dentz@gmail.com/) and fixes for BlueZ monitor build errors.

### Qualcomm
- Significant contributions from Naga Bhavani Akella, Loic Poulain, Zijun Hu, and Prathibha Madugonde focused on hardware support for Qualcomm chipsets and enhancements to Channel Sounding APIs.

### MediaTek
- Chris Lu was highly active, submitting multiple versions of patches for MT7928 chipset support, including [v16](https://lore.kernel.org/linux-bluetooth/20260717083936.2923891-1-chris.lu@mediatek.com/).

### Collabora
- Frédéric Danis worked on improving the BlueZ admin plugin, including [adapter-scoped allowlist enforcement](https://lore.kernel.org/linux-bluetooth/20260715090206.212130-1-frederic.danis@collabora.com/).

---

## Notable Trends
1. Increased focus on supporting new hardware, including MediaTek MT7928 and Qualcomm QCC2072 chipsets.
2. Continued development of Channel Sounding APIs and D-Bus integration for enhanced Bluetooth capabilities.
3. Efforts to improve Bluetooth packet handling and error recovery mechanisms in kernel drivers.
4. Collaboration across companies such as Intel, Qualcomm, MediaTek, and Collabora on various patches and discussions.
5. Enhanced security measures, including fixes for use-after-free vulnerabilities and improved packet parsing.
6. Development of new APIs for power sequencing and controllability in Qualcomm Bluetooth devices.
7. Active iteration on patch series to address issues and refine functionality.
```
