---
title: "linux-bluetooth Weekly Report - Week 24"
date: 2026-06-14
summary: "Total messages: 468 (311 human, 157 CI/bot)"
draft: false
---

**Total messages: 468 (311 human, 157 CI/bot)**

Note: Of the 468 messages, 311 are human-generated, 157 are CI/bot (bluez.test.bot: 65, patchwork-bot+bluetooth: 30, BluezTestBot: 29, bugzilla-daemon: 26, kernel test robot: 4, patchwork-bot+netdevbpf: 2, syzbot: 1).

---

## Summary
During week 24 (8 - 14 June 2026) the linux-bluetooth mailing list carried 468 messages, 311 from contributors and 157 from CI and bots. There were 105 human-initiated threads: 54 kernel patch series, 43 BlueZ userspace series and 8 discussions or reports. 30 patches were applied via patchwork and 31 commits were pushed to bluez repositories. The most active contributor was Luiz Augusto von Dentz (Intel) with 49 messages. 13 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: qca: Add BT FW build version to kernel log](https://lore.kernel.org/linux-bluetooth/20260610064232.2385866-1-xiuzhuo.shang@oss.qualcomm.com/) | Xiuzhuo Shang | Qualcomm | 1 | Version 2 |
| [Bluetooth: enable context analysis](https://lore.kernel.org/linux-bluetooth/cover.1781432726.git.pav@iki.fi/) | Pauli Virtanen | Independent | 5 | Version 2 |
| [Bluetooth: hci_conn: Fix null ptr deref in hci_abort_conn()](https://lore.kernel.org/linux-bluetooth/20260610130648.1091326-1-oss@fourdim.xyz/) | Siwei Zhang | Independent | 1 | Initial version |
| [Bluetooth: hci_conn: Fix null ptr deref in hci_abort_conn()](https://lore.kernel.org/linux-bluetooth/20260611152039.2176565-1-oss@fourdim.xyz/) | Siwei Zhang | Independent | 1 | Version 3 |
| [Bluetooth: hci_core: Add reset_type parameter to hdev->reset() callback](https://lore.kernel.org/linux-bluetooth/20260612012832.2395034-1-chandrashekar.devegowda@intel.com/) | Chandrashekar Devegowda | Intel | 2 | Initial version |
| [Bluetooth: qca: Add BT FW build version log](https://lore.kernel.org/linux-bluetooth/20260609075417.1160702-1-xiuzhuo.shang@oss.qualcomm.com/) | Xiuzhuo Shang | Qualcomm | 1 | Initial version |
| [Bluetooth: btmtksdio: fix infinite loop in btmtksdio_txrx_work()](https://lore.kernel.org/linux-bluetooth/20260609121329.1262170-1-senozhatsky@chromium.org/) | Sergey Senozhatsky | Independent | 1 | Initial version |
| [Bluetooth: hci_conn: Fix null ptr deref in hci_abort_conn()](https://lore.kernel.org/linux-bluetooth/20260610150704.1234558-1-oss@fourdim.xyz/) | Siwei Zhang | Independent | 1 | Version 2 |
| [block: implement NVMEM provider](https://lore.kernel.org/linux-bluetooth/20260609-block-as-nvmem-v4-4-45712e6b22c6@oss.qualcomm.com/) | Loic Poulain | Qualcomm | 8 | Version 4 |
| [dt-bindings: net: wireless: qcom,ath10k: Document NVMEM cells](https://lore.kernel.org/linux-bluetooth/20260609-block-as-nvmem-v4-2-45712e6b22c6@oss.qualcomm.com/) | Loic Poulain | Qualcomm | 8 | Version 4 |
| [Bluetooth: L2CAP: fix tx ident leak for commands without a response](https://lore.kernel.org/linux-bluetooth/20260612143818.167643-1-stig@hornang.me/) | Stig Hornang | Independent | 1 | Initial version |
| [Bluetooth: btintel_pcie: Separate coredump work from RX work](https://lore.kernel.org/linux-bluetooth/20260610162544.240444-1-kiran.k@intel.com/) | Kiran K | Intel | 1 | Version 2 |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| ["cleanup" variable attribute follow-up](https://lore.kernel.org/linux-bluetooth/20260609135837.476561-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 6 | Initial version |
| [Functional/integration testing](https://lore.kernel.org/linux-bluetooth/cover.1781365708.git.pav@iki.fi/) | Pauli Virtanen | Independent | 6 | Version 6 |
| [btio: Handle EOPNOTSUPP from accept() to prevent busy loop](https://lore.kernel.org/linux-bluetooth/20260609185313.155105-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 4 | Version 2 |
| [avdtp: Fix GET_CONFIGURATION cmd](https://lore.kernel.org/linux-bluetooth/20260608112923.3722754-1-simon.mikuda@streamunlimited.com/) | Simon Mikuda | Independent | 2 | Initial version |
| [hog: Fix starting encryption on some BLE remotes](https://lore.kernel.org/linux-bluetooth/20260608091140.3606008-1-simon.mikuda@streamunlimited.com/) | Simon Mikuda | Independent | 1 | Initial version |
| [profiles/audio/bass: Use BASS_Modify_Source when assistant is active](https://lore.kernel.org/linux-bluetooth/20260611172235.92930-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 4 | Initial version |
| [Initial Channel Sounding Support for](https://lore.kernel.org/linux-bluetooth/20260611120044.1641009-1-naga.akella@oss.qualcomm.com/) | Naga Bhavani Akella | Qualcomm | 3 | Version 3 |
| [a2dp: Add codec prioritization](https://lore.kernel.org/linux-bluetooth/20260608111658.3686364-1-simon.mikuda@streamunlimited.com/) | Simon Mikuda | Independent | 1 | Initial version |
| [avdtp: Add GetConfiguration DBus function](https://lore.kernel.org/linux-bluetooth/20260608121226.3727101-1-simon.mikuda@streamunlimited.com/) | Simon Mikuda | Independent | 2 | Initial version |
| [btio: Handle EOPNOTSUPP from accept() to prevent busy loop](https://lore.kernel.org/linux-bluetooth/20260609165057.90837-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 4 | Initial version |
| [device: Refactor device_discover_services function](https://lore.kernel.org/linux-bluetooth/20260608110743.3683728-1-simon.mikuda@streamunlimited.com/) | Simon Mikuda | Independent | 3 | Version 3 |
| [shared/bap: Don't link ucast streams before CIS IDs are assigned](https://lore.kernel.org/linux-bluetooth/20260609211111.3887657-1-simon.mikuda@streamunlimited.com/) | Simon Mikuda | Independent | 1 | Initial version |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [[GIT PULL] bluetooth 2026-06-10](https://lore.kernel.org/linux-bluetooth/20260610180050.419401-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 2 messages |
| [[GIT PULL] bluetooth-next 2026-06-11](https://lore.kernel.org/linux-bluetooth/20260611183358.176776-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 2 messages |
| [[REGRESSION] Intel Corporation Device a876 (rev 10) firmware crashes since ed10e...](https://lore.kernel.org/linux-bluetooth/635e5e63-dc67-4dac-8590-d613582c94c8@posteo.net/) | Bianca Fürstenau | 2 messages |
| [[Kernel Bug] possible deadlock in vhci_send_frame](https://lore.kernel.org/linux-bluetooth/CAHPqNmzmt2SW_gJDacW5EzZowkjBYM7qaMqPaY9anYN5TxrmDg@mail.gmail.com/) | Longxing Li | 1 message |
| [[REGRESSION] Bluetooth: hci_uart: fix UAFs and race conditions in close and init...](https://lore.kernel.org/linux-bluetooth/07e0a28650773abec711ee492fdb1bf5d21a6c98.camel@iki.fi/) | Pauli Virtanen | 1 message |
| [[obexd/map] PushMessage does not expose outgoing MAP handle, causing MNS status ...](https://lore.kernel.org/linux-bluetooth/CAAO-DPssqW4tSbk=iiYBZyx7WxNqsMEZh0Oo4pNjY1333daDtA@mail.gmail.com/) | J.L. | 1 message |
| [mediatek MT7922: update bluetooth firmware to 20260605203811](https://lore.kernel.org/linux-bluetooth/20260612032743.2446073-1-chris.lu@mediatek.com/) | Chris Lu | 1 message |
| [mediatek MT7925: update bluetooth firmware to 20260605184935](https://lore.kernel.org/linux-bluetooth/20260612032713.2445874-1-chris.lu@mediatek.com/) | Chris Lu | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Bluetooth: L2CAP: Fix use-after-free in l2cap_sock_new_connection_cb()](https://lore.kernel.org/linux-bluetooth/20260612143449.3045055-2-oss@fourdim.xyz/) | v10->v11 |
| [Bluetooth: btintel_pcie: Separate coredump work from RX work](https://lore.kernel.org/linux-bluetooth/20260610162544.240444-1-kiran.k@intel.com/) | v1->v2 |
| [Bluetooth: hci_conn: Fix null ptr deref in hci_abort_conn()](https://lore.kernel.org/linux-bluetooth/20260612161753.3140707-1-oss@fourdim.xyz/) | v1->v2->v3->v4 |
| [Bluetooth: hci_uart: clear HCI_UART_SENDING when write_work is cancele](https://lore.kernel.org/linux-bluetooth/9fdead8517c36f37c0b23b7b60f590d735792cfa.1781375875.git.pav@iki.fi/) | v1->v2 |
| [Initial Channel Sounding Support for](https://lore.kernel.org/linux-bluetooth/20260611120044.1641009-1-naga.akella@oss.qualcomm.com/) | v1->v2->v3 |
| [Support for block device NVMEM providers](https://lore.kernel.org/linux-bluetooth/20260612-block-as-nvmem-v5-0-95e0b30fff90@oss.qualcomm.com/) | v3->v4->v5 |
| [adapter: Fix failed bonding attempt after LE link disconnection](https://lore.kernel.org/linux-bluetooth/20260610082054.3915366-1-simon.mikuda@streamunlimited.com/) | v1->v2 |
| [btio: Handle EOPNOTSUPP from accept() to prevent busy loop](https://lore.kernel.org/linux-bluetooth/20260609185313.155105-1-luiz.dentz@gmail.com/) | v1->v2 |
| [device: Refactor device_discover_services function](https://lore.kernel.org/linux-bluetooth/20260608110743.3683728-1-simon.mikuda@streamunlimited.com/) | v1->v2->v3 |
| [dt-bindings: mmc: Document support for nvmem-layout](https://lore.kernel.org/linux-bluetooth/20260609-block-as-nvmem-v4-1-45712e6b22c6@oss.qualcomm.com/) | v3->v4 |
| [shared/bap: Initialize ucast/bcast IDs as unset](https://lore.kernel.org/linux-bluetooth/20260614105016.1147112-1-simon.mikuda@streamunlimited.com/) | v2->v3 |
| [shared/bap: Transition ASE to QoS Configured on CIS loss](https://lore.kernel.org/linux-bluetooth/20260614100208.1091560-1-simon.mikuda@streamunlimited.com/) | v1->v2 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 49 |
| Simon Mikuda | Independent | 43 |
| Loic Poulain | Qualcomm | 32 |
| Pauli Virtanen | Independent | 28 |
| Šimon Mikuda | Independent | 26 |
| Siwei Zhang | Independent | 19 |
| Dmitry Baryshkov | Qualcomm | 15 |
| Bartosz Golaszewski | Qualcomm | 13 |
| Naga Bhavani Akella | Qualcomm | 10 |
| Bastien Nocera | Red Hat | 10 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: btintel_pcie: Add 50 ms delay before MAC init on BlazarIW](https://lore.kernel.org/linux-bluetooth/178102325088.2135346.3443074751306554716.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: Load IOSF debug regs by controller variant](https://lore.kernel.org/linux-bluetooth/178102324938.2135346.6226498338854271525.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: Fix UAF in channel timeout by holding conn ref](https://lore.kernel.org/linux-bluetooth/178110240589.3071747.17465364670664639743.git-patchwork-notify@kernel.org/)
- [Bluetooth: qca: Add BT FW build version to kernel log](https://lore.kernel.org/linux-bluetooth/178110602188.3101197.17530199714271809056.git-patchwork-notify@kernel.org/)
- [Bluetooth: qca: Add BT FW build version log](https://lore.kernel.org/linux-bluetooth/178110602038.3101197.11961968582425706354.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: validate connectionless PSM length](https://lore.kernel.org/linux-bluetooth/178110601888.3101197.11028793216503319042.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci: validate codec capability element length](https://lore.kernel.org/linux-bluetooth/178110601738.3101197.1357128495665086310.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_codec: validate capability record length](https://lore.kernel.org/linux-bluetooth/178110601591.3101197.7289209154305799030.git-patchwork-notify@kernel.org/)
- [Bluetooth: MGMT: Fix backward compatibility with userspace](https://lore.kernel.org/linux-bluetooth/178120069613.286318.3554840742958501594.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: Separate coredump work from RX work](https://lore.kernel.org/linux-bluetooth/178120069463.286318.3578477179823735983.git-patchwork-notify@kernel.org/)
- [Bluetooth: btmtksdio: fix infinite loop in btmtksdio_txrx_work()](https://lore.kernel.org/linux-bluetooth/178120069313.286318.5639664453006485239.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [device: Fix cache update on device remove](https://lore.kernel.org/linux-bluetooth/178094281038.1611786.5265137920273668277.git-patchwork-notify@kernel.org/)
- [device: Fix auth_retry timeout not being removed on reconnect](https://lore.kernel.org/linux-bluetooth/178094280888.1611786.13253152725240385215.git-patchwork-notify@kernel.org/)
- [avdtp: Fix GET_CONFIGURATION cmd](https://lore.kernel.org/linux-bluetooth/178094280738.1611786.8852810526600157562.git-patchwork-notify@kernel.org/)
- [device: Refactor device_discover_services function](https://lore.kernel.org/linux-bluetooth/178094280590.1611786.9656752932765017197.git-patchwork-notify@kernel.org/)
- [shared/hci: Avoid redundant BPF filter updates on duplicate events](https://lore.kernel.org/linux-bluetooth/178101842013.2087958.16375442136756190126.git-patchwork-notify@kernel.org/)
- [shared/bap: add ASE Control Point error responses](https://lore.kernel.org/linux-bluetooth/178101841863.2087958.17757230484857347841.git-patchwork-notify@kernel.org/)
- [btio: handle error from broadcast ISO socket](https://lore.kernel.org/linux-bluetooth/178111560488.3579558.9810111731433240687.git-patchwork-notify@kernel.org/)
- [btio: Handle EOPNOTSUPP from accept() to prevent busy loop](https://lore.kernel.org/linux-bluetooth/178111620639.3582779.16078863116102964223.git-patchwork-notify@kernel.org/)
- [transport: Complete Acquire for Sink ASE entering Enabling](https://lore.kernel.org/linux-bluetooth/178111681213.3588149.4306776156862401187.git-patchwork-notify@kernel.org/)
- [shared/bap: Report invalid-length ASE CP write via notification](https://lore.kernel.org/linux-bluetooth/178111681063.3588149.6278164701179181672.git-patchwork-notify@kernel.org/)
- [avrcp: Abort continuing response on fragmented CT replies](https://lore.kernel.org/linux-bluetooth/178111680913.3588149.12989657974958763377.git-patchwork-notify@kernel.org/)
- [avdtp: Return correct error when SEP is inuse](https://lore.kernel.org/linux-bluetooth/178111680763.3588149.17020774142320738034.git-patchwork-notify@kernel.org/)
- [adapter: Fix failed bonding attempt after LE link disconnection](https://lore.kernel.org/linux-bluetooth/178111680614.3588149.7368112532783856520.git-patchwork-notify@kernel.org/)
- [bluetooth 2026-05-28](https://lore.kernel.org/linux-bluetooth/178120069763.286318.14177936524394824410.git-patchwork-notify@kernel.org/)
- [bluetooth 2026-06-03](https://lore.kernel.org/linux-bluetooth/178120069163.286318.11448683421315459798.git-patchwork-notify@kernel.org/)
- [bluetooth 2026-05-20](https://lore.kernel.org/linux-bluetooth/178120069013.286318.14387798672720633781.git-patchwork-notify@kernel.org/)
- [6lowpan: fix off-by-one in multicast context address compression](https://lore.kernel.org/linux-bluetooth/178120068868.286318.1150941519711898889.git-patchwork-notify@kernel.org/)
- [bluetooth 2026-05-14](https://lore.kernel.org/linux-bluetooth/178120068734.286318.15929310883148009790.git-patchwork-notify@kernel.org/)
- [profiles/audio/bass: Use BASS_Modify_Source when assistant is active](https://lore.kernel.org/linux-bluetooth/178120380489.316377.5584335188823871722.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- [shared/hci: Avoid redundant BPF filter updates on ...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1108111%2F000000-ad880b@github.com/)
- [device: Fix cache update on device remove](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1107813%2F000000-3c59a0@github.com/)
- [gatt-client: Add PreferredNotifyType property](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1107894%2F000000-19245b@github.com/)
- [adapter: Fix failed bonding attempt after LE link ...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1107775%2F000000-2a496e@github.com/)
- [a2dp: Add codec prioritization](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1107778%2F000000-435c7a@github.com/)
- [device: Refactor device_discover_services function](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1107774%2F000000-fa023b@github.com/)
- [avdtp: Fix GET_CONFIGURATION cmd](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F7a0c8e-622a46@github.com/)
- [hog: Fix starting encryption on some BLE remotes](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1107612%2F000000-671363@github.com/)
- [bap: Fix CCC value for ASE control point](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1107783%2F000000-78a1c0@github.com/)
- [device: Fix auth_retry timeout not being removed o...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1107787%2F000000-f254fc@github.com/)
- [avdtp: Add GetConfiguration DBus function](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1107804%2F000000-12ee17@github.com/)
- [shared: rap: Add the is_central parameter to verif...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1108507%2F000000-d6cc95@github.com/)
- [shared: rap: Check role before sending CS Sec Enab...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1108690%2F000000-8c2ee0@github.com/)
- [btio: Handle EOPNOTSUPP from accept() to prevent b...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1108786%2F000000-3cc2dd@github.com/)
- [shared/util: Fix warnings when cleaning up NULL po...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1108616%2F000000-e22bd8@github.com/)
- [shared/bap: add ASE Control Point error responses](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1108483%2F000000-29bfab@github.com/)
- [avrcp: Abort continuing response on fragmented CT ...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1108830%2F000000-029590@github.com/)
- [shared/bap: Transition ASE to QoS Configured on CI...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1108825%2F000000-0aee36@github.com/)
- [media: Add Mute property to MediaTransport1](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1108770%2F000000-c01f9b@github.com/)
- [shared/vcp: Fix duplicate VCS registration in bt_v...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1108772%2F000000-45183e@github.com/)
- [transport: Complete Acquire for Sink ASE entering ...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1108826%2F000000-95d160@github.com/)
- [shared/bap: Don't link ucast streams before CIS ID...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1108824%2F000000-b854c4@github.com/)
- [shared/bap: Report invalid-length ASE CP write via...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1108823%2F000000-cedc4d@github.com/)
- [avdtp: Return correct error when SEP is inuse](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1108834%2F000000-da2011@github.com/)
- [btio: handle error from broadcast ISO socket](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F912d67-5d836f@github.com/)
- [profiles/audio/bass: Use BASS_Modify_Source when a...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1110215%2F000000-ca320e@github.com/)
- [emulator: btvirt: support debug for -s socket server](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1111062%2F000000-13b4ac@github.com/)
- [doc: add functional/integration testing documentation](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1111076%2F000000-6b0711@github.com/)
- [media: use custom DBus timeouts only when remote s...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1111256%2F000000-ddb5d4@github.com/)
- [shared/bap: Initialize ucast/bcast IDs as unset](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1111248%2F000000-964d7f@github.com/)
- [gatt-database: Prefer notifications over indications](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1111253%2F000000-5b79ca@github.com/)

---

## Company Focus Areas

### Independent Contributors

- [Functional/integration testing](https://lore.kernel.org/linux-bluetooth/cover.1781365708.git.pav@iki.fi/)
- [Bluetooth: enable context analysis](https://lore.kernel.org/linux-bluetooth/cover.1781432726.git.pav@iki.fi/)
- [Bluetooth: hci_conn: Fix null ptr deref in hci_abort_conn()](https://lore.kernel.org/linux-bluetooth/20260610130648.1091326-1-oss@fourdim.xyz/)
- [Bluetooth: hci_conn: Fix null ptr deref in hci_abort_conn()](https://lore.kernel.org/linux-bluetooth/20260611152039.2176565-1-oss@fourdim.xyz/)

### Qualcomm

- [Bluetooth: qca: Add BT FW build version to kernel log](https://lore.kernel.org/linux-bluetooth/20260610064232.2385866-1-xiuzhuo.shang@oss.qualcomm.com/)
- [Bluetooth: qca: Add BT FW build version log](https://lore.kernel.org/linux-bluetooth/20260609075417.1160702-1-xiuzhuo.shang@oss.qualcomm.com/)
- [Initial Channel Sounding Support for](https://lore.kernel.org/linux-bluetooth/20260611120044.1641009-1-naga.akella@oss.qualcomm.com/)
- [block: implement NVMEM provider](https://lore.kernel.org/linux-bluetooth/20260609-block-as-nvmem-v4-4-45712e6b22c6@oss.qualcomm.com/)

### Intel

- [Bluetooth: hci_core: Add reset_type parameter to hdev->reset() callback](https://lore.kernel.org/linux-bluetooth/20260612012832.2395034-1-chandrashekar.devegowda@intel.com/)
- [btio: Handle EOPNOTSUPP from accept() to prevent busy loop](https://lore.kernel.org/linux-bluetooth/20260609185313.155105-1-luiz.dentz@gmail.com/)
- [profiles/audio/bass: Use BASS_Modify_Source when assistant is active](https://lore.kernel.org/linux-bluetooth/20260611172235.92930-1-luiz.dentz@gmail.com/)
- [btio: Handle EOPNOTSUPP from accept() to prevent busy loop](https://lore.kernel.org/linux-bluetooth/20260609165057.90837-1-luiz.dentz@gmail.com/)

### Collabora

- [shared/bap: add ASE Control Point error responses](https://lore.kernel.org/linux-bluetooth/20260609102548.6887-1-raghavendra.rao@collabora.com/)
- [device: Fix cache update on device remove](https://lore.kernel.org/linux-bluetooth/20260608122713.72681-1-frederic.danis@collabora.com/)

### MediaTek

- [mediatek MT7922: update bluetooth firmware to 20260605203811](https://lore.kernel.org/linux-bluetooth/20260612032743.2446073-1-chris.lu@mediatek.com/)
- [mediatek MT7925: update bluetooth firmware to 20260605184935](https://lore.kernel.org/linux-bluetooth/20260612032713.2445874-1-chris.lu@mediatek.com/)

### Red Hat

- ["cleanup" variable attribute follow-up](https://lore.kernel.org/linux-bluetooth/20260609135837.476561-1-hadess@hadess.net/)
