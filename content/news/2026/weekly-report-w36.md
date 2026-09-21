---
title: "linux-bluetooth Weekly Report - Week 36"
date: 2026-09-06
summary: "Total messages: 438 (283 human, 155 CI/bot)"
draft: false
---

**Total messages: 438 (283 human, 155 CI/bot)**

Note: Of the 438 messages, 283 are human-generated, 155 are CI/bot (bluez.test.bot: 73, patchwork-bot+bluetooth: 43, BluezTestBot: 17, Sasha Levin: 14, github-actions[bot]: 2, bugzilla-daemon: 2, syzbot: 2, patchwork-bot+netdevbpf: 1, kernel test robot: 1).

---

## Summary
During week 36 (31 August - 6 September 2026) the linux-bluetooth mailing list carried 438 messages, 283 from contributors and 155 from CI and bots. There were 92 human-initiated threads: 55 kernel patch series, 30 BlueZ userspace series and 7 discussions or reports. 43 patches were applied via patchwork and 24 commits were pushed to bluez repositories. The most active contributor was Luiz Augusto von Dentz (Intel) with 41 messages. 12 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: btintel: harden version TLV parsing](https://lore.kernel.org/linux-bluetooth/20260831095923.18830-1-acharyalaxman8848@gmail.com/) | Laxman Acharya Padhya | Independent | 3 | Version 3 |
| [Bluetooth: btusb: Support Qualcomm multi-subsystem QCC2072](https://lore.kernel.org/linux-bluetooth/20260830-btusb_qcc2072-v2-0-5c0e0c9dd98b@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 4 | Version 2 |
| [Bluetooth: L2CAP: part 2 of l2cap_conn::chan_l locking fixes](https://lore.kernel.org/linux-bluetooth/cover.1788296635.git.pav@iki.fi/) | Pauli Virtanen | Independent | 4 | Initial version |
| [Bluetooth: btintel_pcie: remove duplicate BTINTEL_PCIE_MAGIC_NUM definition](https://lore.kernel.org/linux-bluetooth/20260904002939.622659-1-chandrashekar.devegowda@intel.com/) | Chandrashekar Devegowda | Intel | 3 | Version 2 |
| [Bluetooth: btintel_pcie: fix stale cache in set_dxstate fallback check](https://lore.kernel.org/linux-bluetooth/20260901203818.112189-2-vladimirkondratyev2@gmail.com/) | Vladimir V. Kondratyev | Independent | 1 | Initial version |
| [Bluetooth: Fix parent socket UAF in accept queues](https://lore.kernel.org/linux-bluetooth/cover.1788259244.git.zihanx@nebusec.ai/) | Zihan Xi | Independent | 1 | Version 2 |
| [Bluetooth: Move H:4 reassembly into the Bluetooth core](https://lore.kernel.org/linux-bluetooth/20260831164112.778064-2-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 2 | Version 3 |
| [Bluetooth: btintel_pcie: fix PM flow for S0ix, S3 and S4](https://lore.kernel.org/linux-bluetooth/20260902042840.2432862-1-ravindra@intel.com/) | Ravindra | Intel | 1 | Version 2 |
| [Bluetooth: btintel_pcie: fix stale cache in set_dxstate fallback check](https://lore.kernel.org/linux-bluetooth/20260903142911.125301-2-vladimirkondratyev2@gmail.com/) | Vladimir V. Kondratyev | Independent | 1 | Version 3 |
| [Bluetooth: btintel_pcie: validate packet_len before skb_put_data](https://lore.kernel.org/linux-bluetooth/20260902131830.35502-1-kiran.k@intel.com/) | Kiran K | Intel | 2 | Initial version |
| [Bluetooth: btintel_pcie: validate packet_len before skb_put_data](https://lore.kernel.org/linux-bluetooth/20260903145102.54675-1-kiran.k@intel.com/) | Kiran K | Intel | 2 | Version 2 |
| [Bluetooth: btusb: Add support for Intel Otter Peak2 (OrP2)](https://lore.kernel.org/linux-bluetooth/20260902160407.257899-1-catherine.l@intel.com/) | Catherine L | Intel | 1 | Initial version |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Functional/integration testing](https://lore.kernel.org/linux-bluetooth/cover.1788712996.git.pav@iki.fi/) | Pauli Virtanen | Independent | 9 | Version 7 |
| [BlueZ: Support vendor packets](https://lore.kernel.org/linux-bluetooth/20260903-vendor_hci-v3-0-015d62a57c91@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 4 | Version 3 |
| [client/btpclient: Add BAP/ASCS/PACS support for auto-pts BAP tests](https://lore.kernel.org/linux-bluetooth/20260904135124.981346-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 8 | Initial version |
| [Add MCS fast seek and track position write](https://lore.kernel.org/linux-bluetooth/20260831061144.7767-1-raghavendra.rao@collabora.com/) | raghu447 | Collabora | 3 | Initial version |
| [Add support for the Synaptics BCM4384 Bluetooth controller](https://lore.kernel.org/linux-bluetooth/20260901085702.1515378-1-andy.chang@synaptics.corp-partner.google.com/) | Andy Chang | Independent | 2 | Version 3 |
| [avrcp: Fix out-of-bounds parsing of ListPlayerAttributes response](https://lore.kernel.org/linux-bluetooth/20260901175315.1348621-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 5 | Initial version |
| [Add MCS fast seek and track position write support](https://lore.kernel.org/linux-bluetooth/20260904165332.42046-1-raghavendra.rao@collabora.com/) | raghu447 | Collabora | 4 | Initial version |
| [Add support for the Synaptics BCM4384 Bluetooth controller](https://lore.kernel.org/linux-bluetooth/20260901023300.1382808-1-andy.chang@synaptics.corp-partner.google.com/) | Andy Chang | Independent | 2 | Version 2 |
| [BlueZ: Support vendor HCI packets](https://lore.kernel.org/linux-bluetooth/20260830-vendor_hci-v2-0-9903760957ab@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 3 | Version 2 |
| [adapter/advertising: fix mgmt endian bug](https://lore.kernel.org/linux-bluetooth/CAKA8V_8QC7u4OsP+f4_h2UfPQ0uAMy9ESzvuNULo1cFkmxyjow@mail.gmail.com/) | Nicolas Thibert | Independent | 1 | Initial version |
| [btattach: Update for glibc 2.42 compatability](https://lore.kernel.org/linux-bluetooth/20260903182709.473976-1-aaron@embeddedts.com/) | Aaron Brice | Independent | 1 | Initial version |
| [Add support for the Synaptics BCM4384 Bluetooth controller](https://lore.kernel.org/linux-bluetooth/20260903121824.3080796-1-Andy.Chang@synaptics.com/) | Andy Chang | Synaptics | 2 | Version 4 |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [[BUG] Bluetooth: ISO: listener sock leaked when iso_sock_alloc() fails](https://lore.kernel.org/linux-bluetooth/CAPBHdanvQs_e29KUYjBn41fA-WBqLxDxUDb4Tv9Efh5pTm=8cw@mail.gmail.com/) | Qingyu Zhang | 2 messages |
| [[GIT PULL] bluetooth 2026-08-31](https://lore.kernel.org/linux-bluetooth/20260831181837.946230-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 2 messages |
| [Architecture & BlueZ API interaction for vendor-specific headphone daemon (ANC, ...](https://lore.kernel.org/linux-bluetooth/CAENgahUHbkA-TX7JbjnBHRasvf_UuLE2U1kKdXC1D5P2GW-R5w@mail.gmail.com/) | Sandip Makhal | 1 message |
| [HTML message rejected: Bluetooth broken: NULL pointer crash in btmtk_setup_firmw...](https://lore.kernel.org/linux-bluetooth/CAOh9Y1ZMDM7pKA27rK9MWutqfsza3MmSwJjR7AA8-SOo0dFckA@mail.gmail.com/) | Ti G | 1 message |
| [[BUG] btintel_pcie: Intel BE211 8086:a876 requests unavailable ibt-0190-01a1 fir...](https://lore.kernel.org/linux-bluetooth/72098331-fa7c-443c-8b56-7671f9d711f2@mailbox.org/) | Mark Gerlach | 1 message |
| [[BUG] mt7921e: Bluetooth coexistence causes periodic Wi-Fi TX stalls; 5 GHz reco...](https://lore.kernel.org/linux-bluetooth/CAPw3oQRL3K_ET6WziAeWQdXykqnW0QMC1ZLq+FL1W-WL1MPreA@mail.gmail.com/) | ilya ivanov | 1 message |
| [[Lenovo ThinkBook 16 G8+ AHP] Realtek RTL8852BU Bluetooth (0bda:b853) never init...](https://lore.kernel.org/linux-bluetooth/CAC1EGRsx7XFd+=rv5a73Mw95x5F49hUfgt4ouu5nZOYOTGbrzQ@mail.gmail.com/) | Quoc Vuong | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Add cover art support](https://lore.kernel.org/linux-bluetooth/20260831150051.80631-1-jan.brummer@tabos.org/) | v1->v2 |
| [Add support for the Synaptics BCM4384 Bluetooth controller](https://lore.kernel.org/linux-bluetooth/20260903121824.3080796-1-Andy.Chang@synaptics.com/) | v2->v3->v4 |
| [Bluetooth: RFCOMM: defer security confirmation to krfcommd](https://lore.kernel.org/linux-bluetooth/20260904012028.77590-1-mikhail.v.gavrilov@gmail.com/) | v1->v2 |
| [Bluetooth: btintel_pcie: fix stale cache in set_dxstate fallback check](https://lore.kernel.org/linux-bluetooth/20260903192245.135310-2-vladimirkondratyev2@gmail.com/) | v1->v3->v4 |
| [Bluetooth: btintel_pcie: validate packet_len before skb_put_data](https://lore.kernel.org/linux-bluetooth/20260903145102.54675-1-kiran.k@intel.com/) | v1->v2 |
| [Bluetooth: btusb: Add device ID for MediaTek MT7925 (13d3:3631)](https://lore.kernel.org/linux-bluetooth/20260905195746.244134-1-samuel.alhovuori@pm.me/) | v1->v2 |
| [Bluetooth: btusb: Add support for Intel Otter Peak2 (OrP2)](https://lore.kernel.org/linux-bluetooth/20260902190037.259487-1-catherine.l@intel.com/) | v1->v2 |
| [Bluetooth: btusb: Fix UAF of btusb_data by rx_work](https://lore.kernel.org/linux-bluetooth/20260902214620.44041-1-luiz.dentz@gmail.com/) | v1->v3 |
| [Bluetooth: dt-bindings: net: bluetooth: add BCM4384](https://lore.kernel.org/linux-bluetooth/20260903121824.3080796-2-Andy.Chang@synaptics.com/) | v2->v3->v4 |
| [Bluetooth: mgmt: Dequeue pending mesh_send_sync entries on cancel](https://lore.kernel.org/linux-bluetooth/20260901154427.3991920-1-lee@kernel.org/) | v1->v2 |
| [adapter/advertising: fix mgmt endian bug](https://lore.kernel.org/linux-bluetooth/20260903091059.161705-1-nithibert@gmail.com/) | v1->v2 |
| [doc/hci-protocol: Fix missing & on mtu argument in BT_RCVMTU example](https://lore.kernel.org/linux-bluetooth/20260903-vendor_hci-v3-1-015d62a57c91@oss.qualcomm.com/) | v2->v3 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 41 |
| Pauli Virtanen | Independent | 27 |
| Frédéric Danis | Collabora | 20 |
| Zijun Hu | Qualcomm | 17 |
| Paul Menzel | Max Planck Institute | 14 |
| Loic Poulain | Qualcomm | 12 |
| Andy Chang | Independent | 10 |
| raghu447 | Collabora | 9 |
| Sergey Lebedev | Independent | 7 |
| Bastien Nocera | Red Hat | 7 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: L2CAP: fix chan mode for LE_CONN_REQ + EXT_FLOWCTL pchan](https://lore.kernel.org/linux-bluetooth/178819681823.671757.5365717532248944864.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_core: Fix race condition during device registration](https://lore.kernel.org/linux-bluetooth/178819681664.671757.11271710951105188207.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: fix out-of-bounds write in l2cap_ecred_connect](https://lore.kernel.org/linux-bluetooth/178819681514.671757.16912316502936298927.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel: harden version TLV parsing](https://lore.kernel.org/linux-bluetooth/178819681363.671757.16024867125795377604.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtksdio: Stop discarding the hardware device id](https://lore.kernel.org/linux-bluetooth/178819681225.671757.15863608623551543473.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_mrvl: Fix wrong return value check of wait_on_bit_timeo](https://lore.kernel.org/linux-bluetooth/178819681074.671757.16650865347821442609.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: fix and annotate l2cap_conn::chan_l locking](https://lore.kernel.org/linux-bluetooth/178828980914.1804078.16309494402667039315.git-patchwork-notify@kernel.org/)
- [Bluetooth: Properly disable remote wakeup for MT7922/MT7925 on Ryzen p](https://lore.kernel.org/linux-bluetooth/178829460590.1836726.11844830813053776119.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: part 2 of l2cap_conn::chan_l locking fixes](https://lore.kernel.org/linux-bluetooth/178838460889.2957558.5479187163968651566.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: fix and annotate l2cap_conn::chan_l locking](https://lore.kernel.org/linux-bluetooth/178838460764.2957558.9167588069983760163.git-patchwork-notify@kernel.org/)
- [Bluetooth: btrtl: Don't leak return code when parsing firmware format](https://lore.kernel.org/linux-bluetooth/178846561855.3994681.6237344995216592209.git-patchwork-notify@kernel.org/)
- [Bluetooth: Move H:4 reassembly into the Bluetooth core](https://lore.kernel.org/linux-bluetooth/178846561564.3994681.10545850539691056483.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: Fix UAF of btusb_data by rx_work](https://lore.kernel.org/linux-bluetooth/178846561713.3994681.3764342442710024768.git-patchwork-notify@kernel.org/)
- [Bluetooth: Move H:4 reassembly into the Bluetooth core](https://lore.kernel.org/linux-bluetooth/178846561414.3994681.12326882866187141906.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: Fix not setting CE length properly](https://lore.kernel.org/linux-bluetooth/178846561263.3994681.709793121678223106.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: validate packet_len before skb_put_data](https://lore.kernel.org/linux-bluetooth/178846561113.3994681.3604409237210142858.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: Add USB ID 13d3:3556 for RTL8821CE](https://lore.kernel.org/linux-bluetooth/178846560963.3994681.5380639365119413064.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: Add support for Intel Otter Peak2 (OrP2)](https://lore.kernel.org/linux-bluetooth/178846560815.3994681.18219348101549358962.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sysfs: Fix NULL pointer dereference in device_del()](https://lore.kernel.org/linux-bluetooth/178854098513.344939.1951546712000714507.git-patchwork-notify@kernel.org/)
- [Bluetooth: btqcomsmd: destroy RPMsg endpoints before freeing hci_dev](https://lore.kernel.org/linux-bluetooth/178854098363.344939.15503505083732657527.git-patchwork-notify@kernel.org/)
- [Bluetooth: dt-bindings: net: bluetooth: add BCM4384](https://lore.kernel.org/linux-bluetooth/178854098064.344939.6446334555255761501.git-patchwork-notify@kernel.org/)
- [Bluetooth: add Synaptics BCM4384 support](https://lore.kernel.org/linux-bluetooth/178854097463.344939.15117475136422300719.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtk: Declare MT7920 (MT7961 1a) Bluetooth firmware](https://lore.kernel.org/linux-bluetooth/178854097314.344939.15082478069695241185.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: remove duplicate BTINTEL_PCIE_MAGIC_NUM defin](https://lore.kernel.org/linux-bluetooth/178854097164.344939.14595249328232664225.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: remove duplicate BTINTEL_PCIE_MAGIC_NUM defin](https://lore.kernel.org/linux-bluetooth/178854097014.344939.13290030369198120031.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: mediatek: Fix leaked runtime PM reference in reset](https://lore.kernel.org/linux-bluetooth/178854096871.344939.9581829532701269317.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: unified decoder coredump format](https://lore.kernel.org/linux-bluetooth/178854420714.463198.8336408785971923023.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: add MDBGC multi-buffer DBGC allocation](https://lore.kernel.org/linux-bluetooth/178854420566.463198.14005383653530534379.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [emulator: bthost: add function for sending raw L2CAP sig commands](https://lore.kernel.org/linux-bluetooth/178819740813.676143.7012117251766286263.git-patchwork-notify@kernel.org/)
- [emulator: bthost: don't crash on ecred_conn_req with too many scid](https://lore.kernel.org/linux-bluetooth/178819740690.676143.15400942592099081045.git-patchwork-notify@kernel.org/)
- [transport: Fix use-after-free when replacing a linked transport's owne](https://lore.kernel.org/linux-bluetooth/178836360763.2802406.9178353804129746486.git-patchwork-notify@kernel.org/)
- [shared/bap: Fix use-after-free in bt_bap_detach](https://lore.kernel.org/linux-bluetooth/178836360614.2802406.4817688876298487049.git-patchwork-notify@kernel.org/)
- [Add ranging provider implementation](https://lore.kernel.org/linux-bluetooth/178836900639.2851456.8688573882939387333.git-patchwork-notify@kernel.org/)
- [Add support for the Synaptics BCM4384 Bluetooth controller](https://lore.kernel.org/linux-bluetooth/178854098213.344939.2442318143633247201.git-patchwork-notify@kernel.org/)
- [Add support for the Synaptics BCM4384 Bluetooth controller](https://lore.kernel.org/linux-bluetooth/178854097913.344939.12691423613883743517.git-patchwork-notify@kernel.org/)
- [Add support for the Synaptics BCM4384 Bluetooth controller](https://lore.kernel.org/linux-bluetooth/178854097763.344939.12946304327950941506.git-patchwork-notify@kernel.org/)
- [Add support for the Synaptics BCM4384 Bluetooth controller.](https://lore.kernel.org/linux-bluetooth/178854097613.344939.278042329764425597.git-patchwork-notify@kernel.org/)
- [test-runner: Add support for PCIe passthrough](https://lore.kernel.org/linux-bluetooth/178855022348.496513.12616689441813971481.git-patchwork-notify@kernel.org/)
- [emulator: btdev: fix inquiry_timeout() inquiry destroy](https://lore.kernel.org/linux-bluetooth/178855321415.954520.9219865402519236088.git-patchwork-notify@kernel.org/)
- [btattach: Update for glibc 2.42 compatibility](https://lore.kernel.org/linux-bluetooth/178855321263.954520.5061381540514705260.git-patchwork-notify@kernel.org/)
- [btattach: Update for glibc 2.42 compatability](https://lore.kernel.org/linux-bluetooth/178855321113.954520.8179000280190568931.git-patchwork-notify@kernel.org/)
- [Add MCS fast seek and track position write support](https://lore.kernel.org/linux-bluetooth/178855320839.954520.11171942781306472164.git-patchwork-notify@kernel.org/)
- [adapter: clear discovery_found list before discovery_cleanup()](https://lore.kernel.org/linux-bluetooth/178855320963.954520.13487698152670558162.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- [Add cover art support](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1154605%2F000000-2b1fe5@github.com/)
- [emulator: bthost: don't crash on ecred_conn_req wi...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2Fe81413-3a2d54@github.com/)
- [transport: Fix use-after-free when replacing a lin...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1154589%2F000000-38f8e4@github.com/)
- [shared/bap: Fix use-after-free in bt_bap_detach](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1154582%2F000000-85f3cd@github.com/)
- [profiles/audio: Support MCS fast seeking](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1154163%2F000000-13b41e@github.com/)
- [avrcp: Fix out-of-bounds parsing of ListPlayerAttr...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1155564%2F000000-162444@github.com/)
- [tools/l2cap-tester: test closing sockets with ECRE...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1155668%2F000000-73ef98@github.com/)
- [client/btpclient: Improve GATT read](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1155344%2F000000-dac453@github.com/)
- [monitor: Check valid range of CE Length](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1156272%2F000000-bff1d0@github.com/)
- [btattach: Update for glibc 2.42 compatibility](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1157441%2F000000-897d4c@github.com/)
- [btattach: Update for glibc 2.42 compatability](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1157334%2F000000-c32d5b@github.com/)
- [client: avoid registering ranging objects as direc...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1156962%2F000000-017011@github.com/)
- [adapter: clear discovery_found list before discove...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1157432%2F000000-37b825@github.com/)
- [emulator: btdev: fix inquiry_timeout() inquiry des...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1157383%2F000000-ab6c9f@github.com/)
- [btio: add BT_IO_OPT_FORCE_ACTIVE support for L2CAP...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1157040%2F000000-5bf564@github.com/)
- [adapter/advertising: fix mgmt endian bug](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1156908%2F000000-ae77eb@github.com/)
- [doc/qualification: Add ASCS PICS file](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1156754%2F000000-2d91fc@github.com/)
- [doc/qualification: Add PICS and howto for the BAP ...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1156893%2F000000-f9929a@github.com/)
- [profiles/audio: Support MCS track position writes](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F4b92dd-12f5eb@github.com/)
- [test-runner: Add support for PCIe passthrough](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2Fed3d4c-4b92dd@github.com/)
- [shared/gatt-client: verify a synthesized CCC befor...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1158378%2F000000-063d77@github.com/)
- [shared/gatt-client: confirm a synthesized CCC hand...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1158295%2F000000-b6e494@github.com/)
- [client/btpclient: Add BTP_EV_BAP_ASE_FOUND support](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1158120%2F000000-ac2d23@github.com/)
- [doc: add functional/integration testing documentation](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1159124%2F000000-bb3619@github.com/)

---

## Company Focus Areas

### Independent Contributors

- [Functional/integration testing](https://lore.kernel.org/linux-bluetooth/cover.1788712996.git.pav@iki.fi/)
- [Bluetooth: btintel: harden version TLV parsing](https://lore.kernel.org/linux-bluetooth/20260831095923.18830-1-acharyalaxman8848@gmail.com/)
- [Add support for the Synaptics BCM4384 Bluetooth controller](https://lore.kernel.org/linux-bluetooth/20260901085702.1515378-1-andy.chang@synaptics.corp-partner.google.com/)
- [Bluetooth: L2CAP: part 2 of l2cap_conn::chan_l locking fixes](https://lore.kernel.org/linux-bluetooth/cover.1788296635.git.pav@iki.fi/)

### Qualcomm

- [BlueZ: Support vendor packets](https://lore.kernel.org/linux-bluetooth/20260903-vendor_hci-v3-0-015d62a57c91@oss.qualcomm.com/)
- [Bluetooth: btusb: Support Qualcomm multi-subsystem QCC2072](https://lore.kernel.org/linux-bluetooth/20260830-btusb_qcc2072-v2-0-5c0e0c9dd98b@oss.qualcomm.com/)
- [BlueZ: Support vendor HCI packets](https://lore.kernel.org/linux-bluetooth/20260830-vendor_hci-v2-0-9903760957ab@oss.qualcomm.com/)
- [client/cs: fix crash in reference ranging provider](https://lore.kernel.org/linux-bluetooth/20260903101635.3370149-1-naga.akella@oss.qualcomm.com/)

### Intel

- [Bluetooth: btintel_pcie: remove duplicate BTINTEL_PCIE_MAGIC_NUM definition](https://lore.kernel.org/linux-bluetooth/20260904002939.622659-1-chandrashekar.devegowda@intel.com/)
- [avrcp: Fix out-of-bounds parsing of ListPlayerAttributes response](https://lore.kernel.org/linux-bluetooth/20260901175315.1348621-1-luiz.dentz@gmail.com/)
- [Bluetooth: Move H:4 reassembly into the Bluetooth core](https://lore.kernel.org/linux-bluetooth/20260831164112.778064-2-luiz.dentz@gmail.com/)
- [Bluetooth: btintel_pcie: fix PM flow for S0ix, S3 and S4](https://lore.kernel.org/linux-bluetooth/20260902042840.2432862-1-ravindra@intel.com/)

### Collabora

- [client/btpclient: Add BAP/ASCS/PACS support for auto-pts BAP tests](https://lore.kernel.org/linux-bluetooth/20260904135124.981346-1-frederic.danis@collabora.com/)
- [Add MCS fast seek and track position write](https://lore.kernel.org/linux-bluetooth/20260831061144.7767-1-raghavendra.rao@collabora.com/)
- [Add MCS fast seek and track position write support](https://lore.kernel.org/linux-bluetooth/20260904165332.42046-1-raghavendra.rao@collabora.com/)
- [doc/qualification: Add PICS and howto for the BAP qualification](https://lore.kernel.org/linux-bluetooth/20260903085716.741578-1-frederic.danis@collabora.com/)

### Synaptics

- [Add support for the Synaptics BCM4384 Bluetooth controller](https://lore.kernel.org/linux-bluetooth/20260903121824.3080796-1-Andy.Chang@synaptics.com/)

### UnionTech

- [Bluetooth: btqcomsmd: destroy RPMsg endpoints before freeing hci_dev](https://lore.kernel.org/linux-bluetooth/049D60B81C44FFA9+20260904025457.3523467-1-raoxu@uniontech.com/)
