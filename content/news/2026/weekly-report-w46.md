---
title: "linux-bluetooth Weekly Report - Week 46"
date: 2026-11-15
summary: "Total messages: 604 (470 human, 134 CI/bot)"
draft: false
---

**Total messages: 604 (470 human, 134 CI/bot)**

Note: Of the 604 messages, 470 are human-generated, 134 are CI/bot (bluez.test.bot: 90, patchwork-bot+bluetooth: 28, syzbot: 5, bugzilla-daemon: 5, kernel test robot: 4, patchwork-bot+netdevbpf: 1, Sasha Levin: 1).

---

## Summary
During week 46 (9 - 15 November 2026) the linux-bluetooth mailing list carried 604 messages, 470 from contributors and 134 from CI and bots. There were 123 human-initiated threads: 53 kernel patch series, 63 BlueZ userspace series and 7 discussions or reports. 28 patches were applied via patchwork and 0 commits were pushed to bluez repositories. The most active contributor was Luiz Augusto von Dentz (Intel) with 215 messages. 22 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261109155850.1394252-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 6 | Version 10 |
| [Bluetooth: hci_bcm4377: resume after ACPI S3 and ASPM](https://lore.kernel.org/linux-bluetooth/20261111120248.21062-1-dev@deq.rocks/) | Andre Eikmeyer | Independent | 3 | Version 2 |
| [Bluetooth: Add initial support for HDT PHY](https://lore.kernel.org/linux-bluetooth/20261109171838.1592267-2-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 6 | Version 11 |
| [Bluetooth: Advertising sets on a single-set controller](https://lore.kernel.org/linux-bluetooth/20261111010940.728149-1-weihong.guan@gmail.com/) | Weihong Guan | Independent | 3 | Version 2 |
| [Bluetooth: Advertising sets on a single-set controller](https://lore.kernel.org/linux-bluetooth/20261111165133.827594-1-weihong.guan@gmail.com/) | Weihong Guan | Independent | 4 | Version 3 |
| [Bluetooth: hci_qca: Reopen the UART after enabling QCA2066](https://lore.kernel.org/linux-bluetooth/20261110092929.234617-1-shuai.zhang@oss.qualcomm.com/) | Shuai Zhang | Qualcomm | 2 | Version 4 |
| [Bluetooth: L2CAP: clear the SDU before the receive callback](https://lore.kernel.org/linux-bluetooth/20261112173812.18696-2-piyus@iiitd.ac.in/) | Piyus Kedia | Independent | 1 | Initial version |
| [net: phy: Use the compatibility driver attachment API](https://lore.kernel.org/linux-bluetooth/20261109-device-trust-core-v2-10-3b12d9a9f861@nvidia.com/) | Leon Romanovsky | Independent | 19 | Version 2 |
| [Bluetooth: btintel: Add TOP silent reset hooks](https://lore.kernel.org/linux-bluetooth/20261113052538.3030771-1-chandrashekar.devegowda@intel.com/) | Chandrashekar Devegowda | Intel | 2 | Version 6 |
| [Bluetooth: btintel_pcie: Add yoyo support for config set TLV](https://lore.kernel.org/linux-bluetooth/20261111165332.8478-1-ajay.k.v@intel.com/) | Ajay KV | Intel | 3 | Version 3 |
| [Bluetooth: fix stack OOB write in the legacy adv data path](https://lore.kernel.org/linux-bluetooth/20261110175334.676816-1-piyus@iiitd.ac.in/) | Piyus Kedia | Independent | 1 | Version 2 |
| [Bluetooth: Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261109170729.1584072-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 6 | Version 11 |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261110163452.2649366-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 11 | Version 8 |
| [obexd/pbap: Update PSE support from PBAP 1.1 to 1.2](https://lore.kernel.org/linux-bluetooth/20261111094425.1444893-1-jinwang.li@oss.qualcomm.com/) | Jinwang Li | Qualcomm | 20 | Version 2 |
| [shared/bap: Don't disconnect a CIS still used by another ASE](https://lore.kernel.org/linux-bluetooth/cover.1794428234.git.luiz.von.dentz@intel.com/) | Luiz Augusto von Dentz | Intel | 5 | Version 3 |
| [bap: Release cached ASEs on ClearConfiguration](https://lore.kernel.org/linux-bluetooth/cover.1794504552.git.luiz.von.dentz@intel.com/) | Luiz Augusto von Dentz | Intel | 6 | Version 4 |
| [docs: ioctl-number: update entries](https://lore.kernel.org/linux-bluetooth/20261114202653.3113381-1-rdunlap@infradead.org/) | Randy Dunlap | Independent | 12 | Initial version |
| [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261111200705.3802779-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 11 | Version 10 |
| [shared/bap: Don't disconnect a CIS still used by another ASE](https://lore.kernel.org/linux-bluetooth/cover.1794349049.git.luiz.von.dentz@intel.com/) | Luiz Augusto von Dentz | Intel | 4 | Initial version |
| [shared/bap: Don't disconnect a CIS still used by another ASE](https://lore.kernel.org/linux-bluetooth/cover.1794414122.git.luiz.von.dentz@intel.com/) | Luiz Augusto von Dentz | Intel | 4 | Version 2 |
| [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261109161553.1506041-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 11 | Version 7 |
| [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261111162755.3506226-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 11 | Version 9 |
| [shared/gatt: Use util_iov helpers for PDU handling](https://lore.kernel.org/linux-bluetooth/20261109154501.1362649-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 10 | Initial version |
| [Bluetooth for the RTL8852BS on BPI-F3](https://lore.kernel.org/linux-bluetooth/20261111094557.443481-1-frederic.mahe@cirad.fr/) | Frédéric Mahé | Independent | 2 | Version 2 |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [[BUG] Bluetooth: stack out-of-bounds write in eir_create_adv_data() and eir_crea...](https://lore.kernel.org/linux-bluetooth/CADq=QSx3zruNoQ41d7iza=WcTikx9uxkrXQ50cXWugrYeVMb2Q@mail.gmail.com/) | Piyus Kedia | 4 messages |
| [[GIT PULL] bluetooth 2026-11-09](https://lore.kernel.org/linux-bluetooth/20261110024313.2023223-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 2 messages |
| [[STABLE 6.6] Bluetooth MediaTek controller reset fixes](https://lore.kernel.org/linux-bluetooth/20261114173550.5736-1-lucid_duck@justthetip.ca/) | Devin Wittmayer | 2 messages |
| [CheckPatch: accept required AI attribution diagnostics](https://lore.kernel.org/linux-bluetooth/20261112022434.185405-1-cochcoder@proton.me/) | Kyle Pepper | 1 message |
| [Hi,,,I am investigating a reproducible Bluetooth SAR initialization warning on a...](https://lore.kernel.org/linux-bluetooth/99f9a7d5-d0c7-4a86-9be2-ca0ec70c4f41@gmail.com/) | Vovan Nikolaevich | 1 message |
| [[BUG] Bluetooth: L2CAP: slab-use-after-free reading chan->sdu->len after the rec...](https://lore.kernel.org/linux-bluetooth/20261112173812.18696-1-piyus@iiitd.ac.in/) | Piyus Kedia | 1 message |
| [[REGRESSION] rtl8852bu: Life Q20 BR/EDR playback disconnects with LMP timeout (0...](https://lore.kernel.org/linux-bluetooth/CAAYEUU7YWz4j=xUUO-hiA4SzBoPWWZUqZ7J1C+TXKpd+=cbM_g@mail.gmail.com/) | Roger Zuniga | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Add struct_offsetofend() for pointer arithmetic](https://lore.kernel.org/linux-bluetooth/20261113-offsetof-v3-0-714df7053893@arm.com/) | v2->v3 |
| [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261111200705.3802779-1-luiz.dentz@gmail.com/) | v7->v8->v9->v10 |
| [Bearer.LE1: Add ReadRSSI](https://lore.kernel.org/linux-bluetooth/20261113172339.54683-1-kevin@simpleble.org/) | v1->v2->v3 |
| [Bluetooth for the RTL8852BS on BPI-F3](https://lore.kernel.org/linux-bluetooth/20261111094557.443481-1-frederic.mahe@cirad.fr/) | v1->v2 |
| [Bluetooth: Add initial support for HDT PHY](https://lore.kernel.org/linux-bluetooth/20261109171838.1592267-2-luiz.dentz@gmail.com/) | v10->v11 |
| [Bluetooth: Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261109170729.1584072-1-luiz.dentz@gmail.com/) | v10->v11 |
| [Bluetooth: Advertising sets on a single-set controller](https://lore.kernel.org/linux-bluetooth/20261111165133.827594-1-weihong.guan@gmail.com/) | v2->v3 |
| [Bluetooth: L2CAP: Restrict LE credits to connected CoCs](https://lore.kernel.org/linux-bluetooth/4278a9caf4dc8e949092452c141a5be465ec77e1.1794617024.git.github.filter194@slmail.me/) | v10->v11->v12 |
| [Bluetooth: btintel: Add TOP silent reset hooks](https://lore.kernel.org/linux-bluetooth/20261113052538.3030771-1-chandrashekar.devegowda@intel.com/) | v5->v6 |
| [Bluetooth: btintel_pcie: Add yoyo support for config set TLV](https://lore.kernel.org/linux-bluetooth/20261111165332.8478-1-ajay.k.v@intel.com/) | v1->v2->v3 |
| [advertising: Fix double-free in client_free](https://lore.kernel.org/linux-bluetooth/20261113092759.24927-1-pvbozhko@salutedevices.com/) | v1->v2 |
| [bap: Release cached ASEs on ClearConfiguration](https://lore.kernel.org/linux-bluetooth/cover.1794586887.git.luiz.von.dentz@intel.com/) | v1->v2->v3->v4->v5->v6 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 215 |
| Leon Romanovsky | Independent | 25 |
| Jinwang Li | Qualcomm | 23 |
| Kevin Dewald | Independent | 18 |
| Weihong Guan | Independent | 16 |
| Kyle Pepper | Independent | 14 |
| Randy Dunlap | Independent | 13 |
| Piyus Kedia | Independent | 10 |
| Ajay KV | Intel | 9 |
| Frédéric Mahé | Independent | 8 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: qca: Disable SoC debug logging for WCN3990](https://lore.kernel.org/linux-bluetooth/179424000705.3335769.610567076772554344.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: Keep recvmsg from resuming a closed channel](https://lore.kernel.org/linux-bluetooth/179426521925.3532311.18366530853288738368.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_qca: clear qca_memdump when discarding dump packets](https://lore.kernel.org/linux-bluetooth/179432701717.4062787.5293659281594260012.git-patchwork-notify@kernel.org/)
- [Bluetooth: vhci: Flush suspend work after removing debugfs](https://lore.kernel.org/linux-bluetooth/179432701567.4062787.206480705237565419.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_conn: Initialize the device before hash insertion](https://lore.kernel.org/linux-bluetooth/179432701417.4062787.3646978877662971174.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: validate MPS and MTU in ECRED connection response](https://lore.kernel.org/linux-bluetooth/179432701267.4062787.11305401861516612930.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: Protect the receive reject-list lookup](https://lore.kernel.org/linux-bluetooth/179432701117.4062787.3195406436831502878.git-patchwork-notify@kernel.org/)
- [Bluetooth: vhci: Serialize packet reception with device creation](https://lore.kernel.org/linux-bluetooth/179432700967.4062787.5840471471606584903.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_qca: Reopen the UART after enabling QCA2066](https://lore.kernel.org/linux-bluetooth/179432700817.4062787.1917987587860059113.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_qca: Reopen port after power on for QCA2066](https://lore.kernel.org/linux-bluetooth/179432700692.4062787.5940023737695374841.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: Add yoyo support for config set TLV](https://lore.kernel.org/linux-bluetooth/179442602067.1604530.7480773589648811340.git-patchwork-notify@kernel.org/)
- [Bluetooth: SMP: Fail if local and remote public key X coords match](https://lore.kernel.org/linux-bluetooth/179442840892.1623293.2866290567513278884.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: Fix SCP DBGC base address](https://lore.kernel.org/linux-bluetooth/179442840742.1623293.17516886836216832680.git-patchwork-notify@kernel.org/)
- [Bluetooth: Advertising sets on a single-set controller](https://lore.kernel.org/linux-bluetooth/179442840618.1623293.5450112377472954815.git-patchwork-notify@kernel.org/)
- [Bluetooth: Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/179442960617.1633182.3542940102993651686.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: Drop the command's sk reference](https://lore.kernel.org/linux-bluetooth/179451480627.628769.17407039026686649697.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: Fix size check for receive buffer space](https://lore.kernel.org/linux-bluetooth/179451480503.628769.12990613488160990578.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [bearer: Fix auto-connect handling of LE Connect and Disconnect](https://lore.kernel.org/linux-bluetooth/179424003399.3335769.13828179370784941457.git-patchwork-notify@kernel.org/)
- [bearer: Fix Connect refused as in progress after a failed attempt](https://lore.kernel.org/linux-bluetooth/179432880792.4080412.17915800166430164235.git-patchwork-notify@kernel.org/)
- [shared/gatt: Use util_iov helpers for PDU handling](https://lore.kernel.org/linux-bluetooth/179432880668.4080412.13530133738825558605.git-patchwork-notify@kernel.org/)
- [shared/asha: Send STOP without a response](https://lore.kernel.org/linux-bluetooth/179434800919.80411.704170822998959847.git-patchwork-notify@kernel.org/)
- [shared/asha: prime volume before starting audio](https://lore.kernel.org/linux-bluetooth/179434800767.80411.13470774413251516410.git-patchwork-notify@kernel.org/)
- [asha: allow LE 2M PHY on the audio channel](https://lore.kernel.org/linux-bluetooth/179434800644.80411.18152097439079968356.git-patchwork-notify@kernel.org/)
- [Bluetooth for the RTL8852BS on BPI-F3](https://lore.kernel.org/linux-bluetooth/179442601916.1604530.1705197925952408060.git-patchwork-notify@kernel.org/)
- [Use platform Bluetooth addresses on Broadcom UART controllers](https://lore.kernel.org/linux-bluetooth/179442601766.1604530.10253398492524205694.git-patchwork-notify@kernel.org/)
- [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/179450401977.546493.15267669702851311269.git-patchwork-notify@kernel.org/)
- [shared: Use util_iov helpers in gatt-db, hog, asha and micp](https://lore.kernel.org/linux-bluetooth/179450580827.563116.10974231348534576330.git-patchwork-notify@kernel.org/)
- [shared/gatt-client: Track internal discovery reads](https://lore.kernel.org/linux-bluetooth/179450580703.563116.10409527926595397710.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- None recorded this week.

---

## Company Focus Areas

### Independent Contributors

- [docs: ioctl-number: update entries](https://lore.kernel.org/linux-bluetooth/20261114202653.3113381-1-rdunlap@infradead.org/)
- [Bluetooth for the RTL8852BS on BPI-F3](https://lore.kernel.org/linux-bluetooth/20261111094557.443481-1-frederic.mahe@cirad.fr/)
- [Bearer.LE1: Add ReadRSSI](https://lore.kernel.org/linux-bluetooth/20261112032250.37687-1-kevin@simpleble.org/)
- [Bluetooth for the RTL8852BS on BPI-F3](https://lore.kernel.org/linux-bluetooth/20261110074607.363918-1-frederic.mahe@cirad.fr/)

### Intel

- [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261110163452.2649366-1-luiz.dentz@gmail.com/)
- [shared/bap: Don't disconnect a CIS still used by another ASE](https://lore.kernel.org/linux-bluetooth/cover.1794428234.git.luiz.von.dentz@intel.com/)
- [bap: Release cached ASEs on ClearConfiguration](https://lore.kernel.org/linux-bluetooth/cover.1794504552.git.luiz.von.dentz@intel.com/)
- [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261111200705.3802779-1-luiz.dentz@gmail.com/)

### Collabora

- [audio/hfp-hf: Fix org.bluez.Telephony1.Dial reply message](https://lore.kernel.org/linux-bluetooth/20261115101907.68963-1-frederic.danis@collabora.com/)
- [audio/media: Add hfp-hf supported feature flag](https://lore.kernel.org/linux-bluetooth/20261115101946.69033-1-frederic.danis@collabora.com/)

### Qualcomm

- [obexd/pbap: Update PSE support from PBAP 1.1 to 1.2](https://lore.kernel.org/linux-bluetooth/20261111094425.1444893-1-jinwang.li@oss.qualcomm.com/)
- [Bluetooth: hci_qca: Reopen the UART after enabling QCA2066](https://lore.kernel.org/linux-bluetooth/20261110092929.234617-1-shuai.zhang@oss.qualcomm.com/)

### UnionTech

- [Bluetooth: MGMT: Fix runtime config status opcode](https://lore.kernel.org/linux-bluetooth/3B679DA76E38DD0F+20261110030756.214083-1-raoxu@uniontech.com/)
- [Bluetooth: hci_vhci: Report write readiness with queued input](https://lore.kernel.org/linux-bluetooth/A77F6FF053467FCC+20261112082601.1356290-1-raoxu@uniontech.com/)
