---
title: "linux-bluetooth Weekly Report - Week 35"
date: 2026-08-30
summary: "Total messages: 250 (159 human, 91 CI/bot)"
draft: false
---

**Total messages: 250 (159 human, 91 CI/bot)**

Note: Of the 250 messages, 159 are human-generated, 91 are CI/bot (bluez.test.bot: 47, patchwork-bot+bluetooth: 16, BluezTestBot: 13, kernel test robot: 4, syzbot: 4, bugzilla-daemon: 3, github-actions[bot]: 2, patchwork-bot+netdevbpf: 1, Sasha Levin: 1).

---

## Summary
During week 35 (24 - 30 August 2026) the linux-bluetooth mailing list carried 250 messages, 159 from contributors and 91 from CI and bots. There were 56 human-initiated threads: 28 kernel patch series, 19 BlueZ userspace series and 9 discussions or reports. 16 patches were applied via patchwork and 13 commits were pushed to bluez repositories. The most active contributor was Pauli Virtanen (Independent) with 38 messages. 7 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: L2CAP: fix and annotate l2cap_conn::chan_l locking](https://lore.kernel.org/linux-bluetooth/cover.1788013041.git.pav@iki.fi/) | Pauli Virtanen | Independent | 16 | Initial version |
| [Bluetooth: SCO: require CAP_NET_BIND_SERVICE to bind](https://lore.kernel.org/linux-bluetooth/20260827180149.415744-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 2 | Initial version |
| [Bluetooth: btusb: limit RTL8761B BROKEN_EXT_SCAN quirk to 0bda:a728](https://lore.kernel.org/linux-bluetooth/20260824053227.317496-1-junjie.cao@intel.com/) | Junjie Cao | Intel | 1 | Initial version |
| [Bluetooth: btintel_pcie: remove duplicate BTINTEL_PCIE_MAGIC_NUM definition](https://lore.kernel.org/linux-bluetooth/20260828142725.241243-1-chandrashekar.devegowda@intel.com/) | Chandrashekar Devegowda | Intel | 4 | Initial version |
| [Bluetooth: btintel_pcie: Clear automask on spurious interrupts](https://lore.kernel.org/linux-bluetooth/20260825162512.143965-1-kiran.k@intel.com/) | Kiran K | Intel | 1 | Initial version |
| [Bluetooth: btmtksdio: Stop discarding the hardware device id](https://lore.kernel.org/linux-bluetooth/20260825033634.499118-1-chris.lu@mediatek.com/) | Chris Lu | MediaTek | 2 | Initial version |
| [Bluetooth: Fix code style error](https://lore.kernel.org/linux-bluetooth/04cdba23-c8f7-496e-890d-9e1dd6694e06@web.de/) | Markus Elfring | Independent | 1 | Version 3 |
| [Bluetooth: L2CAP: fix chan mode for LE_CONN_REQ + EXT_FLOWCTL pchan](https://lore.kernel.org/linux-bluetooth/b30626af1ee0165d56dbfc15e5d16ae6efbd726b.1788109840.git.pav@iki.fi/) | Pauli Virtanen | Independent | 1 | Initial version |
| [Bluetooth: L2CAP: fix out-of-bounds write in l2cap_ecred_connect](https://lore.kernel.org/linux-bluetooth/2b863abeea0ada6e990b07a7f3182e261ecd8e09.1788091154.git.pav@iki.fi/) | Pauli Virtanen | Independent | 2 | Version 2 |
| [Bluetooth: L2CAP: fix wrong identifier in __set_ack_timer()](https://lore.kernel.org/linux-bluetooth/efd26a64addcb562db0745aa4e0a8d2252be1d65.1788016177.git.pav@iki.fi/) | Pauli Virtanen | Independent | 1 | Initial version |
| [Bluetooth: Move H:4 reassembly into the Bluetooth core](https://lore.kernel.org/linux-bluetooth/20260828201306.593974-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 2 | Version 2 |
| [Bluetooth: btintel_pcie: Clear automask on spurious interrupts](https://lore.kernel.org/linux-bluetooth/20260825172300.150440-1-kiran.k@intel.com/) | Kiran K | Intel | 1 | Version 2 |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Add ranging provider implementation](https://lore.kernel.org/linux-bluetooth/20260827052034.1374180-1-naga.akella@oss.qualcomm.com/) | Naga Bhavani Akella | Qualcomm | 7 | Version 3 |
| [Add support for the Synaptics BCM4384 Bluetooth controller](https://lore.kernel.org/linux-bluetooth/20260827110242.1203546-1-andy.chang@synaptics.corp-partner.google.com/) | Andy Chang | Independent | 2 | Initial version |
| [SECURITY: Add top-level security doc](https://lore.kernel.org/linux-bluetooth/20260826132610.1021538-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 2 | Version 2 |
| [input: avoid NSP1 disconnects caused by Sniff/Exit Sniff churn](https://lore.kernel.org/linux-bluetooth/20260826164106.293951-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 2 | Initial version |
| [test-runner: Add support for PCIe passthrough](https://lore.kernel.org/linux-bluetooth/20260827165326.350079-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 4 | Initial version |
| [SECURITY: Add top-level security doc](https://lore.kernel.org/linux-bluetooth/20260825085714.448937-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 2 | Initial version |
| [avrcp: Fix out-of-bounds parsing of ListPlayerAttributes response](https://lore.kernel.org/linux-bluetooth/20260828161702.519421-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 3 | Initial version |
| [emulator: bthost: add function for sending raw L2CAP sig commands](https://lore.kernel.org/linux-bluetooth/66d2971217dc632b10049fef7a5e9e735715bca2.1788119838.git.pav@iki.fi/) | Pauli Virtanen | Independent | 3 | Version 2 |
| [all: Fix typo in AVRCP_ATTRIBUTE_ILEGAL](https://lore.kernel.org/linux-bluetooth/20260827145742.1568129-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 1 | Initial version |
| [bap: Fix stack buffer overflow in BlueZ LE Audio BASE parser](https://lore.kernel.org/linux-bluetooth/20260827145807.1568199-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 1 | Initial version |
| [bass: Fix heap buffer overflow allocating subgroup_data array](https://lore.kernel.org/linux-bluetooth/20260827145652.1566826-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 1 | Initial version |
| [emulator: bthost: add function for sending raw L2CAP sig commands](https://lore.kernel.org/linux-bluetooth/66d2971217dc632b10049fef7a5e9e735715bca2.1788109841.git.pav@iki.fi/) | Pauli Virtanen | Independent | 2 | Initial version |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [Heap buffer overflow in adv_monitor.c via uint8_t truncation of pattern count](https://lore.kernel.org/linux-bluetooth/CAOZc4kvLV-FPcGX87FqjSKsXxa885Gk9MfD7NtapoaqhCB7uLA@mail.gmail.com/) | BUGPWN | 3 messages |
| [MT7925 (0e8d:0717): HFP microphone unusable — firmware delivers zero-filled (e)S...](https://lore.kernel.org/linux-bluetooth/CAPCBbk7t6OKtOGynNhf6oGnxGrSEqkh-SfweO_Yfms5NXDSCZQ@mail.gmail.com/) | Daniel Minchev | 2 messages |
| [Use-after-free in avdtp_connect_cb() (profiles/audio/avdtp.c) via unreferenced t...](https://lore.kernel.org/linux-bluetooth/CAOZc4ksrOkoK8u3Mm5C5bGH_xNL1tn15Pq68oCtijoFpxSGBFA@mail.gmail.com/) | BUGPWN | 2 messages |
| [[BUG] WARNING in lowpan_compress_addr_64](https://lore.kernel.org/linux-bluetooth/CA+0ovChS18paCd=ZE-7j_M-JtFF-N6+A75deKUqJ0Yy7ux=h2Q@mail.gmail.com/) | Farhad Alemi | 2 messages |
| [[BUG] general protection fault in __l2cap_chan_add](https://lore.kernel.org/linux-bluetooth/20260824153908.2327306-1-jjy600901@snu.ac.kr/) | Jaeyoung Chung | 2 messages |
| [[GIT PULL] bluetooth 2026-08-24](https://lore.kernel.org/linux-bluetooth/20260824180639.3570348-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 2 messages |
| [RTL8821C 0bda:c821: repeated controller failures with 4 persistent BLE connectio...](https://lore.kernel.org/linux-bluetooth/4_a5eV9Ms_joDG_tBnqf1zQ0bEV1lGmlPD51Icv3QcMVfTyqqDZgxiuaEzDCxf7sdYxD4sY8402l7bJBY8a7Lh-3AQcsFwtBaB51GQakTr4=@proton.me/) | Rrealcrash | 1 message |
| [[BUG] WARNING: ODEBUG bug in chan_close_cb](https://lore.kernel.org/linux-bluetooth/CA+0ovCgjFA-dX-jdTT22W0SM6UFiDb4L8GFn=Sq7Z=cAE_Xsog@mail.gmail.com/) | Farhad Alemi | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Bluetooth: Fix code style error](https://lore.kernel.org/linux-bluetooth/20260825122207.101868-1-deaner92@yahoo.com/) | v2->v3 |
| [Bluetooth: L2CAP: fix out-of-bounds write in l2cap_ecred_connect](https://lore.kernel.org/linux-bluetooth/2b863abeea0ada6e990b07a7f3182e261ecd8e09.1788091154.git.pav@iki.fi/) | v1->v2 |
| [Bluetooth: btintel_pcie: Clear automask on spurious interrupts](https://lore.kernel.org/linux-bluetooth/20260825172300.150440-1-kiran.k@intel.com/) | v1->v2 |
| [Bluetooth: do not leak an hci_conn when a second LE connect is rejecte](https://lore.kernel.org/linux-bluetooth/20260824110020.5423-1-radek@podgorny.cz/) | v1->v2 |
| [Bluetooth: hci_mrvl: Fix wrong return value check of wait_on_bit_timeo](https://lore.kernel.org/linux-bluetooth/20260825020145.2840983-1-13875017792@163.com/) | v1->v2 |
| [SECURITY: Add top-level security doc](https://lore.kernel.org/linux-bluetooth/20260826132610.1021538-1-hadess@hadess.net/) | v1->v2 |
| [emulator: bthost: add function for sending raw L2CAP sig commands](https://lore.kernel.org/linux-bluetooth/66d2971217dc632b10049fef7a5e9e735715bca2.1788119838.git.pav@iki.fi/) | v1->v2 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Pauli Virtanen | Independent | 38 |
| Luiz Augusto von Dentz | Intel | 25 |
| Bastien Nocera | Red Hat | 11 |
| Naga Bhavani Akella | Qualcomm | 8 |
| hadess | Red Hat | 6 |
| Chris Lu | MediaTek | 4 |
| Chandrashekar Devegowda | Intel | 4 |
| Gongwei Li | Independent | 3 |
| Radek Podgorny | Independent | 3 |
| Laxman Acharya Padhya | Independent | 3 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: do not leak an hci_conn when a second LE connect is rejecte](https://lore.kernel.org/linux-bluetooth/178759020578.3014491.9097993364125827682.git-patchwork-notify@kernel.org/)
- [Bluetooth: mt7925: trigger reset on WMT timeout](https://lore.kernel.org/linux-bluetooth/178759021014.3014491.17750649359199343822.git-patchwork-notify@kernel.org/)
- [Bluetooth: RFCOMM: serialize security confirmation handling](https://lore.kernel.org/linux-bluetooth/178759021163.3014491.6954824460297136867.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: limit RTL8761B BROKEN_EXT_SCAN quirk to 0bda:a728](https://lore.kernel.org/linux-bluetooth/178759020863.3014491.13354284194463299863.git-patchwork-notify@kernel.org/)
- [Bluetooth: RFCOMM: serialize session teardown](https://lore.kernel.org/linux-bluetooth/178759020713.3014491.3447283705707254634.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: Clear automask on spurious interrupts](https://lore.kernel.org/linux-bluetooth/178784940516.1742962.8755153331785550697.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [tools/iso-tester: fix GIOChannel refcounting](https://lore.kernel.org/linux-bluetooth/178758480996.2968570.1115538871246541426.git-patchwork-notify@kernel.org/)
- [Replace the name2utf8 copies with str2utf8](https://lore.kernel.org/linux-bluetooth/178758480814.2968570.14468593902711921.git-patchwork-notify@kernel.org/)
- [build: Ignore the test-sdp-xml binary](https://lore.kernel.org/linux-bluetooth/178760400589.3109701.17824373756875955356.git-patchwork-notify@kernel.org/)
- [player: Fix crash and related defects around the pending request](https://lore.kernel.org/linux-bluetooth/178760400713.3109701.10398466433951422779.git-patchwork-notify@kernel.org/)
- [gobex: Fix ABORT response being discarded](https://lore.kernel.org/linux-bluetooth/178785061088.1754949.3094431541422204268.git-patchwork-notify@kernel.org/)
- [bass: Fix heap buffer overflow allocating subgroup_data array](https://lore.kernel.org/linux-bluetooth/178785060938.1754949.8855555799316444746.git-patchwork-notify@kernel.org/)
- [all: Fix typo in AVRCP_ATTRIBUTE_ILEGAL](https://lore.kernel.org/linux-bluetooth/178785060788.1754949.15269152334555825176.git-patchwork-notify@kernel.org/)
- [bap: Fix stack buffer overflow in BlueZ LE Audio BASE parser](https://lore.kernel.org/linux-bluetooth/178785060639.1754949.17611133756001684186.git-patchwork-notify@kernel.org/)
- [ranging: mode validation and](https://lore.kernel.org/linux-bluetooth/178785120639.1759916.8569344253023499673.git-patchwork-notify@kernel.org/)
- [SECURITY: Add top-level security doc](https://lore.kernel.org/linux-bluetooth/178793040464.2650225.12054190440172218509.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- [build: Ignore the test-sdp-xml binary](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2Fdf8f08-9f5adb@github.com/)
- [eir: Fix stack buffer overflow when parsing the re...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2Fc73fa2-df8f08@github.com/)
- [SECURITY: Add top-level security doc](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1151364%2F000000-b41833@github.com/)
- [btio: add BT_IO_OPT_FORCE_ACTIVE support for L2CAP...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1152198%2F000000-e561a7@github.com/)
- [doc: Add org.bluez.Ranging1 documentation](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1152414%2F000000-2e92f8@github.com/)
- [bap: Fix stack buffer overflow in BlueZ LE Audio B...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1152690%2F000000-ce408c@github.com/)
- [bass: Fix heap buffer overflow allocating subgroup...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1152688%2F000000-e829f2@github.com/)
- [all: Fix typo in AVRCP_ATTRIBUTE_ILEGAL](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1152689%2F000000-fb092a@github.com/)
- [avrcp: Fix out-of-bounds parsing of ListPlayerAttr...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1153367%2F000000-772bf5@github.com/)
- [test-runner: Add support for PCIe passthrough](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1152755%2F000000-8160c9@github.com/)
- [client: Handle system bus setup failure](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1153435%2F000000-234e82@github.com/)
- [emulator: bthost: add function for sending raw L2C...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1153985%2F000000-19a870@github.com/)
- [emulator: bthost: don't crash on ecred_conn_req wi...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1153725%2F000000-80ad2f@github.com/)

---

## Company Focus Areas

### Independent Contributors

- [Bluetooth: L2CAP: fix and annotate l2cap_conn::chan_l locking](https://lore.kernel.org/linux-bluetooth/cover.1788013041.git.pav@iki.fi/)
- [Add support for the Synaptics BCM4384 Bluetooth controller](https://lore.kernel.org/linux-bluetooth/20260827110242.1203546-1-andy.chang@synaptics.corp-partner.google.com/)
- [Heap buffer overflow in adv_monitor.c via uint8_t truncation of pattern count](https://lore.kernel.org/linux-bluetooth/CAOZc4kvLV-FPcGX87FqjSKsXxa885Gk9MfD7NtapoaqhCB7uLA@mail.gmail.com/)
- [emulator: bthost: add function for sending raw L2CAP sig commands](https://lore.kernel.org/linux-bluetooth/66d2971217dc632b10049fef7a5e9e735715bca2.1788119838.git.pav@iki.fi/)

### Intel

- [Bluetooth: SCO: require CAP_NET_BIND_SERVICE to bind](https://lore.kernel.org/linux-bluetooth/20260827180149.415744-1-luiz.dentz@gmail.com/)
- [Bluetooth: btusb: limit RTL8761B BROKEN_EXT_SCAN quirk to 0bda:a728](https://lore.kernel.org/linux-bluetooth/20260824053227.317496-1-junjie.cao@intel.com/)
- [Bluetooth: btintel_pcie: remove duplicate BTINTEL_PCIE_MAGIC_NUM definition](https://lore.kernel.org/linux-bluetooth/20260828142725.241243-1-chandrashekar.devegowda@intel.com/)
- [test-runner: Add support for PCIe passthrough](https://lore.kernel.org/linux-bluetooth/20260827165326.350079-1-luiz.dentz@gmail.com/)

### Red Hat

- [SECURITY: Add top-level security doc](https://lore.kernel.org/linux-bluetooth/20260826132610.1021538-1-hadess@hadess.net/)
- [SECURITY: Add top-level security doc](https://lore.kernel.org/linux-bluetooth/20260825085714.448937-1-hadess@hadess.net/)
- [all: Fix typo in AVRCP_ATTRIBUTE_ILEGAL](https://lore.kernel.org/linux-bluetooth/20260827145742.1568129-1-hadess@hadess.net/)
- [bap: Fix stack buffer overflow in BlueZ LE Audio BASE parser](https://lore.kernel.org/linux-bluetooth/20260827145807.1568199-1-hadess@hadess.net/)

### MediaTek

- [Bluetooth: btmtksdio: Stop discarding the hardware device id](https://lore.kernel.org/linux-bluetooth/20260825033634.499118-1-chris.lu@mediatek.com/)
- [Bluetooth: btmtk: Route firmware debug event to the diag channel](https://lore.kernel.org/linux-bluetooth/20260826111617.1175698-1-chris.lu@mediatek.com/)

### Qualcomm

- [Add ranging provider implementation](https://lore.kernel.org/linux-bluetooth/20260827052034.1374180-1-naga.akella@oss.qualcomm.com/)
- [gobex: Fix ABORT response being discarded](https://lore.kernel.org/linux-bluetooth/20260827083651.1355587-1-jinwang.li@oss.qualcomm.com/)

### Collabora

- [input: avoid NSP1 disconnects caused by Sniff/Exit Sniff churn](https://lore.kernel.org/linux-bluetooth/20260826164106.293951-1-frederic.danis@collabora.com/)
