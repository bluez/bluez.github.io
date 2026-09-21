---
title: "linux-bluetooth Weekly Report - Week 32"
date: 2026-08-09
summary: "Total messages: 286 (164 human, 122 CI/bot)"
draft: false
---

**Total messages: 286 (164 human, 122 CI/bot)**

Note: Of the 286 messages, 164 are human-generated, 122 are CI/bot (bluez.test.bot: 53, bugzilla-daemon: 28, patchwork-bot+bluetooth: 17, BluezTestBot: 11, kernel test robot: 4, Sasha Levin: 3, syzbot: 3, github-actions[bot]: 2, patchwork-bot+netdevbpf: 1).

---

## Summary
During week 32 (3 - 9 August 2026) the linux-bluetooth mailing list carried 286 messages, 164 from contributors and 122 from CI and bots. There were 65 human-initiated threads: 46 kernel patch series, 15 BlueZ userspace series and 4 discussions or reports. 17 patches were applied via patchwork and 9 commits were pushed to bluez repositories. The most active contributor was Bastien Nocera (Red Hat) with 23 messages. 10 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: fix cmd_sync payload lifetimes on the cancel path](https://lore.kernel.org/linux-bluetooth/20260806125957.698760-1-lilinmao@kylinos.cn/) | Linmao Li | Independent | 4 | Initial version |
| [Bluetooth: MGMT: fix use-after-free of struct mgmt_mesh_tx](https://lore.kernel.org/linux-bluetooth/20260807101529.17348-1-baul.lee@xbow.com/) | Baul Lee | Independent | 3 | Version 2 |
| [Bluetooth: MGMT: fix use-after-free of struct mgmt_mesh_tx](https://lore.kernel.org/linux-bluetooth/20260807070916.85771-1-baul.lee@xbow.com/) | Baul Lee | Independent | 3 | Initial version |
| [Bluetooth: SCO: Fix UAF on sco_sock_timeout](https://lore.kernel.org/linux-bluetooth/20260804214406.750710-1-tkjos@google.com/) | Todd Kjos | Google | 2 | Initial version |
| [Bluetooth: L2CAP: Fix use-after-free in l2cap_sock_new_connection_cb()](https://lore.kernel.org/linux-bluetooth/20260803081414.729798-1-alexevgmart@gmail.com/) | Alexander Martyniuk | Independent | 5 | Initial version |
| [Bluetooth: MGMT: reject HCI_CMD_SYNC params_len above 255](https://lore.kernel.org/linux-bluetooth/20260806174001.267127-1-ali@iusegentoo.com/) | Ali Ahmet Memis | Independent | 1 | Initial version |
| [Bluetooth: SCO: Fix UAF on sco_sock_timeout](https://lore.kernel.org/linux-bluetooth/20260805212435.48618-1-tkjos@google.com/) | Todd Kjos | Google | 2 | Version 2 |
| [Bluetooth: SMP: clear the aes_cmac_key when done](https://lore.kernel.org/linux-bluetooth/20260805143611.818559-5-thuth@redhat.com/) | Thomas Huth | Independent | 6 | Initial version |
| [Bluetooth: btusb: clear remote wake on idle Intel ACPI paths](https://lore.kernel.org/linux-bluetooth/48576c0c4615c9f34f44935216e63d48518f9d46.1785838429.git.sean@starlabs.systems/) | Sean Rhodes | Independent | 1 | Initial version |
| [Bluetooth: qca: Allow capturing QCA debug logs in snoop logs](https://lore.kernel.org/linux-bluetooth/20260804-qca_logs_enable-v2-1-587d584ef4c2@oss.qualcomm.com/) | Dishank Garg | Qualcomm | 1 | Version 2 |
| [Bluetooth: virtio: improve RX handling](https://lore.kernel.org/linux-bluetooth/20260807160325.1921-1-igor.skalkin@oss.qualcomm.com/) | Igor Skalkin | Qualcomm | 2 | Initial version |
| [Bluetooth: ISO: do not force BT_LISTEN after a failed BIG sync](https://lore.kernel.org/linux-bluetooth/20260807010003.85655-1-ali@iusegentoo.com/) | Ali Ahmet Memis | Independent | 1 | Initial version |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [avrcp: Fix Out-of-Bounds Read in AVRCP GetFolderItems parsing](https://lore.kernel.org/linux-bluetooth/20260804142419.2274153-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 3 | Version 2 |
| [avrcp: Fix Out-of-Bounds Read in AVRCP GetFolderItems parsing](https://lore.kernel.org/linux-bluetooth/20260806132231.3052523-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 5 | Version 3 |
| [avrcp: Split off name parsing from parse_*_element()](https://lore.kernel.org/linux-bluetooth/20260804124511.2212066-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 3 | Initial version |
| [unit: Add test for sdp_xml_parse_record()](https://lore.kernel.org/linux-bluetooth/20260805150327.2669078-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 1 | Version 2 |
| [shared/gatt-client: discover the CCC descriptor instead of assuming it](https://lore.kernel.org/linux-bluetooth/20260808031940.66686-1-proxy-alt@proxy-alt.dev/) | Proxy alt | Independent | 1 | Initial version |
| [Support for block device NVMEM providers](https://lore.kernel.org/linux-bluetooth/20260806-block-as-nvmem-v10-0-be598b2a5606@oss.qualcomm.com/) | Loic Poulain | Qualcomm | 10 | Version 10 |
| [avdtp: Fix use-after-free in connection_lost](https://lore.kernel.org/linux-bluetooth/20260807095809.2584501-1-jinwang.li@oss.qualcomm.com/) | Jinwang Li | Qualcomm | 1 | Initial version |
| [client/btpclient: Fix missing errno.h include](https://lore.kernel.org/linux-bluetooth/20260807061316.1647216-1-jinwang.li@oss.qualcomm.com/) | Jinwang Li | Qualcomm | 1 | Initial version |
| [client: Avoid scan prompt when discovery is already active](https://lore.kernel.org/linux-bluetooth/20260808200806.134373-1-z4pdyy@gmail.com/) | z4pdyy | Independent | 1 | Version 2 |
| [emulator: btvirt: support debug for -s socket server](https://lore.kernel.org/linux-bluetooth/3a0785ebc5ceef448c52d25545b142659d25ce24.1786177678.git.pav@iki.fi/) | Pauli Virtanen | Independent | 1 | Version 2 |
| [nvmem: layouts: Support fixed-layout as the nvmem device node itself](https://lore.kernel.org/linux-bluetooth/20260806-block-as-nvmem-v10-4-be598b2a5606@oss.qualcomm.com/) | Loic Poulain | Qualcomm | 10 | Version 10 |
| [shared/gatt-client: discover the CCC descriptor instead of assuming it](https://lore.kernel.org/linux-bluetooth/20260808044531.71229-1-proxy-alt@proxy-alt.dev/) | Proxy alt | Independent | 1 | Version 2 |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [Add cover art support](https://lore.kernel.org/linux-bluetooth/20260803195620.255866-1-jan.brummer@tabos.org/) | Jan-Michael | 4 messages |
| [Fwd: Use-after-free in net/bluetooth/iso.c (iso_sock_connect race)](https://lore.kernel.org/linux-bluetooth/CAGBKPgNOmrroYBCrDekf7g92DoAvXeHJqZXoJo+vuzz-QtLwkQ@mail.gmail.com/) | vova tokarev | 2 messages |
| [[GIT PULL] bluetooth-next 2026-08-07](https://lore.kernel.org/linux-bluetooth/20260807200215.982570-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 2 messages |
| [Pair() silently degrades to "No Bonding" when adapter is not pairable -- throwaw...](https://lore.kernel.org/linux-bluetooth/DB9PR08MB9802E0CD4A603984E8A7FEBF8FD52@DB9PR08MB9802.eurprd08.prod.outlook.com/) | Cedrik Piehler | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Bluetooth: MGMT: fix use-after-free of struct mgmt_mesh_tx](https://lore.kernel.org/linux-bluetooth/20260807101529.17348-1-baul.lee@xbow.com/) | v1->v2 |
| [Bluetooth: MGMT: remove the mesh walk from the socket destructor](https://lore.kernel.org/linux-bluetooth/20260807101529.17348-2-baul.lee@xbow.com/) | v1->v2 |
| [Bluetooth: SCO: Fix UAF on sco_sock_timeout](https://lore.kernel.org/linux-bluetooth/20260805212435.48618-1-tkjos@google.com/) | v1->v2 |
| [Bluetooth: mgmt: fix 'hdev->discovery.uuids' NULL dereference](https://lore.kernel.org/linux-bluetooth/20260808163128.288740-1-pashpakovskii@salutedevices.com/) | v1->v2 |
| [avrcp: Fix Out-of-Bounds Read in AVRCP GetFolderItems parsing](https://lore.kernel.org/linux-bluetooth/20260806132231.3052523-1-hadess@hadess.net/) | v2->v3 |
| [avrcp: Split off name parsing from parse_*_element()](https://lore.kernel.org/linux-bluetooth/20260804142419.2274153-2-hadess@hadess.net/) | v1->v2 |
| [client: Avoid scan prompt when discovery is already active](https://lore.kernel.org/linux-bluetooth/20260808200806.134373-1-z4pdyy@gmail.com/) | v1->v2 |
| [shared/gatt-client: discover the CCC descriptor instead of assuming it](https://lore.kernel.org/linux-bluetooth/20260808044531.71229-1-proxy-alt@proxy-alt.dev/) | v1->v2 |
| [unit: Add test for sdp_xml_parse_record()](https://lore.kernel.org/linux-bluetooth/20260805150327.2669078-1-hadess@hadess.net/) | v1->v2 |
| [unit: Remove Android avrcp.c dead-code](https://lore.kernel.org/linux-bluetooth/20260806132231.3052523-2-hadess@hadess.net/) | v1->v3 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Bastien Nocera | Red Hat | 23 |
| Luiz Augusto von Dentz | Intel | 14 |
| Loic Poulain | Qualcomm | 12 |
| Pauli Virtanen | Independent | 11 |
| Baul Lee | Independent | 8 |
| Ali Ahmet Memis | Independent | 6 |
| Todd Kjos | Google | 5 |
| Linmao Li | Independent | 5 |
| Manivannan Sadhasivam | Independent | 4 |
| Guangshuo Li | Independent | 4 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: hci_event: validate LE Set CIG Parameters response](https://lore.kernel.org/linux-bluetooth/178586521063.3702995.14976898276396935564.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: Fix accept list UAF during suspend](https://lore.kernel.org/linux-bluetooth/178586520913.3702995.13748671232397528991.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmrvl: fix event packet length validation](https://lore.kernel.org/linux-bluetooth/178586520763.3702995.8912183304786882050.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: use proto_lock for l2cap_data to fix l2cap_disconn_i](https://lore.kernel.org/linux-bluetooth/178586520639.3702995.4820111211961794827.git-patchwork-notify@kernel.org/)
- [Bluetooth: MGMT: reject HCI_CMD_SYNC params_len above 255](https://lore.kernel.org/linux-bluetooth/178604610113.1449574.5255542768701146933.git-patchwork-notify@kernel.org/)
- [Bluetooth: fix cmd_sync payload lifetimes on the cancel path](https://lore.kernel.org/linux-bluetooth/178604609963.1449574.15912669243758957129.git-patchwork-notify@kernel.org/)
- [Bluetooth: btnxpuart: Add M.2 Bluetooth device support using pwrseq](https://lore.kernel.org/linux-bluetooth/178604609814.1449574.1250783761019962599.git-patchwork-notify@kernel.org/)
- [Bluetooth: ISO: zero the sockaddr before returning it in getname](https://lore.kernel.org/linux-bluetooth/178612021790.1887768.1776053981475041255.git-patchwork-notify@kernel.org/)
- [Bluetooth: ISO: do not force BT_LISTEN after a failed BIG sync](https://lore.kernel.org/linux-bluetooth/178612021613.1887768.3651042341721067643.git-patchwork-notify@kernel.org/)
- [Bluetooth: MSFT: validate evt_prefix_len against the response length](https://lore.kernel.org/linux-bluetooth/178612021463.1887768.11222059650731715459.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtksdio: fix usage_count leak when autosuspend_delay is n](https://lore.kernel.org/linux-bluetooth/178612021313.1887768.17053811482206662967.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_sync: Disable legacy instance's ext adv before setup sn](https://lore.kernel.org/linux-bluetooth/178612021163.1887768.9268794228090241757.git-patchwork-notify@kernel.org/)
- [Bluetooth: RFCOMM: take rfcomm_mutex for the deferred setup accept](https://lore.kernel.org/linux-bluetooth/178612021013.1887768.3117085684534014518.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_event: fix out-of-bounds read in LE PA report reassembl](https://lore.kernel.org/linux-bluetooth/178612020889.1887768.16877650332160888837.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [unit/test-rap: Add PTS tests for CS](https://lore.kernel.org/linux-bluetooth/178586460663.3699428.2074535802813189487.git-patchwork-notify@kernel.org/)
- [monitor: Decode Intel DDC LE extended features](https://lore.kernel.org/linux-bluetooth/178586460514.3699428.9244650513396028338.git-patchwork-notify@kernel.org/)
- [Add PCIe M.2 Key E connector support for NXP i.MX boards](https://lore.kernel.org/linux-bluetooth/178604609663.1449574.5164434195319660259.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- [Add cover art support](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1139642%2F000000-d768b7@github.com/)
- [monitor: Decode Intel DDC LE extended features](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2Fe45128-690c16@github.com/)
- [avrcp: Split off name parsing from parse_*_element()](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1140113%2F000000-e454c9@github.com/)
- [unit: Remove Android avrcp.c dead-code](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1139970%2F000000-c73543@github.com/)
- [unit: Add test for sdp_xml_parse_record()](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1140838%2F000000-b24d0e@github.com/)
- [emulator: btvirt: support debug for -s socket server](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1142579%2F000000-beebaf@github.com/)
- [shared/gatt-client: discover the CCC descriptor in...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1142517%2F000000-574d52@github.com/)
- [client: Avoid scan prompt when discovery is alread...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1142766%2F000000-306156@github.com/)
- [tools/l2cap-tester: add tests changing BT_SECURITY...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1142951%2F000000-91f1be@github.com/)

---

## Company Focus Areas

### Independent Contributors

- [Bluetooth: fix cmd_sync payload lifetimes on the cancel path](https://lore.kernel.org/linux-bluetooth/20260806125957.698760-1-lilinmao@kylinos.cn/)
- [Bluetooth: MGMT: fix use-after-free of struct mgmt_mesh_tx](https://lore.kernel.org/linux-bluetooth/20260807101529.17348-1-baul.lee@xbow.com/)
- [Add cover art support](https://lore.kernel.org/linux-bluetooth/20260803195620.255866-1-jan.brummer@tabos.org/)
- [Bluetooth: MGMT: fix use-after-free of struct mgmt_mesh_tx](https://lore.kernel.org/linux-bluetooth/20260807070916.85771-1-baul.lee@xbow.com/)

### Qualcomm

- [Bluetooth: qca: Allow capturing QCA debug logs in snoop logs](https://lore.kernel.org/linux-bluetooth/20260804-qca_logs_enable-v2-1-587d584ef4c2@oss.qualcomm.com/)
- [Bluetooth: virtio: improve RX handling](https://lore.kernel.org/linux-bluetooth/20260807160325.1921-1-igor.skalkin@oss.qualcomm.com/)
- [Bluetooth: hci_sync: Add NVMEM-backed BD address retrieval](https://lore.kernel.org/linux-bluetooth/20260806-block-as-nvmem-v10-8-be598b2a5606@oss.qualcomm.com/)
- [Bluetooth: qca: Set NVMEM BD address quirks when address is invalid](https://lore.kernel.org/linux-bluetooth/20260806-block-as-nvmem-v10-9-be598b2a5606@oss.qualcomm.com/)

### Red Hat

- [avrcp: Fix Out-of-Bounds Read in AVRCP GetFolderItems parsing](https://lore.kernel.org/linux-bluetooth/20260804142419.2274153-1-hadess@hadess.net/)
- [avrcp: Fix Out-of-Bounds Read in AVRCP GetFolderItems parsing](https://lore.kernel.org/linux-bluetooth/20260806132231.3052523-1-hadess@hadess.net/)
- [avrcp: Split off name parsing from parse_*_element()](https://lore.kernel.org/linux-bluetooth/20260804124511.2212066-1-hadess@hadess.net/)
- [unit: Add test for sdp_xml_parse_record()](https://lore.kernel.org/linux-bluetooth/20260805150327.2669078-1-hadess@hadess.net/)

### Google

- [Bluetooth: SCO: Fix UAF on sco_sock_timeout](https://lore.kernel.org/linux-bluetooth/20260804214406.750710-1-tkjos@google.com/)
- [Bluetooth: SCO: Fix UAF on sco_sock_timeout](https://lore.kernel.org/linux-bluetooth/20260805212435.48618-1-tkjos@google.com/)

### UnionTech

- [Bluetooth: btmtksdio: fix deadlock in close and reset paths](https://lore.kernel.org/linux-bluetooth/FD5D03449312D17C+20260806-btmtksdio-deadlock-fix-v1-1-3a2d4392d117@uniontech.com/)
- [Bluetooth: hci_serdev: Fix use-after-free in hci_uart_unregister_device()](https://lore.kernel.org/linux-bluetooth/0BDE51B0554940FB+20260805103612.916678-1-zhaojinming@uniontech.com/)

### Collabora

- [Bluetooth: MGMT: Add management security level changed event](https://lore.kernel.org/linux-bluetooth/20260805132203.176213-1-frederic.danis@collabora.com/)

### Intel

- [[GIT PULL] bluetooth-next 2026-08-07](https://lore.kernel.org/linux-bluetooth/20260807200215.982570-1-luiz.dentz@gmail.com/)

### Samsung

- [Bluetooth: btmrvl: fix event packet length validation](https://lore.kernel.org/linux-bluetooth/20260804094632.87581-1-m.szyprowski@samsung.com/)
