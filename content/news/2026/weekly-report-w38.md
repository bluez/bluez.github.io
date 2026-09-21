---
title: "linux-bluetooth Weekly Report - Week 38"
date: 2026-09-20
summary: "Total messages: 418 (271 human, 147 CI/bot)"
draft: false
---

**Total messages: 418 (271 human, 147 CI/bot)**

Note: Of the 418 messages, 271 are human-generated, 147 are CI/bot (bluez.test.bot: 90, patchwork-bot+bluetooth: 30, BluezTestBot: 15, github-actions[bot]: 5, Sasha Levin: 3, kernel test robot: 2, patchwork-bot+netdevbpf: 1, syzbot: 1).

---

## Summary
During week 38 (14 - 20 September 2026) the linux-bluetooth mailing list carried 418 messages, 271 from contributors and 147 from CI and bots. There were 97 human-initiated threads: 57 kernel patch series, 34 BlueZ userspace series and 6 discussions or reports. 30 patches were applied via patchwork and 20 commits were pushed to bluez repositories. The most active contributor was Luiz Augusto von Dentz (Intel) with 66 messages. 11 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: Fix 2 devcoredump bugs and improve event length checks](https://lore.kernel.org/linux-bluetooth/20260913-misc_fix-v1-0-558c1e4028b9@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 4 | Initial version |
| [Bluetooth: Add AIC8800D80 SDIO firmware loader and UART HCI](https://lore.kernel.org/linux-bluetooth/cover.1789546358.git.yanli.yang@bedmex.com/) | Yanli Yang | Independent | 3 | Initial version |
| [Bluetooth: btnxpuart: Simplify ACL handling and fix skb leak](https://lore.kernel.org/linux-bluetooth/20260914-misc_fix-v2-0-6178d838c946@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 2 | Version 2 |
| [Bluetooth: btmtk: firmware debug event routing and WMT FUNC_CTRL status fixes](https://lore.kernel.org/linux-bluetooth/20260914065654.102916-1-chris.lu@mediatek.com/) | Chris Lu | MediaTek | 3 | Version 2 |
| [Bluetooth: btusb: Support Qualcomm multi-subsystem QCC2072](https://lore.kernel.org/linux-bluetooth/20260913-btusb_qcc2072-v6-0-137898715844@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 4 | Version 6 |
| [Bluetooth: Add AIC8800D80 SDIO firmware loader and UART HCI](https://lore.kernel.org/linux-bluetooth/cover.1789897503.git.yanli.yang@bedmex.com/) | Yanli Yang | Independent | 3 | Version 2 |
| [Bluetooth: L2CAP: fix connectionless receive path](https://lore.kernel.org/linux-bluetooth/20260917040004.21041-1-kmehltretter@gmail.com/) | Karl Mehltretter | Independent | 2 | Initial version |
| [Bluetooth: btbcm: Add entry for BCM4356A3 UART bluetooth](https://lore.kernel.org/linux-bluetooth/20260914-bcm4356a3-bt-v1-1-ce44d0abb5db@gmail.com/) | Aaron Kling | Independent | 1 | Initial version |
| [Bluetooth: btintel: read ROM debug registers on FW download failure](https://lore.kernel.org/linux-bluetooth/20260917040853.2719484-1-ravindra@intel.com/) | Ravindra | Intel | 1 | Initial version |
| [Bluetooth: btnxpuart: Simplify ACL handling and fix skb leak](https://lore.kernel.org/linux-bluetooth/20260915-misc_fix-v3-0-31fab8976ac1@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 2 | Version 3 |
| [Bluetooth: hci_conn: fix CIS hold ownership on reuse](https://lore.kernel.org/linux-bluetooth/20260915160430.3108071-1-qwe.aldo@gmail.com/) | Aldo Ariel Panzardo | Independent | 2 | Initial version |
| [Bluetooth: ISO: balance the parent hold in hci_bind_bis()](https://lore.kernel.org/linux-bluetooth/20260915160332.3107274-1-qwe.aldo@gmail.com/) | Aldo Ariel Panzardo | Independent | 1 | Initial version |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Cover a BAP stream to a coordinated set](https://lore.kernel.org/linux-bluetooth/20260915211528.1223784-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 11 | Initial version |
| [ipv6: update NUD_FAILED neighbors from NA messages](https://lore.kernel.org/linux-bluetooth/cover.1789448374.git.lfqlee314@gmail.com/) | Lawrence Lee | Independent | 2 | Version 2 |
| [monitor: Search the frames with a pager](https://lore.kernel.org/linux-bluetooth/20260918161408.2464981-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 9 | Version 2 |
| [monitor: Search the frames with a pager](https://lore.kernel.org/linux-bluetooth/20260917204541.2176720-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 6 | Initial version |
| [device: Fix resolving a coordinated set over Secure Connections](https://lore.kernel.org/linux-bluetooth/cover.1789689632.git.pav@iki.fi/) | Pauli Virtanen | Independent | 4 | Initial version |
| [mgmt-tester: fix test failures + avoid hidden skipping](https://lore.kernel.org/linux-bluetooth/cover.1789934710.git.pav@iki.fi/) | Pauli Virtanen | Independent | 5 | Initial version |
| [test: functional: add mpris-proxy end-to-end tests](https://lore.kernel.org/linux-bluetooth/cover.1789430529.git.pav@iki.fi/) | Pauli Virtanen | Independent | 3 | Initial version |
| [shared/bap: Skip local metadata Config callbacks](https://lore.kernel.org/linux-bluetooth/VPeeCvkuNkEcQo9M5HlwGnyftq-hu4hT1wqkc3pjPtao6HWEoFu2rWyFMtz0K6vG4l2DDbyg4ZfvO5CQb2zR44-UcNh3l6qOfjf90ThTyxg=@proton.me/) | dt | Independent | 2 | Initial version |
| [doc: test-runner: document the virtual machine architecture](https://lore.kernel.org/linux-bluetooth/20260914175136.613532-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 2 | Initial version |
| [monitor: Fix heap-buffer-overflows triggered by HCI devcoredump](https://lore.kernel.org/linux-bluetooth/20260915-fix_heap_overflow-v1-0-8fc39dbcb303@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 2 | Initial version |
| [test: Cover BAP transport release and reacquire](https://lore.kernel.org/linux-bluetooth/bJzWf-DKkZ2NJt0LruBxuNgW3xnTzD5zu2ll54ZFD3hN89Bul7SbBAeOcvTK_S8vnaM-F5QpmQ0wZuDs9_M_G0fAbPTS8NMxFxctkbXnr2I=@proton.me/) | dt | Independent | 3 | Initial version |
| [Rework M.2 Bluetooth instantiation using the auxiliary bus](https://lore.kernel.org/linux-bluetooth/20260915-pci-m2-bt-rework-v1-0-3c7d9cf9c010@oss.qualcomm.com/) | Manivannan Sadhasivam | Independent | 5 | Initial version |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [[bug report] Bluetooth: btusb: Add support for Qualcomm multi-subsystem QCC2072](https://lore.kernel.org/linux-bluetooth/aqw8ShHyjdZhPc4U@stanley.mountain/) | Dan Carpenter | 6 messages |
| [[REGRESSION] btusb: ASUS USB-BT540/BT600 IDs backported without, RTL8761CUV supp...](https://lore.kernel.org/linux-bluetooth/9ac1c05b-e9f2-49e9-af63-9cd0e42115fc@gmail.com/) | ra.prism | 3 messages |
| [MAINTAINERS: add entry for NXP wireless Bluetooth driver](https://lore.kernel.org/linux-bluetooth/20260916020719.61981-1-alex.zhou@oss.nxp.com/) | alex.zhou | 2 messages |
| [[GIT PULL] bluetooth 2026-09-15](https://lore.kernel.org/linux-bluetooth/20260915192441.1130583-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 2 messages |
| [Bonded LE HID device cannot reconnect while any process holds a discovery sessio...](https://lore.kernel.org/linux-bluetooth/8ba2bb7b-181e-4a11-bfef-268e1ff99276@noblesound.at/) | Peter Lemken | 1 message |
| [﻿Bluetooth: btintel: validate DDC record lengths](https://lore.kernel.org/linux-bluetooth/20260918083838.23676-1-aluvala.sai.teja@intel.com/) | Sai Teja Aluvala | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Bluetooth: Add AIC8800D80 SDIO firmware loader and UART HCI](https://lore.kernel.org/linux-bluetooth/cover.1789897503.git.yanli.yang@bedmex.com/) | v1->v2 |
| [Bluetooth: RFCOMM: Reject short EA=0 frames in rfcomm_recv_frame()](https://lore.kernel.org/linux-bluetooth/20260919112514.3871857-1-benquike@gmail.com/) | v1->v2 |
| [Bluetooth: RFCOMM: fix NULL dereference of dlc->session in RFCOMM_CONN](https://lore.kernel.org/linux-bluetooth/20260919112518.3872094-1-benquike@gmail.com/) | v1->v2 |
| [Bluetooth: RFCOMM: free the skb when the DLC has no owner](https://lore.kernel.org/linux-bluetooth/20260915070119.45143-1-skokovmaksimevg@gmail.com/) | v1->v2 |
| [Bluetooth: af_bluetooth: Fix double list_del and UAF in accept_q](https://lore.kernel.org/linux-bluetooth/20260918104736.958613-1-ngocthang2710.1999@gmail.com/) | v2->v3 |
| [Bluetooth: btintel: read ROM debug registers on FW download failure](https://lore.kernel.org/linux-bluetooth/20260918084457.2746999-1-ravindra@intel.com/) | v1->v2->v3 |
| [Bluetooth: btnxpuart: Simplify ACL handling and fix skb leak](https://lore.kernel.org/linux-bluetooth/20260915-misc_fix-v3-0-31fab8976ac1@oss.qualcomm.com/) | v2->v3 |
| [Bluetooth: btnxpuart: Simplify nxp_recv_acl_pkt() by hci_acl_handle()](https://lore.kernel.org/linux-bluetooth/20260915-misc_fix-v3-1-31fab8976ac1@oss.qualcomm.com/) | v2->v3 |
| [dt-bindings: vendor-prefixes: Add AIC Semiconductor](https://lore.kernel.org/linux-bluetooth/7a2c93192831b8756fe071fd60ec064a05703b8b.1789897503.git.yanli.yang@bedmex.com/) | v1->v2 |
| [monitor: Search the frames with a pager](https://lore.kernel.org/linux-bluetooth/20260918161408.2464981-1-luiz.dentz@gmail.com/) | v1->v2 |
| [shared/bap: Skip local metadata Config callbacks](https://lore.kernel.org/linux-bluetooth/ys4-B1PGqhV2wgPjUFnZLGOi_QkoCs1ZyOZl679pGV8nNJLfR28E4wDuGQti0eyGwIYHgFGa4GqfTi5Vg_nvOqQBqEhRaTlA_D9MxgEblZo=@proton.me/) | v1->v2->v3->v4->v5 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 66 |
| Pauli Virtanen | Independent | 28 |
| Zijun Hu | Qualcomm | 24 |
| dt | Independent | 19 |
| Yanli Yang | Independent | 12 |
| Hui Peng | Independent | 11 |
| Lawrence Lee | Independent | 8 |
| Mark Brown | Independent | 8 |
| Aldo Ariel Panzardo | Independent | 7 |
| Ravindra | Intel | 6 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: btmtksdio: Fix spurious ownership error logs](https://lore.kernel.org/linux-bluetooth/178939621487.604238.1920363248100368230.git-patchwork-notify@kernel.org/)
- [Bluetooth: ISO: Fix parent socket leak in iso_conn_ready()](https://lore.kernel.org/linux-bluetooth/178939621337.604238.10918376880914591840.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtksdio: Fix PM runtime reference leak in shutdown](https://lore.kernel.org/linux-bluetooth/178939620898.604238.8055106732131583271.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: fix off-by-one bounds check in RX submit](https://lore.kernel.org/linux-bluetooth/178939621187.604238.18155595324453750865.git-patchwork-notify@kernel.org/)
- [Bluetooth: RFCOMM: avoid socket lock inversion in listener cleanup](https://lore.kernel.org/linux-bluetooth/178939621037.604238.10748160763592538123.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtk: firmware debug event routing and WMT FUNC_CTRL statu](https://lore.kernel.org/linux-bluetooth/178939620588.604238.15437504595416258002.git-patchwork-notify@kernel.org/)
- [Bluetooth: keep dst_type with dst when reusing an LE connection](https://lore.kernel.org/linux-bluetooth/178939620713.604238.4398893815001595564.git-patchwork-notify@kernel.org/)
- [Bluetooth: virtio_bt: Fix probe error cleanup](https://lore.kernel.org/linux-bluetooth/178950241387.2253397.3488916674710358417.git-patchwork-notify@kernel.org/)
- [Bluetooth: SMP: reject Security Request over BR/EDR](https://lore.kernel.org/linux-bluetooth/178958040438.2768284.4792194760789694555.git-patchwork-notify@kernel.org/)
- [Bluetooth: mgmt: Dequeue pending mesh_send_sync entries on cancel](https://lore.kernel.org/linux-bluetooth/178958100488.2773127.14367630218893812181.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sock: reject out-of-range OCF values](https://lore.kernel.org/linux-bluetooth/178958161487.2777538.9063119432058649087.git-patchwork-notify@kernel.org/)
- [Bluetooth: ISO: balance the parent hold in hci_bind_bis()](https://lore.kernel.org/linux-bluetooth/178958161343.2777538.8562575351949671610.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: validate frame length before control and FCS access](https://lore.kernel.org/linux-bluetooth/178958161172.2777538.14752466072656228056.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_conn: fix CIS hold ownership on reuse](https://lore.kernel.org/linux-bluetooth/178958160838.2777538.9118454215553806207.git-patchwork-notify@kernel.org/)
- [Bluetooth: mgmt: fix race in read_unconf_index_list()](https://lore.kernel.org/linux-bluetooth/178958160987.2777538.5804352292158547567.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sock: validate event length before filtering](https://lore.kernel.org/linux-bluetooth/178958160713.2777538.3303073061457173615.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [test-runner: use virtio-fs by default, functional test speedup](https://lore.kernel.org/linux-bluetooth/178939800541.619193.9614288052625360897.git-patchwork-notify@kernel.org/)
- [doc: test-runner: document the virtual machine architecture](https://lore.kernel.org/linux-bluetooth/178949160439.1731852.11211943029246633562.git-patchwork-notify@kernel.org/)
- [test: functional: add mpris-proxy end-to-end tests](https://lore.kernel.org/linux-bluetooth/178950540463.2270046.15143718818647294828.git-patchwork-notify@kernel.org/)
- [test-runner: Enable interrupt remapping for PCIe passthrough](https://lore.kernel.org/linux-bluetooth/178958341112.3229304.24757968331420535.git-patchwork-notify@kernel.org/)
- [doc/test-functional: Document PCIe controller passthrough](https://lore.kernel.org/linux-bluetooth/178958340962.3229304.12375212460389059067.git-patchwork-notify@kernel.org/)
- [Cover a BAP stream to a coordinated set](https://lore.kernel.org/linux-bluetooth/178958340812.3229304.13270316680740973228.git-patchwork-notify@kernel.org/)
- [MAINTAINERS: add entry for NXP wireless Bluetooth driver](https://lore.kernel.org/linux-bluetooth/178958400988.3235826.5026729407609214703.git-patchwork-notify@kernel.org/)
- [tools/l2cap-tester: test closing sockets with ECRED defer](https://lore.kernel.org/linux-bluetooth/178966620712.3782583.17931029681010994590.git-patchwork-notify@kernel.org/)
- [emulator: bthost: add function for sending raw L2CAP sig commands](https://lore.kernel.org/linux-bluetooth/178966620587.3782583.17922597380682982550.git-patchwork-notify@kernel.org/)
- [gatt-server: Check prepare write length before reallocating](https://lore.kernel.org/linux-bluetooth/178966620463.3782583.6861381345742673420.git-patchwork-notify@kernel.org/)
- [monitor: Reference request frames on responses](https://lore.kernel.org/linux-bluetooth/178966740538.3795449.1357487433014753768.git-patchwork-notify@kernel.org/)
- [device: Fix resolving a coordinated set over Secure Connections](https://lore.kernel.org/linux-bluetooth/178974904814.1035983.12606949586547695456.git-patchwork-notify@kernel.org/)
- [shared/bap: Skip local metadata Config callbacks](https://lore.kernel.org/linux-bluetooth/178975200713.1061421.865108747218478058.git-patchwork-notify@kernel.org/)
- [doc/qualification: Add ASCS PICS file](https://lore.kernel.org/linux-bluetooth/178975200590.1061421.162653018879655714.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- [mesh: Fix Command Disallowed on random address cha...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1164346%2F000000-13999b@github.com/)
- [doc: test-runner: document the virtual machine arc...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1164802%2F000000-fa99a4@github.com/)
- [Add instructions for localci usage](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2Ffa1938-e0b8a6@github.com/)
- [tools/test-runner: replace alloca() based argv setup](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F61a2b3-c8e2b9@github.com/)
- [doc/test-functional: Document PCIe controller pass...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1165941%2F000000-ccee9e@github.com/)
- [test-runner: Enable interrupt remapping for PCIe p...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1165938%2F000000-d6364a@github.com/)
- [action: change action to pass --device /dev/kvm to...](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2Fe0b8a6-603489@github.com/)
- [test: functional: add mpris-proxy BR/EDR test cases](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F6dc064-e2ec68@github.com/)
- [shared/bass: add a ready callback](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1165926%2F000000-f8ccd9@github.com/)
- [monitor: Route the decoding output through a singl...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1168010%2F000000-46235d@github.com/)
- [gatt-server: Check prepare write length before rea...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2Ff87a79-240105@github.com/)
- [adapter: remove the devices from the list before f...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1169029%2F000000-bce86b@github.com/)
- [monitor/analyze: Free the channel latency plots](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1168850%2F000000-6eb44f@github.com/)
- [monitor: Add constants for CTE related commands](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F084d21-ebbb4e@github.com/)
- [adapter: Set Audio service class bit for A2DP sink](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1168672%2F000000-1a1288@github.com/)
- [mgmt: Add defines for the long term key types](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1168152%2F000000-874084@github.com/)
- [a2dp: Fix crash on NULL stream in transport_cb](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1169363%2F000000-0e2503@github.com/)
- [adapter: Fix crash on short start discovery reply](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1169362%2F000000-1bc658@github.com/)
- [bap: Fix use-after-free of device referenced by se...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1169068%2F000000-a53f4a@github.com/)
- [mgmt-tester: ignore Debug feature in Read Exp Feat...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1169895%2F000000-24a2c7@github.com/)

---

## Company Focus Areas

### Independent Contributors

- [ipv6: update NUD_FAILED neighbors from NA messages](https://lore.kernel.org/linux-bluetooth/cover.1789448374.git.lfqlee314@gmail.com/)
- [Bluetooth: Add AIC8800D80 SDIO firmware loader and UART HCI](https://lore.kernel.org/linux-bluetooth/cover.1789546358.git.yanli.yang@bedmex.com/)
- [[bug report] Bluetooth: btusb: Add support for Qualcomm multi-subsystem QCC2072](https://lore.kernel.org/linux-bluetooth/aqw8ShHyjdZhPc4U@stanley.mountain/)
- [device: Fix resolving a coordinated set over Secure Connections](https://lore.kernel.org/linux-bluetooth/cover.1789689632.git.pav@iki.fi/)

### Intel

- [Cover a BAP stream to a coordinated set](https://lore.kernel.org/linux-bluetooth/20260915211528.1223784-1-luiz.dentz@gmail.com/)
- [monitor: Search the frames with a pager](https://lore.kernel.org/linux-bluetooth/20260918161408.2464981-1-luiz.dentz@gmail.com/)
- [monitor: Search the frames with a pager](https://lore.kernel.org/linux-bluetooth/20260917204541.2176720-1-luiz.dentz@gmail.com/)
- [Bluetooth: btintel: read ROM debug registers on FW download failure](https://lore.kernel.org/linux-bluetooth/20260917040853.2719484-1-ravindra@intel.com/)

### Qualcomm

- [Bluetooth: Fix 2 devcoredump bugs and improve event length checks](https://lore.kernel.org/linux-bluetooth/20260913-misc_fix-v1-0-558c1e4028b9@oss.qualcomm.com/)
- [Bluetooth: btnxpuart: Simplify ACL handling and fix skb leak](https://lore.kernel.org/linux-bluetooth/20260914-misc_fix-v2-0-6178d838c946@oss.qualcomm.com/)
- [Bluetooth: btusb: Support Qualcomm multi-subsystem QCC2072](https://lore.kernel.org/linux-bluetooth/20260913-btusb_qcc2072-v6-0-137898715844@oss.qualcomm.com/)
- [Bluetooth: btnxpuart: Simplify ACL handling and fix skb leak](https://lore.kernel.org/linux-bluetooth/20260915-misc_fix-v3-0-31fab8976ac1@oss.qualcomm.com/)

### MediaTek

- [Bluetooth: btmtk: firmware debug event routing and WMT FUNC_CTRL status fixes](https://lore.kernel.org/linux-bluetooth/20260914065654.102916-1-chris.lu@mediatek.com/)
