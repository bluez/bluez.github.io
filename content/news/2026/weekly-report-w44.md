---
title: "linux-bluetooth Weekly Report - Week 44"
date: 2026-11-01
summary: "Total messages: 298 (189 human, 109 CI/bot)"
draft: false
---

**Total messages: 298 (189 human, 109 CI/bot)**

Note: Of the 298 messages, 189 are human-generated, 109 are CI/bot (bluez.test.bot: 79, patchwork-bot+bluetooth: 21, bugzilla-daemon: 5, kernel test robot: 3, Sasha Levin: 1).

---

## Summary
During week 44 (26 October - 1 November 2026) the linux-bluetooth mailing list carried 298 messages, 189 from contributors and 109 from CI and bots. There were 101 human-initiated threads: 61 kernel patch series, 31 BlueZ userspace series and 9 discussions or reports. 21 patches were applied via patchwork and 0 commits were pushed to bluez repositories. The most active contributor was Luiz Augusto von Dentz (Intel) with 25 messages. 9 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: btintel_pcie: Add LOG_MASK parsing from debug INI](https://lore.kernel.org/linux-bluetooth/20261029095344.3989729-1-kiran.k@intel.com/) | Kiran K | Intel | 7 | Initial version |
| [Bluetooth: btusb: UB500 reported maximum data length](https://lore.kernel.org/linux-bluetooth/20261029023235.1280321-1-cochcoder@proton.me/) | Kyle Pepper | Independent | 1 | Version 3 |
| [Bluetooth: hci_conn: fix SCO connection reuse](https://lore.kernel.org/linux-bluetooth/20261027165009.2401154-1-yaroslav.voytovych@gmail.com/) | Iaroslav Voitovych | Independent | 3 | Initial version |
| [Bluetooth: hci_qca: Reopen port after power on for QCA2066](https://lore.kernel.org/linux-bluetooth/20261028111839.2148515-1-shuai.zhang@oss.qualcomm.com/) | Shuai Zhang | Qualcomm | 2 | Version 3 |
| [Bluetooth: Disable LL Privacy on Intel JfP (8087:0aaa)](https://lore.kernel.org/linux-bluetooth/20261027164359.460369-1-dfrancio@gmail.com/) | Diego Francio | Independent | 2 | Initial version |
| [Bluetooth: L2CAP: Ignore connection responses with wrong ident](https://lore.kernel.org/linux-bluetooth/20261029094104.2952304-1-jinwang.li@oss.qualcomm.com/) | Jinwang Li | Qualcomm | 1 | Initial version |
| [Bluetooth: MGMT: Fix discovery stuck after a failed Stop Discovery](https://lore.kernel.org/linux-bluetooth/20261027165144.75105-1-kevin@simpleble.org/) | Kevin Dewald | Independent | 1 | Initial version |
| [Bluetooth: btrtl: Fix NULL return on errors in btrtl_initialize()](https://lore.kernel.org/linux-bluetooth/20261027072148.3963826-1-tzungbi@kernel.org/) | Tzung-Bi Shih | Independent | 2 | Initial version |
| [Bluetooth: btusb: UB500 MTU-only revision](https://lore.kernel.org/linux-bluetooth/20261029001349.1031535-1-cochcoder@proton.me/) | Kyle Pepper | Independent | 1 | Version 2 |
| [Bluetooth: Keep borrowed keys inside RCU sections](https://lore.kernel.org/linux-bluetooth/pm-bluetooth-objects-candidate-0122-v8-952ad9eb0ef59367ba6a-0@gmail.com/) | Cen Zhang | Independent | 4 | Initial version |
| [Bluetooth: MGMT: Clear disabled connection parameters when loading none](https://lore.kernel.org/linux-bluetooth/20261029202832.35354-1-kevin@simpleble.org/) | Kevin Dewald | Independent | 1 | Initial version |
| [Bluetooth: MGMT: Fix discovery stuck after a failed Stop Discovery](https://lore.kernel.org/linux-bluetooth/20261027172730.86568-1-kevin@simpleble.org/) | Kevin Dewald | Independent | 1 | Version 2 |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Run test-functional under User Mode Linux](https://lore.kernel.org/linux-bluetooth/20261030212940.753771-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 10 | Initial version |
| [adapter: Fix Discovering staying true when stopping fails](https://lore.kernel.org/linux-bluetooth/20261027171923.82919-1-kevin@simpleble.org/) | Kevin Dewald | Independent | 2 | Initial version |
| [obexd/bluetooth: Fix profile registration race and clean up](https://lore.kernel.org/linux-bluetooth/20261027-fix_obex-v1-0-3d91aed181b6@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 2 | Initial version |
| [obexd/pbap: Fix NewMissedCalls reporting](https://lore.kernel.org/linux-bluetooth/20261027071046.2272116-1-jinwang.li@oss.qualcomm.com/) | Jinwang Li | Qualcomm | 2 | Version 2 |
| [obexd/pbap: Report NewMissedCalls for mch](https://lore.kernel.org/linux-bluetooth/20261026131504.1016687-1-jinwang.li@oss.qualcomm.com/) | Jinwang Li | Qualcomm | 2 | Initial version |
| [shared/bap: Fix line over 80 columns in set_base_subgroup](https://lore.kernel.org/linux-bluetooth/20261028135517.2395290-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 3 | Initial version |
| [adapter: Fix Discovering staying true after a rejected stop](https://lore.kernel.org/linux-bluetooth/20261027160852.54689-1-kevin@simpleble.org/) | Kevin Dewald | Independent | 1 | Initial version |
| [ranging: Issue CS Security Enable based on the ACL role](https://lore.kernel.org/linux-bluetooth/20261027140953.1854740-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 2 | Initial version |
| [advertising: Fix leaking clients that exit while registering](https://lore.kernel.org/linux-bluetooth/20261027051206.92829-1-kevin@simpleble.org/) | Kevin Dewald | Independent | 1 | Initial version |
| [asha: allow LE 2M PHY on the audio channel](https://lore.kernel.org/linux-bluetooth/20261029002132.1035888-1-cochcoder@proton.me/) | Kyle Pepper | Independent | 1 | Version 2 |
| [gatt-database: Fix freeing wrong client notify IO](https://lore.kernel.org/linux-bluetooth/20261026032544.49563-1-jared@kotfu.net/) | Jared Crapo | Independent | 1 | Initial version |
| [ioctl-tester: Fix name of the 3-DH packet type test](https://lore.kernel.org/linux-bluetooth/20261028051620.3167775-1-yaroslav.voytovych@gmail.com/) | Iaroslav Voitovych | Independent | 1 | Initial version |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [[BUG] rtl_bt: RTL8852B BT USB FW 0x127C_FD78 stops delivering BLE keyboard input...](https://lore.kernel.org/linux-bluetooth/CAAErAfLhrvtQOEqtGhEOmNX+0Lkq7ckLekmgSjot4-7jFD0shA@mail.gmail.com/) | Athos Andrade | 2 messages |
| [[REPORT] btusb: QCA9377 13d3:3503 on ROM firmware: HCI hang during mSBC SCO](https://lore.kernel.org/linux-bluetooth/20261029013350.360574-1-yaroslav.voytovych@gmail.com/) | Iaroslav Voitovych | 2 messages |
| [[STABLE v6.1-v5.10 0/2] Bluetooth: L2CAP: Follow-up fixes for b66774b48dd9 (v6.1...](https://lore.kernel.org/linux-bluetooth/20261027100242.2886699-1-lee@kernel.org/) | Lee Jones | 2 messages |
| [[BUG] Bluetooth: cmd_work queued into draining workqueue in hci_cmd_timeout()](https://lore.kernel.org/linux-bluetooth/tencent_13E8A8381F9A288CD4F9EFE391122712D307@qq.com/) | Yang Guikun | 1 message |
| [[BUG] Bluetooth: hci_cc_le_set_cig_params trusts short retained command](https://lore.kernel.org/linux-bluetooth/179317463153.87610.8996555110609321376@stu.pku.edu.cn/) | Yifan Zhang | 1 message |
| [[BUG] Bluetooth: hci_cs_le_create_cis trusts short retained command](https://lore.kernel.org/linux-bluetooth/179317462624.87574.6271582002629080499@stu.pku.edu.cn/) | Yifan Zhang | 1 message |
| [[STABLE v6.1-v5.10 1/2] Bluetooth: L2CAP: access chan->conn safely in get/setsoc...](https://lore.kernel.org/linux-bluetooth/20261027100242.2886699-2-lee@kernel.org/) | Lee Jones | 1 message |
| [[STABLE v6.1-v5.10 2/2] Bluetooth: L2CAP: refuse __l2cap_chan_add if chan alread...](https://lore.kernel.org/linux-bluetooth/20261027100242.2886699-3-lee@kernel.org/) | Lee Jones | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Bluetooth: L2CAP: fix memory leak from repeated configuration of a con](https://lore.kernel.org/linux-bluetooth/20261028030107.2213982-1-bsdhenrymartin@gmail.com/) | v1->v2 |
| [Bluetooth: MGMT: Fix discovery stuck after a failed Stop Discovery](https://lore.kernel.org/linux-bluetooth/20261030042437.42733-1-kevin@simpleble.org/) | v1->v2->v3->v4 |
| [Bluetooth: SMP: Serialize forced BR/EDR channel changes](https://lore.kernel.org/linux-bluetooth/pm-bluetooth-objects-candidate-0184-v9-4094fa28af7bd56a283a-1@gmail.com/) | v1->v2->v3 |
| [Bluetooth: SMP: Serialize root channel updates](https://lore.kernel.org/linux-bluetooth/pm-bluetooth-objects-candidate-0184-v9-4094fa28af7bd56a283a-0@gmail.com/) | v1->v2->v3 |
| [Bluetooth: btintel: Add TOP silent reset hooks](https://lore.kernel.org/linux-bluetooth/20261027151930.386971-1-chandrashekar.devegowda@intel.com/) | v3->v4 |
| [Bluetooth: btusb: support larger LE packets on TP-Link UB500](https://lore.kernel.org/linux-bluetooth/5a7311d6f4cc94931fd753e5fe0d54a2a65f631a.1793315289.git.cochcoder@proton.me/) | v4->v5 |
| [asha: allow LE 2M PHY on the audio channel](https://lore.kernel.org/linux-bluetooth/20261029030037.1300725-1-cochcoder@proton.me/) | v2->v3 |
| [l2cap-tester: Check compatible interval preferences](https://lore.kernel.org/linux-bluetooth/20261031193734.189558-1-cochcoder@proton.me/) | v1->v2 |
| [obexd/pbap: Fix NewMissedCalls parameter size](https://lore.kernel.org/linux-bluetooth/20261027071046.2272116-2-jinwang.li@oss.qualcomm.com/) | v1->v2 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 25 |
| Cen Zhang | Independent | 18 |
| Kyle Pepper | Independent | 15 |
| Kevin Dewald | Independent | 14 |
| cochcoder | Independent | 10 |
| Kiran K | Intel | 9 |
| Zijun Hu | Qualcomm | 8 |
| Jinwang Li | Qualcomm | 7 |
| Iaroslav Voitovych | Independent | 7 |
| Michael McAllister | Independent | 5 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: btintel: check FIPS status before firmware download](https://lore.kernel.org/linux-bluetooth/179321640558.1390808.2098882383641688916.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: Add LOG_MASK parsing from debug INI](https://lore.kernel.org/linux-bluetooth/179336761305.1081341.11036197403999043554.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtk: fix error handling in btmtk_usb_isointf_init()](https://lore.kernel.org/linux-bluetooth/179336881029.1091505.9199301543471972912.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: Ignore connection responses with wrong ident](https://lore.kernel.org/linux-bluetooth/179336880879.1091505.7130136240729052248.git-patchwork-notify@kernel.org/)
- [Bluetooth: Keep borrowed keys inside RCU sections](https://lore.kernel.org/linux-bluetooth/179336880729.1091505.16673199626130104099.git-patchwork-notify@kernel.org/)
- [Bluetooth: MGMT: Clear disabled connection parameters when loading non](https://lore.kernel.org/linux-bluetooth/179336880606.1091505.1791997839483529343.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [obexd: Improve handling unsupported MAP events](https://lore.kernel.org/linux-bluetooth/179305081456.3403508.17305582793778128018.git-patchwork-notify@kernel.org/)
- [doc: Improve obex MessageAccess Filter Types doc](https://lore.kernel.org/linux-bluetooth/179305081306.3403508.13118296201106438377.git-patchwork-notify@kernel.org/)
- [adapter: Don't power on while blocked by rfkill](https://lore.kernel.org/linux-bluetooth/179305081156.3403508.3916224596739406026.git-patchwork-notify@kernel.org/)
- [Promote the bearer interfaces to stable](https://lore.kernel.org/linux-bluetooth/179305081006.3403508.881301264378000551.git-patchwork-notify@kernel.org/)
- [gatt-database: Fix freeing wrong client notify IO](https://lore.kernel.org/linux-bluetooth/179305080861.3403508.8946558170896367981.git-patchwork-notify@kernel.org/)
- [obexd/pbap: Fix NewMissedCalls reporting](https://lore.kernel.org/linux-bluetooth/179319421156.722681.17373470691534809442.git-patchwork-notify@kernel.org/)
- [obexd/pbap: Report NewMissedCalls for mch](https://lore.kernel.org/linux-bluetooth/179319421006.722681.16109161230999323945.git-patchwork-notify@kernel.org/)
- [ranging: Issue CS Security Enable based on the ACL role](https://lore.kernel.org/linux-bluetooth/179319420856.722681.14638147747357060653.git-patchwork-notify@kernel.org/)
- [monitor: validate Return Link Keys length before parsing](https://lore.kernel.org/linux-bluetooth/179319420706.722681.14649729121486411267.git-patchwork-notify@kernel.org/)
- [advertising: Fix leaking clients that exit while registering](https://lore.kernel.org/linux-bluetooth/179319420583.722681.1792431200395296166.git-patchwork-notify@kernel.org/)
- [ioctl-tester: Fix name of the 3-DH packet type test](https://lore.kernel.org/linux-bluetooth/179321702352.1394536.5341195369695217645.git-patchwork-notify@kernel.org/)
- [adapter: Fix Discovering staying true when stopping fails](https://lore.kernel.org/linux-bluetooth/179321702155.1394536.16083723483237408640.git-patchwork-notify@kernel.org/)
- [adapter: Fix Discovering staying true after a rejected stop](https://lore.kernel.org/linux-bluetooth/179321702006.1394536.2604695616484204299.git-patchwork-notify@kernel.org/)
- [shared/bap: Fix line over 80 columns in set_base_subgroup](https://lore.kernel.org/linux-bluetooth/179321701882.1394536.10614046807601326911.git-patchwork-notify@kernel.org/)
- [Run the testers under User Mode Linux with time travel](https://lore.kernel.org/linux-bluetooth/179329920930.627977.12056796897465326563.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- None recorded this week.

---

## Company Focus Areas

### Independent Contributors

- [Bluetooth: btusb: UB500 reported maximum data length](https://lore.kernel.org/linux-bluetooth/20261029023235.1280321-1-cochcoder@proton.me/)
- [Bluetooth: hci_conn: fix SCO connection reuse](https://lore.kernel.org/linux-bluetooth/20261027165009.2401154-1-yaroslav.voytovych@gmail.com/)
- [adapter: Fix Discovering staying true when stopping fails](https://lore.kernel.org/linux-bluetooth/20261027171923.82919-1-kevin@simpleble.org/)
- [Bluetooth: Disable LL Privacy on Intel JfP (8087:0aaa)](https://lore.kernel.org/linux-bluetooth/20261027164359.460369-1-dfrancio@gmail.com/)

### Intel

- [Run test-functional under User Mode Linux](https://lore.kernel.org/linux-bluetooth/20261030212940.753771-1-luiz.dentz@gmail.com/)
- [Bluetooth: btintel_pcie: Add LOG_MASK parsing from debug INI](https://lore.kernel.org/linux-bluetooth/20261029095344.3989729-1-kiran.k@intel.com/)
- [shared/bap: Fix line over 80 columns in set_base_subgroup](https://lore.kernel.org/linux-bluetooth/20261028135517.2395290-1-luiz.dentz@gmail.com/)
- [ranging: Issue CS Security Enable based on the ACL role](https://lore.kernel.org/linux-bluetooth/20261027140953.1854740-1-luiz.dentz@gmail.com/)

### Qualcomm

- [Bluetooth: hci_qca: Reopen port after power on for QCA2066](https://lore.kernel.org/linux-bluetooth/20261028111839.2148515-1-shuai.zhang@oss.qualcomm.com/)
- [obexd/bluetooth: Fix profile registration race and clean up](https://lore.kernel.org/linux-bluetooth/20261027-fix_obex-v1-0-3d91aed181b6@oss.qualcomm.com/)
- [obexd/pbap: Fix NewMissedCalls reporting](https://lore.kernel.org/linux-bluetooth/20261027071046.2272116-1-jinwang.li@oss.qualcomm.com/)
- [obexd/pbap: Report NewMissedCalls for mch](https://lore.kernel.org/linux-bluetooth/20261026131504.1016687-1-jinwang.li@oss.qualcomm.com/)

### MediaTek

- [mediatek MT7922: update bluetooth firmware to 20261027203403](https://lore.kernel.org/linux-bluetooth/20261030022615.3370410-1-chris.lu@mediatek.com/)
