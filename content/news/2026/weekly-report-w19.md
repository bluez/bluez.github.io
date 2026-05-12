---
title: "linux-bluetooth Weekly Report - Week 19"
date: 2026-05-11
summary: "182 messages (130 human, 52 bot). SDP overflow fix pushed same day (Martin Brodeur). Meson build v10 16-patch series (Bastien Nocera). Multiple security fixes applied: accept_q serialize, HIDP UAF guard, ecred_reconfigure PDU fix. GIT PULL bluetooth 2026-05-06 merged. Short Connection Interval feature v1-v4 (Luiz). getsockopt_iter 7-patch conversion (Breno Leitao). PCI M.2 power seq v2 (Manivannan). 7.1-rc3 Bluetooth regression reported."
draft: false
---
**Total messages: 182 (130 human, 52 CI/bot)**

Note: Of the 182 messages, 130 are human-generated, 52 are CI/bot (bluez.test.bot 20, BluezTestBot 16, patchwork-bot+bluetooth 9, github-actions[bot] 3, prathibhamadugonde 1, Sasha Levin 1, kernel test robot 1, bugzilla-daemon 1).

---

## Summary

A productive week centered on security fixes, build system modernization, and kernel bluetooth hardening. Martin Brodeur rapidly iterated on the [SDP signed integer underflow fix](https://lore.kernel.org/linux-bluetooth/yOqVLTbtJxpC_gx7otX_BNS0iLh7JlU7MCD2nqptPKZfZv7gmto_BKGqaQDOrN3BX_p_QwxMEpyX6dhwiEFnCSl5U07KWDk81YvABZVf82M=@fluentlogic.org/) (v1-v3, all pushed same day) following last week's 8.1 HIGH security disclosure. Bastien Nocera was the most prolific contributor (23 messages) with the major [meson build system v10](https://lore.kernel.org/linux-bluetooth/20260505085741.2497401-1-hadess@hadess.net/) (16-patch series), [cleanup variable attribute helpers](https://lore.kernel.org/linux-bluetooth/20260511132131.1283892-1-hadess@hadess.net/) (v1-v3), and a [mpris-proxy crash fix](https://lore.kernel.org/linux-bluetooth/20260505104847.2550550-1-hadess@hadess.net/) (pushed). Manivannan Sadhasivam (18 messages) posted [PCI M.2 power sequencing v2](https://lore.kernel.org/linux-bluetooth/20260507-pwrseq-m2-bt-v2-1-1740bd478539@oss.qualcomm.com/) (9 patches) with active review from Bartosz Golaszewski. Luiz Augusto von Dentz (17 messages) posted the [Short Connection Interval feature](https://lore.kernel.org/linux-bluetooth/20260507174205.209488-1-luiz.dentz@gmail.com/) (v1-v4), fixed an [L2CAP ecred_conn_rsp crash](https://lore.kernel.org/linux-bluetooth/20260511162306.654747-1-luiz.dentz@gmail.com/), and pushed numerous patches to master. Breno Leitao contributed the [getsockopt_iter conversion series](https://lore.kernel.org/linux-bluetooth/20260511-getsock_three-v1-0-1461fa8786ab@debian.org/) (7 patches, converting remaining Bluetooth socket families). Jann Horn (Google) posted [accept_q serialize v4](https://lore.kernel.org/linux-bluetooth/CAG48ez0R5iGL6HkMS_Mp=5TuWQWKKinGZVv2PjtBVa3EcHkhYA@mail.gmail.com/) (applied to bluetooth-next), and Siwei Zhang iterated on the [L2CAP UAF in l2cap_sock_new_connection_cb](https://lore.kernel.org/linux-bluetooth/20260511170929.709823-1-oss@fourdim.xyz/) (v1-v4). The [GIT PULL bluetooth 2026-05-06](https://lore.kernel.org/linux-bluetooth/177810782080.3254192.15839017764164025740.git-patchwork-notify@kernel.org/) was merged, and a [Linux 7.1-rc3 Bluetooth regression](https://lore.kernel.org/linux-bluetooth/01ffb0cc-dcf6-4e60-adf3-fbb96e0666d0@leemhuis.info/) was reported.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [\[PATCH v4\] Bluetooth: serialize accept_q access](https://lore.kernel.org/linux-bluetooth/CAG48ez0R5iGL6HkMS_Mp=5TuWQWKKinGZVv2PjtBVa3EcHkhYA@mail.gmail.com/) | Jann Horn / Ren Wei | Google / Independent | 1 | v4 (May 6); applied to bluetooth-next; serializes accept_q access to fix UAF in bt_accept_poll |
| [\[PATCH v1-v4 0/1\] Bluetooth: L2CAP: Fix use-after-free in l2cap_sock_new_connection_cb()](https://lore.kernel.org/linux-bluetooth/20260511170929.709823-1-oss@fourdim.xyz/) | Siwei Zhang | Independent | 1 (4 revisions) | v1 (May 11) through v4 RESEND (May 11); L2CAP socket UAF fix; Luiz reviewed |
| [\[PATCH\] Bluetooth: L2CAP: ecred_reconfigure: send packed pdu, not stack pointer](https://lore.kernel.org/linux-bluetooth/20260511122641.437434-1-michael.bommarito@gmail.com/) | Michael Bommarito | Independent | 1 | May 11; applied to bluetooth-next; fixes sending stack pointer instead of packed PDU |
| [\[PATCH v1-v4 1/2\] Bluetooth: HCI: Add initial support for Short Connection Interval feature](https://lore.kernel.org/linux-bluetooth/20260507174205.209488-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 2 (4 revisions) | v1 (May 5) through v4 (May 7); new Short Connection Interval HCI support |
| [\[PATCH\] Bluetooth: L2CAP: avoid using hci_conn after dropping hold](https://lore.kernel.org/linux-bluetooth/20260506155313.1412894-1-zzzccc427@gmail.com/) | Cen Zhang | Independent | 1 | May 6; avoids hci_conn use-after-free in L2CAP |
| [\[PATCH net-next 0/7\] net: convert remaining bluetooth socket families to getsockopt_iter](https://lore.kernel.org/linux-bluetooth/20260511-getsock_three-v1-0-1461fa8786ab@debian.org/) | Breno Leitao | Meta/Debian | 7 | May 11; converts RFCOMM, BNEP, SCO, ISO, HCI to getsockopt_iter; reviewed by Jakub Kicinski |
| [\[PATCH v1\] Bluetooth: L2CAP: Fix possible crash on l2cap_ecred_conn_rsp](https://lore.kernel.org/linux-bluetooth/20260511162306.654747-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 1 | May 11; fixes crash in enhanced credit connection response |
| [\[PATCH v2 0/9\] Fixes/improvements for the PCI M.2 power sequencing driver](https://lore.kernel.org/linux-bluetooth/20260507-pwrseq-m2-bt-v2-1-1740bd478539@oss.qualcomm.com/) | Manivannan Sadhasivam | Qualcomm | 9 | v2 (May 7); PCI M.2 Bluetooth power sequencing improvements; reviewed by Bartosz Golaszewski, Daniel Golle |
| [\[PATCH v2 0/8\] Support for block device NVMEM providers](https://lore.kernel.org/linux-bluetooth/20260507-block-as-nvmem-v2-0-bf17edd5134e@oss.qualcomm.com/) | Loic Poulain | Qualcomm | 8 | v2 (May 7); cross-subsystem block NVMEM providers; reviewed by Bartosz Golaszewski, Daniel Golle, Manivannan Sadhasivam |
| [\[PATCH\] Bluetooth: btmtk: handle FUNC_CTRL events without status field](https://lore.kernel.org/linux-bluetooth/177834069495.1159760.2273651965423157568@gmail.com/) | Tristan Madani | Independent | 1 | May 9; applied to bluetooth-next; handles short WMT FUNC_CTRL events |
| [\[PATCH\] Bluetooth: btusb: Add new VID/PID 0x0489/0xe156 for MT7902](https://lore.kernel.org/linux-bluetooth/20260504190353.9358-1-sean.wang@kernel.org/) | Sean Wang | MediaTek | 1 | May 4; new MT7902 device ID |
| [\[RFC PATCH\] Bluetooth: fix Set Public Address on controller in HCI_AUTO_OFF grace period](https://lore.kernel.org/linux-bluetooth/76904540-af95-4f8e-897d-845112094512@gmail.com/) | Dan Klishch | Independent | 1 | May 4; continued from W18 |
| [\[PATCH v1\] bluetooth: btintel: Add Bluetooth SAR revision 2 support](https://lore.kernel.org/linux-bluetooth/PH0PR11MB758530CD768A17E2631BDD89F5312@PH0PR11MB7585.namprd11.prod.outlook.com/) | Kiran K | Intel | 1 | May 4; continued from W18 |
| [\[PATCH\] Bluetooth: HIDP: guard session->conn in hidp_connection_del](https://lore.kernel.org/linux-bluetooth/20260422011437.176643-1-michael.bommarito@gmail.com/) | Michael Bommarito | Independent | 1 | Applied to bluetooth-next (patchwork May 4); HIDP UAF guard |
| [\[PATCH\] Bluetooth: hci_bcm4377: Use named initializers for pci_device_id array](https://lore.kernel.org/linux-bluetooth/20260504160940.2168650-2-u.kleine-koenig@baylibre.com/) | Uwe Kleine-König | BayLibre | 1 | May 4; cleanup patch |
| [\[PATCH\] Bluetooth: ath3k: add missing blank line after declarations](https://lore.kernel.org/linux-bluetooth/20260504165956.35199-1-lucasp.linux@gmail.com/) | Lucas Poupeau | Independent | 1 | May 4; style cleanup |
| [\[PATCH v5\] Bluetooth: l2cap: defer conn param update](https://lore.kernel.org/linux-bluetooth/CABBYNZLzWSBE5RSgL0RWvYjA6oX2Pnp7H4A4x3g5gRDX8KwHSA@mail.gmail.com/) | — | — | 1 | Continued discussion (May 5); Luiz reviewed |
| [\[PATCH v3\] Bluetooth: 6lowpan: Fix peer and channel lifetime during teardown](https://lore.kernel.org/linux-bluetooth/20260511172310.3723421-1-rollkingzzc@gmail.com/) | Zhang Cen | Independent | 1 (3 revisions) | May 11; v1-v3 same day; 6lowpan peer cleanup race fix |
| [\[PATCH\] Bluetooth: RFCOMM: hold listener socket in rfcomm_connect_ind()](https://lore.kernel.org/linux-bluetooth/20260509173727.412674-1-rollkingzzc@gmail.com/) | Zhang Cen | Independent | 1 | May 9; RFCOMM listener socket hold fix |
| [\[PATCH\] Bluetooth: mgmt: validate advertising TLV envelopes before parsing](https://lore.kernel.org/linux-bluetooth/20260509173708.411850-1-rollkingzzc@gmail.com/) | Zhang Cen | Independent | 1 | May 9; advertising TLV validation |
| [\[PATCH\] Bluetooth: virtio_bt: fix potential memory leak in virtbt_probe()](https://lore.kernel.org/linux-bluetooth/20260508084158.68765-1-nihaal@cse.iitm.ac.in/) | Nihaal | IIT Madras | 1 | May 8; virtio_bt memory leak fix |
| [\[PATCH\] Bluetooth: btintel_pcie: fix stale cache in set_dxstate fallback check](https://lore.kernel.org/linux-bluetooth/20260507203426.128975-1-vladimirkondratyev2@gmail.com/) | Vladimir Kondratyev | Independent | 1 | May 7; btintel_pcie stale cache fix |
| [\[PATCH\] Bluetooth: hci_uart: serialize close flush with write_work](https://lore.kernel.org/linux-bluetooth/20260509083124.291207-1-wuyankun@uniontech.com/) | Wuyankun | UnionTech | 1 | May 9; hci_uart race fix |
| [\[PATCH 1/4\] Bluetooth: hci_sync: pin conn across hci_le_create_conn_sync](https://lore.kernel.org/linux-bluetooth/CABBYNZ+nyk+hZ498373bLJ0dOkDbNqP0PyoH5MWsPerHhBSfLA@mail.gmail.com/) | — | — | 4 | May 11; pins connection across LE connection sync |
| [\[PATCH\] Bluetooth: btmtk: set HCI_QUIRK_BROKEN_ENHANCED_SETUP_SYNC_CONN for MT6639](https://lore.kernel.org/linux-bluetooth/20260511104607.382060-1-silviu.sandulache@gmail.com/) | Silviu Sandulache | Independent | 1 | May 11; MT6639 quirk |
| [\[PATCH v6\] Bluetooth: hci_qca: Convert timeout from jiffies to ms](https://lore.kernel.org/linux-bluetooth/177852780480.2428736.14134229951295592073.git-patchwork-notify@kernel.org/) | — | — | 1 | Applied to bluetooth-next; continued from W14-W18 |
| [\[PATCH v1 0/6\] sdio: About pointers in sdio_device_id::driver_data](https://lore.kernel.org/linux-bluetooth/cover.1776429984.git.u.kleine-koenig@baylibre.com/) | Uwe Kleine-König | BayLibre | 6 | May 11; sdio driver_data pointer cleanup |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [\[BlueZ v10 00/16\] Add meson build system and HTML docs](https://lore.kernel.org/linux-bluetooth/20260505085741.2497401-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 16 | v10 (May 5); major meson build system addition with HTML documentation generation |
| [\[BlueZ v1-v3 0/5\] Add helper for "cleanup" variable attribute](https://lore.kernel.org/linux-bluetooth/20260511132131.1283892-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 5 (3 revisions) | v1 (May 6) through v3 (May 11); GCC/Clang cleanup attribute helpers |
| [\[PATCH BlueZ v1-v3\] sdp: fix overflow in sdp_extract_seqtype()](https://lore.kernel.org/linux-bluetooth/yOqVLTbtJxpC_gx7otX_BNS0iLh7JlU7MCD2nqptPKZfZv7gmto_BKGqaQDOrN3BX_p_QwxMEpyX6dhwiEFnCSl5U07KWDk81YvABZVf82M=@fluentlogic.org/) | Martin Brodeur | Fluent Logic | 1 (3 revisions) | v1-v3 all May 4; pushed same day; fixes 8.1 HIGH SDP signed integer underflow |
| [\[BlueZ v2 1/2\] mpris-proxy: Fix possible crash](https://lore.kernel.org/linux-bluetooth/20260505104847.2550550-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 2 | v2 (May 5); pushed to master |
| [\[PATCH BlueZ v1 1/3\] tools/tester: Fix crash when hciemu_new fails](https://lore.kernel.org/linux-bluetooth/20260506194150.1701855-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 3 | May 6; pushed to master; fixes tester crash on hciemu initialization failure |
| [\[PATCH BlueZ\] bap: Fix typo in QoS D-Bus dictionary entry names](https://lore.kernel.org/linux-bluetooth/20260506230051.27436-1-thomaskirschner85@yahoo.de/) | Thomas Kirschner | Independent | 1 | May 6; pushed to master |
| [\[PATCH BlueZ\] client/btpclient: Add BTP_EV_GAP_SEC_LEVEL_CHANGED support](https://lore.kernel.org/linux-bluetooth/CABBYNZKVPuthzegSwFUDGrBaFP8FnGjmz-Z__5G3Pb1qXpwf8g@mail.gmail.com/) | Luiz Augusto von Dentz | Intel | 1 | May 7; pushed to master; btpclient security level event support |
| [\[PATCH BlueZ v1-v3\] monitor: Add parsing of CS step mode data in RAS Notifications](https://lore.kernel.org/linux-bluetooth/20260507171342.2971553-1-prathm@qti.qualcomm.com/) | Prathibha Madugonde | Qualcomm | 1 (3 revisions) | v1-v3 (May 7-8); pushed to master |
| [\[RFC PATCH BlueZ\] monitor: Fix RAS CS step mode parsing issues](https://lore.kernel.org/linux-bluetooth/20260508191728.428868-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 1 | May 8; pushed to master; fixes issues in RAS CS step mode parsing |
| [\[PATCH BlueZ 0/1\] bap: Handle CIS loss during streaming](https://lore.kernel.org/linux-bluetooth/20260511105845.8008-1-raghavendra.rao@collabora.com/) | raghu447 | Collabora | 1 | May 11; handles CIS disconnection while in streaming state |
| [\[BlueZ 1/3\] mesh: Remove unused but set variable](https://lore.kernel.org/linux-bluetooth/20260511113511.1217887-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 3 | May 11; cleanup patches |
| [\[PATCH BlueZ\] adapter: add BCAA UUID also when seen device is not discoverable](https://lore.kernel.org/linux-bluetooth/a03d5b481c87d86d2bd2bdb376729ea6c4f992a9.1778535912.git.pav@iki.fi/) | Pav | Independent | 1 | May 11; pushed to master |
| [Patch: support libical 4.0](https://lore.kernel.org/linux-bluetooth/99b4c20de30a2991509b78db7751bd78044ad83d.camel@hadess.net/) | Bastien Nocera | Red Hat | 1 | May 11; libical 4.0 API compatibility |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [\[SECURITY\] BlueZ sdp.c signed integer underflow (8.1 HIGH)](https://lore.kernel.org/linux-bluetooth/CABBYNZ+b1s95Y_VRE7fq27L74X_QnuJhPezrjM3DFQLO5=w=hQ@mail.gmail.com/) | Martin Brodeur | May 4; continued from W18 disclosure; rapid fix iteration (v1-v3) and push same day |
| [Bluetooth: RFCOMM: missing sock_hold() in rfcomm_get_sock_by_channel()](https://lore.kernel.org/linux-bluetooth/b02f7394c751e4313442cd156e00c38a.y2k@desarrollaria.com/) | y2k | May 8; RFCOMM socket reference counting bug report |
| [Bluetooth: L2CAP: missing NULL guard in remaining l2cap_chan_ops callbacks](https://lore.kernel.org/linux-bluetooth/8e1c30806d274ac3cfebce2816057875.y2k@desarrollaria.com/) | y2k | May 8; L2CAP channel ops NULL guard analysis |
| [Bug 221449](https://bugzilla.kernel.org/show_bug.cgi?id=221449) Wireless gamepad stopped working through Bluetooth | bugzilla-daemon | New (May 6); gamepad regression |
| [Bug 221481](https://bugzilla.kernel.org/show_bug.cgi?id=221481) btintel_pcie: suspend fails with -EBUSY on Intel Lunar Lake (s2idle) | bugzilla-daemon | New (May 7); Intel Lunar Lake btintel_pcie suspend regression |
| [Linux 7.1-rc3 regression (Bluetooth)](https://lore.kernel.org/linux-bluetooth/01ffb0cc-dcf6-4e60-adf3-fbb96e0666d0@leemhuis.info/) | Thorsten Leemhuis | May 11; 7.1-rc3 Bluetooth regression report |
| [\[syzbot\] WARNING in l2cap_send_conn_req](https://lore.kernel.org/linux-bluetooth/69fb01c9.170a0220.59368.0022.GAE@google.com/) | syzbot | May 6; L2CAP connection request warning |
| [bluetooth hci0: Direct firmware load for rtl_bt/rtl8761a_config.bin failed](https://lore.kernel.org/linux-bluetooth/20260505072538.9503-1-zenmchen@gmail.com/) | Zenm Chen | May 5; Realtek firmware loading failure |
| [\[PATCH BlueZ 0/1\] btmon/TDS: decode org 0x02 as Wi-Fi Alliance](https://lore.kernel.org/linux-bluetooth/0e4229cd-5f8e-4096-80b1-f71b64507346@molgen.mpg.de/) | Paul Menzel | MPG; May 9; review of btmon Wi-Fi Alliance decoding |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Bastien Nocera | Red Hat | 23 |
| Manivannan Sadhasivam | Qualcomm | 18 |
| Luiz Augusto von Dentz | Intel | 17 |
| Martin Brodeur | Fluent Logic | 11 |
| Breno Leitao | Meta/Debian | 10 |
| Loic Poulain | Qualcomm | 8 |
| Siwei Zhang | Independent | 6 |
| Bartosz Golaszewski | Linaro | 4 |
| Zhang Cen | Independent | 4 |
| Sean Wang | MediaTek | 2 |
| raghu447 (Raghavendra Rao) | Collabora | 2 |
| Mikhail Gavrilov | Independent | 2 |
| Daniel Golle | Independent | 2 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [GIT PULL bluetooth 2026-05-06](https://lore.kernel.org/linux-bluetooth/177810782080.3254192.15839017764164025740.git-patchwork-notify@kernel.org/) — bluetooth pull request merged
- [PATCH bluetooth-next v2: remove all PCMCIA drivers](https://lore.kernel.org/linux-bluetooth/177791460656.801187.2564297588269230821.git-patchwork-notify@kernel.org/) — applied (May 4)
- [Bluetooth: btrtl: fix RTL8761B/BU broken LE extended scan](https://lore.kernel.org/linux-bluetooth/177791460780.801187.11382504961071070541.git-patchwork-notify@kernel.org/) — Alexej Sidorenko, applied (May 4)
- [Bluetooth: hci_event: fix memset typo](https://lore.kernel.org/linux-bluetooth/177791461054.801187.15935896147672715874.git-patchwork-notify@kernel.org/) — Jann Horn, applied (May 4)
- [Bluetooth: HIDP: guard session->conn in hidp_connection_del](https://lore.kernel.org/linux-bluetooth/20260422011437.176643-1-michael.bommarito@gmail.com/) — Michael Bommarito, applied (May 4)
- [Bluetooth: serialize accept_q access](https://lore.kernel.org/linux-bluetooth/177826680530.808173.13571641785763854234.git-patchwork-notify@kernel.org/) — Ren Wei/Jann Horn, applied (May 8)
- [Bluetooth: btmtk: accept too short WMT FUNC_CTRL events](https://lore.kernel.org/linux-bluetooth/177850980405.2266296.3114753928820395948.git-patchwork-notify@kernel.org/) — Tristan Madani, applied (May 11)
- [Bluetooth: L2CAP: ecred_reconfigure: send packed pdu, not stack pointer](https://lore.kernel.org/linux-bluetooth/177851700405.2324731.8694479011940333354.git-patchwork-notify@kernel.org/) — Michael Bommarito, applied (May 11)
- [Bluetooth: hci_qca: Convert timeout from jiffies to ms](https://lore.kernel.org/linux-bluetooth/177852780480.2428736.14134229951295592073.git-patchwork-notify@kernel.org/) — v6, applied (May 11)

### Pushed to bluez/bluez master

- db9aa4..dd093e: [sdp: fix overflow in sdp_extract_seqtype()](https://lore.kernel.org/linux-bluetooth/yOqVLTbtJxpC_gx7otX_BNS0iLh7JlU7MCD2nqptPKZfZv7gmto_BKGqaQDOrN3BX_p_QwxMEpyX6dhwiEFnCSl5U07KWDk81YvABZVf82M=@fluentlogic.org/) (Martin Brodeur, v1-v3, May 4)
- d11e06: [sdp: fix overflow in sdp_extract_seqtype() v3](https://lore.kernel.org/linux-bluetooth/6vsGD_2xyWDIrUZkN1idLdLKf9ChYJJOMyOm2FglmFna_5KyDCgLG6PIsHrMSN5YJv0hAN0APdkK0kZq_5k_qKP_wqILFVxMpmkhb58GyVU=@fluentlogic.org/) (Martin Brodeur, May 4)
- a253b2: [monitor: Add features bits defined in 6.2](https://lore.kernel.org/linux-bluetooth/20260505201548.1328953-1-luiz.dentz@gmail.com/) (Luiz, May 4)
- c769d9..897689: [mpris-proxy: Fix possible crash](https://lore.kernel.org/linux-bluetooth/20260505104847.2550550-1-hadess@hadess.net/) (Bastien Nocera, May 5)
- fae0c7: [hciemu: Fix crash if hciemu_client_new return NULL](https://lore.kernel.org/linux-bluetooth/20260505201548.1328953-1-luiz.dentz@gmail.com/) (Luiz, May 5)
- 7828f7: emulator/vhci: Add debug messages to error paths (Luiz, May 5)
- 7ffffa..eff7db: [all: Remove more unneeded MIN/MAX macro definitions](https://lore.kernel.org/linux-bluetooth/20260506091824.2920716-1-hadess@hadess.net/) (Bastien, May 6)
- ccc22a: [shared/hci: Add BPF filter for registered events](https://lore.kernel.org/linux-bluetooth/177807421279.2587487.345427828196481374.git-patchwork-notify@kernel.org/) (applied from W18, pushed May 6)
- acd0a4: [tools/tester: Fix crash when hciemu_new fails](https://lore.kernel.org/linux-bluetooth/20260506194150.1701855-1-luiz.dentz@gmail.com/) (Luiz, May 7)
- 2fb1b7: [client/btpclient: Add BTP_EV_GAP_SEC_LEVEL_CHANGED](https://lore.kernel.org/linux-bluetooth/CABBYNZKVPuthzegSwFUDGrBaFP8FnGjmz-Z__5G3Pb1qXpwf8g@mail.gmail.com/) (Luiz, May 7)
- d45fd4: [bap: Fix typo in QoS D-Bus dictionary entry names](https://lore.kernel.org/linux-bluetooth/20260506230051.27436-1-thomaskirschner85@yahoo.de/) (Thomas Kirschner, May 7)
- 27e1da..27dcd3: [monitor: Add parsing of CS step mode data in RAS Notifications](https://lore.kernel.org/linux-bluetooth/20260507171342.2971553-1-prathm@qti.qualcomm.com/) (Prathibha Madugonde, May 7)
- 7cd27f..b1528e: [monitor: Parsing of CS step mode data in RAS Notifications](https://lore.kernel.org/linux-bluetooth/20260508191728.428868-1-luiz.dentz@gmail.com/) (Prathibha/Luiz, May 8)
- b58ccc: [monitor: Fix RAS CS step mode parsing issues](https://lore.kernel.org/linux-bluetooth/20260508191728.428868-1-luiz.dentz@gmail.com/) (Luiz, May 8)
- 078adb: [btmon: decode 0x02 as Wi-Fi Alliance](https://lore.kernel.org/linux-bluetooth/0e4229cd-5f8e-4096-80b1-f71b64507346@molgen.mpg.de/) (Preston Hunt, May 9)
- 4246ca: [bap: set QOS state when CIS is lost while streaming](https://lore.kernel.org/linux-bluetooth/20260511105845.8008-1-raghavendra.rao@collabora.com/) (raghu447, May 11)
- 9c42e0: [mesh: Remove unused but set variable](https://lore.kernel.org/linux-bluetooth/20260511113511.1217887-1-hadess@hadess.net/) (Bastien, May 11)
- 61f18b..af87aa: [all: Remove more unneeded MIN/MAX macro definitions](https://lore.kernel.org/linux-bluetooth/20260511113511.1217887-1-hadess@hadess.net/) (Bastien, May 11)
- 2c6d6b: [adapter: add BCAA UUID also when seen device is not discoverable](https://lore.kernel.org/linux-bluetooth/a03d5b481c87d86d2bd2bdb376729ea6c4f992a9.1778535912.git.pav@iki.fi/) (Pav, May 11)

---

## Company Focus Areas

### Intel
Luiz Augusto von Dentz contributed 17 messages: posted the [Short Connection Interval feature](https://lore.kernel.org/linux-bluetooth/20260507174205.209488-1-luiz.dentz@gmail.com/) (v1-v4, 2-patch series adding new HCI feature support), fixed a [crash in l2cap_ecred_conn_rsp](https://lore.kernel.org/linux-bluetooth/20260511162306.654747-1-luiz.dentz@gmail.com/), fixed [RAS CS step mode parsing](https://lore.kernel.org/linux-bluetooth/20260508191728.428868-1-luiz.dentz@gmail.com/), pushed [hciemu crash fix](https://lore.kernel.org/linux-bluetooth/20260505201548.1328953-1-luiz.dentz@gmail.com/), [tools/tester crash fix](https://lore.kernel.org/linux-bluetooth/20260506194150.1701855-1-luiz.dentz@gmail.com/), [btpclient SEC_LEVEL support](https://lore.kernel.org/linux-bluetooth/CABBYNZKVPuthzegSwFUDGrBaFP8FnGjmz-Z__5G3Pb1qXpwf8g@mail.gmail.com/), and [monitor features 6.2](https://lore.kernel.org/linux-bluetooth/20260505201548.1328953-1-luiz.dentz@gmail.com/). Reviewed multiple patches including the L2CAP UAF fix series. Kiran K continued [btintel SAR revision 2](https://lore.kernel.org/linux-bluetooth/PH0PR11MB758530CD768A17E2631BDD89F5312@PH0PR11MB7585.namprd11.prod.outlook.com/).

### Red Hat
Bastien Nocera was the most prolific contributor (23 messages): posted the [meson build system v10](https://lore.kernel.org/linux-bluetooth/20260505085741.2497401-1-hadess@hadess.net/) (16-patch series — the single largest patch series this week), [cleanup variable attribute helpers](https://lore.kernel.org/linux-bluetooth/20260511132131.1283892-1-hadess@hadess.net/) (v1-v3, 5 patches), [mpris-proxy crash fix v2](https://lore.kernel.org/linux-bluetooth/20260505104847.2550550-1-hadess@hadess.net/) (pushed), [mesh unused variable cleanup](https://lore.kernel.org/linux-bluetooth/20260511113511.1217887-1-hadess@hadess.net/) (pushed), MIN/MAX macro removal (pushed), and [libical 4.0 support](https://lore.kernel.org/linux-bluetooth/99b4c20de30a2991509b78db7751bd78044ad83d.camel@hadess.net/).

### Qualcomm
Manivannan Sadhasivam contributed 18 messages with the [PCI M.2 power sequencing v2](https://lore.kernel.org/linux-bluetooth/20260507-pwrseq-m2-bt-v2-1-1740bd478539@oss.qualcomm.com/) (9 patches, actively reviewed by Bartosz Golaszewski and Daniel Golle). Loic Poulain contributed 8 messages with [block device NVMEM providers v2](https://lore.kernel.org/linux-bluetooth/20260507-block-as-nvmem-v2-0-bf17edd5134e@oss.qualcomm.com/) (8 patches, cross-subsystem). Prathibha Madugonde posted [RAS CS step mode parsing](https://lore.kernel.org/linux-bluetooth/20260507171342.2971553-1-prathm@qti.qualcomm.com/) (v1-v3, pushed). Wei Deng contributed 1 review message.

### Fluent Logic
Martin Brodeur contributed 11 messages: rapidly iterated on the [SDP overflow fix](https://lore.kernel.org/linux-bluetooth/yOqVLTbtJxpC_gx7otX_BNS0iLh7JlU7MCD2nqptPKZfZv7gmto_BKGqaQDOrN3BX_p_QwxMEpyX6dhwiEFnCSl5U07KWDk81YvABZVf82M=@fluentlogic.org/) (v1-v3, all pushed same day) addressing the 8.1 HIGH SDP signed integer underflow vulnerability disclosed in W18.

### Meta/Debian
Breno Leitao contributed 10 messages with the [getsockopt_iter conversion series](https://lore.kernel.org/linux-bluetooth/20260511-getsock_three-v1-0-1461fa8786ab@debian.org/) (7 patches converting RFCOMM, BNEP, SCO, ISO, HCI to the new getsockopt_iter API). Reviewed by Jakub Kicinski.

### Collabora
raghu447 (Raghavendra Rao) contributed 2 messages with [bap: Handle CIS loss during streaming](https://lore.kernel.org/linux-bluetooth/20260511105845.8008-1-raghavendra.rao@collabora.com/) (pushed to master). Frédéric Danis contributed 1 message.

### Linaro
Bartosz Golaszewski contributed 4 review messages on the [PCI M.2 power sequencing](https://lore.kernel.org/linux-bluetooth/20260507-pwrseq-m2-bt-v2-1-1740bd478539@oss.qualcomm.com/) and [block NVMEM](https://lore.kernel.org/linux-bluetooth/20260507-block-as-nvmem-v2-0-bf17edd5134e@oss.qualcomm.com/) series.

### MediaTek
Sean Wang posted the [MT7902 VID/PID addition](https://lore.kernel.org/linux-bluetooth/20260504190353.9358-1-sean.wang@kernel.org/) (2 messages).

### Google
Jann Horn posted [accept_q serialize v4](https://lore.kernel.org/linux-bluetooth/CAG48ez0R5iGL6HkMS_Mp=5TuWQWKKinGZVv2PjtBVa3EcHkhYA@mail.gmail.com/) (applied to bluetooth-next, 1 message).

### BayLibre
Uwe Kleine-König contributed 1 message: [hci_bcm4377 named initializers](https://lore.kernel.org/linux-bluetooth/20260504160940.2168650-2-u.kleine-koenig@baylibre.com/) and [sdio driver_data pointer cleanup](https://lore.kernel.org/linux-bluetooth/cover.1776429984.git.u.kleine-koenig@baylibre.com/).

### Independent Contributors
Siwei Zhang iterated on the [L2CAP UAF in l2cap_sock_new_connection_cb](https://lore.kernel.org/linux-bluetooth/20260511170929.709823-1-oss@fourdim.xyz/) (v1-v4, 6 messages). Michael Bommarito had two patches applied: [HIDP session->conn guard](https://lore.kernel.org/linux-bluetooth/20260422011437.176643-1-michael.bommarito@gmail.com/) and [ecred_reconfigure PDU fix](https://lore.kernel.org/linux-bluetooth/20260511122641.437434-1-michael.bommarito@gmail.com/). Zhang Cen posted 4 messages: [6lowpan peer lifetime fix](https://lore.kernel.org/linux-bluetooth/20260511172310.3723421-1-rollkingzzc@gmail.com/) (v1-v3), [RFCOMM listener hold](https://lore.kernel.org/linux-bluetooth/20260509173727.412674-1-rollkingzzc@gmail.com/), and [mgmt TLV validation](https://lore.kernel.org/linux-bluetooth/20260509173708.411850-1-rollkingzzc@gmail.com/). y2k (desarrollaria.com) reported [RFCOMM sock_hold](https://lore.kernel.org/linux-bluetooth/b02f7394c751e4313442cd156e00c38a.y2k@desarrollaria.com/) and [L2CAP NULL guard](https://lore.kernel.org/linux-bluetooth/8e1c30806d274ac3cfebce2816057875.y2k@desarrollaria.com/) issues. Dan Klishch continued [Set Public Address RFC](https://lore.kernel.org/linux-bluetooth/76904540-af95-4f8e-897d-845112094512@gmail.com/). Other contributors: Tristan Madani (btmtk FUNC_CTRL, applied), Thomas Kirschner (bap typo, pushed), Ren Wei (accept_q, applied), Lucas Poupeau (ath3k cleanup), Vladimir Kondratyev (btintel_pcie fix), Conor Kotwasinski (sysfs), Pav (adapter BCAA UUID, pushed), Preston Hunt (btmon Wi-Fi Alliance, pushed).

---

## Notable Trends

1. **Rapid SDP vulnerability response**: Martin Brodeur's [SDP overflow fix](https://lore.kernel.org/linux-bluetooth/yOqVLTbtJxpC_gx7otX_BNS0iLh7JlU7MCD2nqptPKZfZv7gmto_BKGqaQDOrN3BX_p_QwxMEpyX6dhwiEFnCSl5U07KWDk81YvABZVf82M=@fluentlogic.org/) went from v1 to v3 and was pushed to master within a single day (May 4), demonstrating fast turnaround on the 8.1 HIGH severity vulnerability disclosed in W18.

2. **Meson build system reaches v10**: Bastien Nocera's [16-patch meson build series](https://lore.kernel.org/linux-bluetooth/20260505085741.2497401-1-hadess@hadess.net/) continues to mature, representing the largest single patch series this week and a significant infrastructure modernization effort for BlueZ.

3. **Intensive security hardening across L2CAP/socket layer**: Multiple independent security fixes landed this week: [accept_q serialization](https://lore.kernel.org/linux-bluetooth/CAG48ez0R5iGL6HkMS_Mp=5TuWQWKKinGZVv2PjtBVa3EcHkhYA@mail.gmail.com/) (Jann Horn, applied), [HIDP UAF guard](https://lore.kernel.org/linux-bluetooth/20260422011437.176643-1-michael.bommarito@gmail.com/) (applied), [ecred_reconfigure PDU fix](https://lore.kernel.org/linux-bluetooth/20260511122641.437434-1-michael.bommarito@gmail.com/) (applied), and ongoing [L2CAP UAF](https://lore.kernel.org/linux-bluetooth/20260511170929.709823-1-oss@fourdim.xyz/) iteration (Siwei Zhang, v1-v4). The Bluetooth socket layer is receiving significant security scrutiny.

4. **getsockopt_iter API modernization**: Breno Leitao's [7-patch series](https://lore.kernel.org/linux-bluetooth/20260511-getsock_three-v1-0-1461fa8786ab@debian.org/) converts remaining Bluetooth socket families (RFCOMM, BNEP, SCO, ISO, HCI) to the modern getsockopt_iter API, continuing the net-next socket API unification effort.

5. **PCI M.2 power sequencing evolving**: Manivannan Sadhasivam's [v2 series](https://lore.kernel.org/linux-bluetooth/20260507-pwrseq-m2-bt-v2-1-1740bd478539@oss.qualcomm.com/) (9 patches) received active cross-company review from Bartosz Golaszewski (Linaro) and Daniel Golle, reflecting broad industry interest in standardized M.2 Bluetooth power management.

6. **btintel_pcie issues continue**: A new [Bug 221481](https://bugzilla.kernel.org/show_bug.cgi?id=221481) reports btintel_pcie suspend failing with -EBUSY on Intel Lunar Lake, adding to the growing list of btintel_pcie issues. Vladimir Kondratyev posted a [stale cache fix](https://lore.kernel.org/linux-bluetooth/20260507203426.128975-1-vladimirkondratyev2@gmail.com/).

7. **7.1-rc3 Bluetooth regression reported**: A [regression report](https://lore.kernel.org/linux-bluetooth/01ffb0cc-dcf6-4e60-adf3-fbb96e0666d0@leemhuis.info/) from Thorsten Leemhuis flags Bluetooth issues in the 7.1-rc3 kernel release cycle.
