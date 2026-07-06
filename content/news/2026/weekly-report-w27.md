---
title: "linux-bluetooth Weekly Report - Week 27"
date: 2026-07-05
summary: "Total messages: 375 (271 human, 104 CI/bot)"
draft: false
---

**Total messages: 375 (271 human, 104 CI/bot)**

Note: Of the 375 messages, 271 are human-generated, 104 are CI/bot (bluez.test.bot: 48, bugzilla-daemon: 32, patchwork-bot+bluetooth: 10, BluezTestBot: 7, kernel test robot: 3, Sasha Levin: 2, prathibhamadugonde: 1, syzbot: 1).

---

## Summary
This week saw active discussions and patch submissions across both kernel and BlueZ userspace development. Key topics included adding support for new Bluetooth hardware such as the Qualcomm IPQ5018 and MediaTek MT7928, improvements to NVMEM-backed BD address retrieval, and fixes for various Bluetooth subsystem bugs. Collaboration among contributors from different companies remained strong, with Qualcomm, Intel, and Collabora leading contributions.

---

## Key Patch Series & Discussions

### Kernel Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Add PCIe M.2 Key E connector support for NXP i.MX boards](https://lore.kernel.org/linux-bluetooth/20260630103139.3823329-1-sherry.sun@oss.nxp.com/) | Sherry Sun | Independent | 8 | Active discussion |
| [RAP: Move CS default settings](https://lore.kernel.org/linux-bluetooth/20260630133940.2461816-1-naga.akella@oss.qualcomm.com/) | Naga Bhavani Akella | Qualcomm | 6 | v2 submitted |
| [Bluetooth: btmtk: Add MT7928 support](https://lore.kernel.org/linux-bluetooth/20260702101437.1787800-1-chris.lu@mediatek.com/) | Chris Lu | MediaTek | 6 | v9 submitted |
| [Bluetooth: hci_qca: Support QCA2066 on M.2 connector via pwrseq](https://lore.kernel.org/linux-bluetooth/20260702-monza-wireless-v2-3-7b56e2a6a6d4@oss.qualcomm.com/) | Loic Poulain | Qualcomm | 4 | v2 submitted |
| [Bluetooth: btusb: Add ASUS USB-BT540 and USB-BT600 for Realtek 8761CU](https://lore.kernel.org/linux-bluetooth/20260705092857.27050-1-cito@online.de/) | cito | Independent | 2 | v2 submitted |

### BlueZ Userspace Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [plugins/admin: make AdminPolicy state per-adapter](https://lore.kernel.org/linux-bluetooth/20260702083641.378994-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 7 | Active discussion |
| [ASCS: Add validation for PTS SPE test cases](https://lore.kernel.org/linux-bluetooth/20260702130907.49942-1-raghavendra.rao@collabora.com/) | raghu447 | Collabora | 4 | Active discussion |
| [bass: Fix possible crash on bass_update_bis_sync](https://lore.kernel.org/linux-bluetooth/20260629142649.966025-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 5 | v3 submitted |
| [shared/bap: Protect bap_stream_notify_connecting](https://lore.kernel.org/linux-bluetooth/20260629142738.966641-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 5 | v3 submitted |
| [shared/rap: Add bcs_procedure_data aggregation and procedure data API](https://lore.kernel.org/linux-bluetooth/20260703052056.3568571-1-prathm@qti.qualcomm.com/) | Prathibha Madugonde | Qualcomm | 1 | New submission |

### Discussions & Bug Reports
| Topic | From | Notes |
|-------|------|-------|
| [Bluetooth: MGMT: snapshot LOAD_CONN_PARAM data before queueing update](https://lore.kernel.org/linux-bluetooth/20260703060016.570188-1-zzzccc427@gmail.com/) | Cen Zhang | Discussion on management updates |
| [Bluetooth: Properly disable remote wakeup for MT7922/MT7925 on Ryzen platform](https://lore.kernel.org/linux-bluetooth/20260629-btmtk-ryzen-remote-wakeup-v1-1-1d2f1cee6d22@rong.moe/) | Rong Zhang | Active discussion |
| [Bluetooth: L2CAP: Fix use-after-free in l2cap_sock_new_connection_cb()](https://lore.kernel.org/linux-bluetooth/20260629135044.2302753-1-oss@fourdim.xyz/) | Siwei Zhang | Bug fix submitted |
| [Bluetooth: btusb: fix USB interface release on probe error path](https://lore.kernel.org/linux-bluetooth/tencent_A0AEA018EC865AB4DC9D2A43D1E5B71DE905@qq.com/) | Zhao Dongdong | New bug report |

---

## Top Contributors (by message count)
| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Loic Poulain | Qualcomm | 39 |
| Chris Lu | MediaTek | 21 |
| Luiz Augusto von Dentz | Intel | 20 |
| George Moussalem | Independent | 19 |
| Naga Bhavani Akella | Qualcomm | 15 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)
- [Bluetooth: L2CAP: Fix use-after-free in l2cap_sock_new_connection_cb()](https://lore.kernel.org/linux-bluetooth/178285156088.267316.6382092731707043353.git-patchwork-notify@kernel.org/)
- [Bluetooth: fix UAF in bt_accept_dequeue()](https://lore.kernel.org/linux-bluetooth/178285155938.267316.144055219083939907.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: Refactor FLR to use device_reprobe()](https://lore.kernel.org/linux-bluetooth/178285155788.267316.541382714111705819.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: Add IMC Networks QCA9377 to quirks table](https://lore.kernel.org/linux-bluetooth/178285155638.267316.9485052012945402309.git-patchwork-notify@kernel.org/)
- [Bluetooth: bnep: pin L2CAP connection during netdev registration](https://lore.kernel.org/linux-bluetooth/178285155488.267316.4327348213803627629.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb/btqca/hci_sync: Clean up btusb and fix several bugs](https://lore.kernel.org/linux-bluetooth/178285155338.267316.7362111098834622157.git-patchwork-notify@kernel.org/)
- [Bluetooth: bpa10x: avoid OOB read of revision string in bpa10x_setup()](https://lore.kernel.org/linux-bluetooth/178300861363.1757978.14041194859481088379.git-patchwork-notify@kernel.org/)
- [Bluetooth: ISO: fix malformed ISO_END/CONT handling](https://lore.kernel.org/linux-bluetooth/178300861213.1757978.17509435332853877219.git-patchwork-notify@kernel.org/)

### Pushed to bluez/bluez master
- [bass: Fix possible crash on bass_update_bis_sync](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1118322%2F000000-dc5f00@github.com/)
- [shared: remove default settings params from bt_rap_attach_hci](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1118869%2F000000-9d4da6@github.com/)
- [adapter: Fix crash on dev_disconnected](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1120587%2F000000-a6ffa5@github.com/)
- [plugins/admin: make AdminPolicy state per-adapter](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1120331%2F000000-f4465f@github.com/)
- [shared/bap: Validate codec configuration parameters](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1120502%2F000000-a38052@github.com/)
- [Release 5.87](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F220f10-65d11e@github.com/)

---

## Company Focus Areas

### Intel
- Multiple contributions from Luiz Augusto von Dentz, including fixes for crashes in BlueZ userspace.
- Kiran K worked on refactoring FLR to use `device_reprobe()` in the kernel.

### Qualcomm
- Loic Poulain led efforts on NVMEM-backed BD address retrieval and support for QCA2066 on M.2 connectors.
- Naga Bhavani Akella contributed patches for RAP default settings and Bluetooth power modes.

### MediaTek
- Chris Lu actively worked on adding support for MT7928, submitting patches up to v9.

### Collabora
- Frédéric Danis and raghu447 contributed patches for BlueZ userspace, focusing on adapter policies and ASCS validation.

### Independent Contributors
- George Moussalem submitted patches for Qualcomm IPQ5018 Bluetooth controller support.
- Pauli Virtanen provided fixes for hci_conn lookup and refcount handling.

---

## Notable Trends
1. Increased focus on supporting new Bluetooth hardware, including Qualcomm IPQ5018 and MediaTek MT7928.
2. Continued development of NVMEM-backed BD address retrieval for improved device management.
3. Collaboration across companies, especially Qualcomm, Intel, and Collabora, on kernel and userspace patches.
4. Multiple bug fixes addressing use-after-free and out-of-bounds memory issues in Bluetooth subsystems.
5. Active iteration and refinement of patch series, with several reaching advanced versions (e.g., v8, v9).
6. Release of BlueZ 5.87, highlighting ongoing development in the userspace Bluetooth stack.
7. Expansion of dt-bindings documentation for new hardware and features.
```
