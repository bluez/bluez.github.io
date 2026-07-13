---
title: "linux-bluetooth Weekly Report - Week 28"
date: 2026-07-12
summary: "Total messages: 328 (226 human, 102 CI/bot)"
draft: false
---

**Total messages: 328 (226 human, 102 CI/bot)**

Note: Of the 328 messages, 226 are human-generated, 102 are CI/bot (bluez.test.bot: 50, BluezTestBot: 21, patchwork-bot+bluetooth: 19, bugzilla-daemon: 6, kernel test robot: 3, prathibhamadugonde: 1, patchwork-bot+netdevbpf: 1, Sasha Levin: 1).

---

## Summary
This week saw significant activity on the linux-bluetooth mailing list, with 328 messages in total. Key topics included the addition of Channel Sounding support in BlueZ, new hardware support for Qualcomm and NXP platforms, and various bug fixes and improvements in both the kernel and BlueZ userspace. Qualcomm and Intel were the most active contributors, with notable contributions from independent developers as well.

---

## Key Patch Series & Discussions

### Kernel Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: btusb: Preparation for upcoming Qualcomm QCC2072 support](https://lore.kernel.org/linux-bluetooth/20260708-btusb_prep_qcc2072-v1-0-d835b187fd01@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 6 | Active discussion with 9 messages |
| [arm64: dts: qcom: ipq5018: add node required for Bluetooth support](https://lore.kernel.org/linux-bluetooth/20260709-ipq5018-bluetooth-v5-5-e476c41f03b8@outlook.com/) | George Moussalem | Independent | 6 | v5, active discussion with 9 messages |
| [Bluetooth: fix hci_conn lookup RCU usage + holding refcounts](https://lore.kernel.org/linux-bluetooth/cover.1783671570.git.pav@iki.fi/) | Pauli Virtanen | Independent | 4 | v3, active discussion with 6 messages |
| [Bluetooth: virtio: Fix virtbt_probe() init and cleanup](https://lore.kernel.org/linux-bluetooth/20260709114745.4030794-1-haoxiang_li2024@163.com/) | Haoxiang Li | Independent | 4 | v4, active discussion with 6 messages |
| [Bluetooth: MGMT: Fix discovery state race against cmd_sync worker](https://lore.kernel.org/linux-bluetooth/20260707093426.372897-1-xiuzhuo.shang@oss.qualcomm.com/) | Xiuzhuo Shang | Qualcomm | 4 | Active discussion with 4 messages |

### BlueZ Userspace Patches
| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Add D-Bus and bluetoothctl support for Channel Sounding control](https://lore.kernel.org/linux-bluetooth/20260706161603.2744459-1-naga.akella@oss.qualcomm.com/) | Naga Bhavani Akella | Qualcomm | 5 | Active discussion with 11 messages |
| [doc: Add Channel Sounding API and bluetoothctl documentation](https://lore.kernel.org/linux-bluetooth/20260710055910.3691701-1-naga.akella@oss.qualcomm.com/) | Naga Bhavani Akella | Qualcomm | 3 | v4, active discussion with 4 messages |
| [adapter: Fix crash on UUID discovery filter match](https://lore.kernel.org/linux-bluetooth/20260709122704.351232-1-tomcatshoek@zeelandnet.nl/) | Tom Catshoek | Independent | 1 | Active discussion with 7 messages |
| [gobex: Fix use-after-free when cancelling SRM PUT transfer](https://lore.kernel.org/linux-bluetooth/20260707063543.80320-1-rahul.samana@oss.qualcomm.com/) | Rahul Samana | Qualcomm | 1 | Active discussion with 2 messages |
| [shared/bap: Use util_ltv_foreach to process metadata](https://lore.kernel.org/linux-bluetooth/20260707183944.1215551-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 1 | Active discussion with 2 messages |

### Discussions & Bug Reports
| Topic | From | Notes |
|-------|------|-------|
| [Bluetooth: MGMT: Fix discovery state race against cmd_sync worker](https://lore.kernel.org/linux-bluetooth/20260707093426.372897-1-xiuzhuo.shang@oss.qualcomm.com/) | Xiuzhuo Shang | Multiple versions (v1->v4) discussed |
| [Bluetooth: hci_qca: Clear memdump state on invalid dump size](https://lore.kernel.org/linux-bluetooth/20260709062250.4166128-1-ruoyuw560@gmail.com/) | Ruoyu Wang | Bug fix discussed in 4 messages |
| [a2dp: Fix loading of remote SEP from cache](https://lore.kernel.org/linux-bluetooth/20260710072817.270328-1-mikhail.v.gavrilov@gmail.com/) | Mikhail Gavrilov | Bug fix discussed in 4 messages |

---

## Top Contributors (by message count)
| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Naga Bhavani Akella | Qualcomm | 33 |
| Luiz Augusto von Dentz | Intel | 31 |
| George Moussalem | Independent | 22 |
| Pauli Virtanen | Independent | 18 |
| Loic Poulain | Qualcomm | 13 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)
- [Bluetooth: MGMT: revalidate LOAD_CONN_PARAM queued update](https://lore.kernel.org/linux-bluetooth/178344541188.2101608.13776117493322216001.git-patchwork-notify@kernel.org/)
- [Bluetooth: qca: fix NVM tag length underflow in TLV parser](https://lore.kernel.org/linux-bluetooth/178344541038.2101608.10046636030996083737.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_nokia: validate firmware packet bounds](https://lore.kernel.org/linux-bluetooth/178344540888.2101608.9319054193030015302.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: Add ASUS USB-BT540 for Realtek 8761CU](https://lore.kernel.org/linux-bluetooth/178344540738.2101608.3736686961465718656.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: Add ASUS USB-BT540 and USB-BT600 for Realtek 8761CU](https://lore.kernel.org/linux-bluetooth/178344540614.2101608.6818912304609485751.git-patchwork-notify@kernel.org/)

### Pushed to bluez/bluez master
- [rap: Add Channel Sounding parameter types and APIs](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1122551%2F000000-0606fa@github.com/)
- [shared/bap: Use util_ltv_foreach to process metadata](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1123298%2F000000-5a8416@github.com/)
- [adapter: Fix crash on dev_disconnected](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F65d11e-5bc6aa@github.com/)
- [l2test: Fix calling getsockopt(BT_PHY)](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1123158%2F000000-b98029@github.com/)
- [gobex: Fix use-after-free when cancelling SRM PUT transfer](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1122826%2F000000-db4489@github.com/)

---

## Company Focus Areas

### Intel
- Luiz Augusto von Dentz contributed significantly to BlueZ userspace patches, focusing on metadata processing and bug fixes.

### Qualcomm
- Naga Bhavani Akella led efforts on Channel Sounding support in BlueZ.
- Loic Poulain contributed patches for M.2 Bluetooth support and power sequencing for Qualcomm hardware.
- Several Qualcomm contributors worked on kernel patches for new hardware support and bug fixes.

### Independent Developers
- George Moussalem contributed extensively to Qualcomm IPQ5018 Bluetooth support.
- Pauli Virtanen focused on kernel-level bug fixes and improvements.

---

## Notable Trends
1. Significant focus on Channel Sounding support in BlueZ, with multiple patches and documentation updates.
2. New hardware support for Qualcomm IPQ5018 and NXP i.MX boards.
3. Bug fixes addressing memory leaks, race conditions, and firmware validation in both kernel and userspace.
4. Increased collaboration between Qualcomm and independent developers on kernel patches.
5. Continued improvements to BlueZ userspace tools, including `bluetoothctl` and `gobex`.
6. Expansion of Realtek Bluetooth device support in the kernel.
7. Emphasis on improving power management and sequencing for Bluetooth hardware.
```
