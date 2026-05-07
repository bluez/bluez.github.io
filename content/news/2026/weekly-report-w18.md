---
title: "Weekly Report: linux-bluetooth Mailing List - April 27 - May 3, 2026 (W18)"
date: 2026-05-03
summary: "A security-focused week with two independent vulnerability disclosures: a  use-after-free in l2cap_sock_alloc_skb_cb reported by Safa Karakuş, and an  SDP OOB heap read via signed/unsigned confusion (CVSS 8.1H, no pairing required)."
draft: false
---

## April 27 - May 3, 2026 (Week 18)

**Total messages: 188 (99 human, 89 CI/bot)**

Note: Of the 188 messages, 99 are human-generated, 89 are CI/bot (BluezTestBot 37, bluez.test.bot 25, patchwork-bot+bluetooth 12, bugzilla-daemon 11, syzbot 2, patchwork-bot+netdevbpf 1, kernel test robot 1).

---

## Summary

A security-focused week with two independent vulnerability disclosures: a [use-after-free in l2cap_sock_alloc_skb_cb](https://lore.kernel.org/linux-bluetooth/69eedfe5.050a0220.101ddb.0571@mx.google.com/) reported by Safa Karakuş, and an [SDP OOB heap read via signed/unsigned confusion](https://lore.kernel.org/linux-bluetooth/1CgzIVM-hFrHkvg_LOpx2mOjsirOpT0E2HBGPNmSW7ZfluNKQ0ES74B8GlpwWhq4ZtZCyEg4pqjlphoUk38a-0OP-xK3lEhaF5i_07XzMDw=@fluentlogic.org/) (CVSS 8.1H, no pairing required). Jann Horn (Google) reported a [potential ISO socket leak](https://lore.kernel.org/linux-bluetooth/CAG48ez2=SSQfGUXTPs9jQw_2Tw0JdzRHcLDdCgC7wTGkK0GOTA@mail.gmail.com/) due to SOCK_DEAD confusion. Prathibha Madugonde (Qualcomm) was the most prolific contributor (20 messages) with rapid RAS v3-v7 iteration, while Luiz Augusto von Dentz (13 messages) posted the [RFC BPF filter for shared/hci](https://lore.kernel.org/linux-bluetooth/20260430155038.426968-1-luiz.dentz@gmail.com/) (3 patches, applied to master), reviewed and merged numerous patches, and drove the [l2cap UAF fix discussion](https://lore.kernel.org/linux-bluetooth/CABBYNZL4P1HkA_FMFkBu0Ou-qi1a6Atv3ae-U32r2U1JgkOe1A@mail.gmail.com/). Loic Poulain (Qualcomm) posted the [block device NVMEM providers series](https://lore.kernel.org/linux-bluetooth/b4de6c89-dd89-4e02-8d79-911e4f9f0813@lunn.ch/) (9 patches, cross-subsystem). Frédéric Danis (Collabora, 8 messages) posted the [desynchronized transports series](https://lore.kernel.org/linux-bluetooth/20260427172056.148115-1-frederic.danis@collabora.com/) (v1/v2) for PTS testing, and raghu447 (Collabora, 9 messages) contributed [public-broadcast advertise helper](https://lore.kernel.org/linux-bluetooth/20260428144008.7487-1-raghavendra.rao@collabora.com/) v2 patches. Kiran K posted [btintel SAR revision 2 support](https://lore.kernel.org/linux-bluetooth/4c66feb9-e596-4ba2-98d3-b2365484fe2f@molgen.mpg.de/). The [GIT PULL bluetooth-next 2026-04-13](https://lore.kernel.org/linux-bluetooth/177757174279.3109994.7737953345656205435.git-patchwork-notify@kernel.org/) received its final patchwork status update, and the [ISDN/CMTP removal](https://lore.kernel.org/linux-bluetooth/20260422105516.GN651125@horms.kernel.org/) was officially applied via patchwork-bot+netdevbpf. The syzbot [monthly bluetooth report](https://lore.kernel.org/linux-bluetooth/69f5eee0.050a0220.3cbe47.0018.GAE@google.com/) for May 2026 was published.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [\[PATCH\] Bluetooth: l2cap: fix UAF race in l2cap_sock_cleanup_listen](https://lore.kernel.org/linux-bluetooth/CABBYNZL4P1HkA_FMFkBu0Ou-qi1a6Atv3ae-U32r2U1JgkOe1A@mail.gmail.com/) | Safa Karakuş | Independent | 1 | Apr 29-30; L2CAP socket cleanup listen UAF race fix; Luiz reviewed |
| [\[PATCH\] Bluetooth: hci_event: fix memset typo](https://lore.kernel.org/linux-bluetooth/20260429-bluetooth-memset-fix-v1-1-73507b81a903@google.com/) | Jann Horn | Google | 1 | Apr 29; hci_event memset typo fix |
| [\[PATCH v5\] Bluetooth: hci_qca: Convert timeout from jiffies to ms](https://lore.kernel.org/linux-bluetooth/20260429123802.1310681-1-shuai.zhang@oss.qualcomm.com/) | Shuai Zhang | Qualcomm | 1 | v5 (Apr 29); continued from W14-W17 |
| [\[PATCH v2\] Bluetooth: btusb: Allow firmware re-download when version matches](https://lore.kernel.org/linux-bluetooth/20260429121207.1306526-1-shuai.zhang@oss.qualcomm.com/) | Shuai Zhang | Qualcomm | 1 | v2 (Apr 29); allow firmware re-download when version matches |
| [\[PATCH v1/v2\] arm64: dts: monaco-arduino-monza: Add Bluetooth UART node](https://lore.kernel.org/linux-bluetooth/20260429103537.1282497-1-shuai.zhang@oss.qualcomm.com/) | Shuai Zhang | Qualcomm | 1 (2 revisions) | v1 (Apr 28), v2 (Apr 29); Qualcomm Monaco Bluetooth DT node |
| [\[PATCH v1\] bluetooth: btintel: Add Bluetooth SAR revision 2 support](https://lore.kernel.org/linux-bluetooth/4c66feb9-e596-4ba2-98d3-b2365484fe2f@molgen.mpg.de/) | Kiran K | Intel | 1 | Apr 30; SAR (Specific Absorption Rate) revision 2 for btintel; reviewed by Paul Menzel |
| [\[PATCH\] Bluetooth: btrtl: fix RTL8761B/BU broken LE extended scan](https://lore.kernel.org/linux-bluetooth/20260429151343.28142-1-alexej@sidorenko.cz/) | Alexej Sidorenko | Independent | 1 | Apr 29; fixes broken LE extended scan on Realtek RTL8761B/BU |
| [\[PATCH v3\] Bluetooth: Add Synaptics 4384 Chip Support](https://lore.kernel.org/linux-bluetooth/20260409013035.1923003-1-kaihsin.chung@synaptics.com/) | Kaihsin Chung | Synaptics | 1 | Continued review (Apr 29); v3 from W15/W16 |
| [\[PATCH\] Bluetooth: btintel_pcie: Remove unused ret](https://lore.kernel.org/linux-bluetooth/20260430155038.426968-1-luiz.dentz@gmail.com/) | Zenm Chen | Independent | 1 | Apr 30; cleanup of unused variable in btintel_pcie |
| [\[RFC PATCH\] Bluetooth: fix Set Public Address on controller in HCI_AUTO_OFF grace period](https://lore.kernel.org/linux-bluetooth/20260430045522.7881-1-danilklishch@gmail.com/) | Dan Klishch | Independent | 1 | Apr 30; fixes Set Public Address during HCI auto-off grace period |
| [\[PATCH v3 0/5\] Bluetooth: btusb: fix wakeup irq devres lifetime](https://lore.kernel.org/linux-bluetooth/20260430045522.7881-1-danilklishch@gmail.com/) | Johan Hovold | Hovold Consulting | 5 | Continued discussion (Apr 30) |
| [\[PATCH 0/9\] Support for block device NVMEM providers](https://lore.kernel.org/linux-bluetooth/b4de6c89-dd89-4e02-8d79-911e4f9f0813@lunn.ch/) | Loic Poulain | Qualcomm | 9 | Apr 28-30; cross-subsystem block NVMEM providers series; reviewed by Andrew Lunn, Bartosz Golaszewski, Dmitry Baryshkov |
| [Bluetooth: btusb: Add VID/PID 0489:e156 for MediaTek MT7902](https://lore.kernel.org/linux-bluetooth/) | Max Chou | MediaTek | 1 | May 3; new MT7902 device ID |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [\[PATCH BlueZ v3-v7 0/3\] Add RAS Packet format and Notification support](https://lore.kernel.org/linux-bluetooth/20260427113544.1063560-1-prathm@qti.qualcomm.com/) | Prathibha Madugonde | Qualcomm | 3 (5 revisions) | v3 (Apr 27) through v7 (Apr 30); 20 messages; rapid iteration on RAS packet format + notification handling |
| [\[PATCH BlueZ v1/v2 0/3\] Add ability to desynchronized transports for PTS tests](https://lore.kernel.org/linux-bluetooth/20260427172056.148115-1-frederic.danis@collabora.com/) | Frédéric Danis | Collabora | 3 (2 revisions) | v1 (Apr 27), [v2](https://lore.kernel.org/linux-bluetooth/20260428080314.180777-1-frederic.danis@collabora.com/) (Apr 28); transport desync for PTS testing; applied to master |
| [\[RFC PATCH BlueZ 1/3\] shared/hci: Add BPF filter for registered events](https://lore.kernel.org/linux-bluetooth/20260430155038.426968-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 3 | Apr 30; BPF socket filter for HCI event filtering; applied to master |
| [\[PATCH BlueZ v2\] bass: Fix crashing on BT_BASS_MOD_SRC](https://lore.kernel.org/linux-bluetooth/20260428080314.180777-1-frederic.danis@collabora.com/) | Luiz Augusto von Dentz | Intel | 1 | Apr 28; continued from W16; applied to master |
| [\[PATCH BlueZ v1\] gatt-client: Fix use-after-free caused by reentrant client teardown](https://lore.kernel.org/linux-bluetooth/20260429114806.2337081-1-jinwang.li@oss.qualcomm.com/) | Jinwang Li | Qualcomm | 1 | Apr 29; gatt-client reentrant teardown UAF fix; applied to master |
| [\[PATCH BlueZ v1\] monitor: Add decoding support for Public Broadcast Announcements](https://lore.kernel.org/linux-bluetooth/20260427172056.148115-1-frederic.danis@collabora.com/) | raghu447 | Collabora | 1 | Apr 27; monitor PBA decoding; applied to master |
| [\[PATCH BlueZ v2 2/2\] client: make advertise.name use public broadcast name](https://lore.kernel.org/linux-bluetooth/20260428144008.7487-1-raghavendra.rao@collabora.com/) | raghu447 | Collabora | 2 (v2) | Apr 28-29; public broadcast advertise helper; applied to master |
| [\[PATCH BlueZ v1 1/2\] shared/util: Add decoding support for HIDS 1.1 UUIDs](https://lore.kernel.org/linux-bluetooth/177764460455.3493702.9637050673745875718.git-patchwork-notify@kernel.org/) | Luiz Augusto von Dentz | Intel | 2 | May 1; HIDS 1.1 UUID decoding; applied to master ([patchwork](https://lore.kernel.org/linux-bluetooth/177764460455.3493702.9637050673745875718.git-patchwork-notify@kernel.org/)) |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [\[SECURITY\] Use-after-free in l2cap_sock_alloc_skb_cb](https://lore.kernel.org/linux-bluetooth/69eedfe5.050a0220.101ddb.0571@mx.google.com/) | Safa Karakuş | Apr 27; L2CAP socket UAF vulnerability disclosure; Willy Tarreau responded |
| [Security: sdp_extract_seqtype() signed/unsigned confusion → OOB heap read](https://lore.kernel.org/linux-bluetooth/1CgzIVM-hFrHkvg_LOpx2mOjsirOpT0E2HBGPNmSW7ZfluNKQ0ES74B8GlpwWhq4ZtZCyEg4pqjlphoUk38a-0OP-xK3lEhaF5i_07XzMDw=@fluentlogic.org/) | admin (fluentlogic.org) | May 3; SDP OOB heap read, no pairing required, CVSS 8.1H |
| [\[BUG?\] bluetooth LE ISO sockets never get freed because of SOCK_DEAD confusion?](https://lore.kernel.org/linux-bluetooth/CAG48ez2=SSQfGUXTPs9jQw_2Tw0JdzRHcLDdCgC7wTGkK0GOTA@mail.gmail.com/) | Jann Horn | Google; Apr 30; ISO socket SOCK_DEAD state confusion leading to socket leak |
| [About Kernel limitation HCI_MAX_FRAME_SIZE (1024 + 4)](https://lore.kernel.org/linux-bluetooth/lot3ns12vglamg8c0b87iaoe.1777272055182@email.vivo.com/) | yjg0107 | Apr 27; question about HCI_MAX_FRAME_SIZE limit |
| [Bug 221339](https://bugzilla.kernel.org/show_bug.cgi?id=221339) AX200 -19 errors on boot after firmware 20260313-1.1 | bugzilla-daemon | Continued (May 1); Intel AX200 firmware regression |
| [Bug 221426](https://bugzilla.kernel.org/show_bug.cgi?id=221426) Intel AX211 Bluetooth hci0 hardware error 0x0c with HID/HOG failures | bugzilla-daemon | New (Apr 28); Intel AX211 hardware error causing HID/HOG failures on 6.19.14-zen |
| [Bug 220237](https://bugzilla.kernel.org/show_bug.cgi?id=220237) MediaTek MT7925 fails to load firmware with timeout (-110) | bugzilla-daemon | Continued (May 3) |
| [bluetooth hci0: Direct firmware load for rtl_bt/rtl8761a_config.bin failed](https://lore.kernel.org/linux-bluetooth/) | Robertus Diawan Chris | Apr 30; Realtek firmware loading failure report |
| [\[syzbot\] Monthly bluetooth report (May 2026)](https://lore.kernel.org/linux-bluetooth/69f5eee0.050a0220.3cbe47.0018.GAE@google.com/) | syzbot | May 2; monthly summary of open bluetooth fuzzing issues |
| [\[syzbot\] KASAN: slab-use-after-free Read in skb_pull (2)](https://lore.kernel.org/linux-bluetooth/) | syzbot | Apr 30; skb_pull UAF fuzz report |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Prathibha Madugonde | Qualcomm | 20 |
| Luiz Augusto von Dentz | Intel | 13 |
| Loic Poulain | Qualcomm | 13 |
| raghu447 (Raghavendra Rao) | Collabora | 9 |
| Frédéric Danis | Collabora | 8 |
| Shuai Zhang | Qualcomm | 4 |
| Konrad Dybcio | Fairphone | 4 |
| Safa Karakuş | Independent | 2 |
| Paul Menzel | Max Planck Institute (MPG) | 2 |
| Krzysztof Kozlowski | Independent | 2 |
| Jann Horn | Google | 2 |
| Andrew Lunn | Independent | 2 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [GIT PULL bluetooth-next 2026-04-13](https://lore.kernel.org/linux-bluetooth/177757174279.3109994.7737953345656205435.git-patchwork-notify@kernel.org/) — final patchwork status update (Apr 30)
- [net: remove ISDN subsystem and Bluetooth CMTP](https://lore.kernel.org/linux-bluetooth/20260422105516.GN651125@horms.kernel.org/) (Jakub Kicinski, applied via patchwork-bot+netdevbpf, Apr 27)

### Pushed to bluez/bluez master

- 06d3ff..a388a8: [monitor: Add decoding support for Public Broadcast Announcements](https://lore.kernel.org/linux-bluetooth/20260427172056.148115-1-frederic.danis@collabora.com/) (raghu447, Apr 27), [RAS packet formatting v3](https://lore.kernel.org/linux-bluetooth/20260427113544.1063560-1-prathm@qti.qualcomm.com/) (Prathibha, Apr 27), [audio: desynchronized transports](https://lore.kernel.org/linux-bluetooth/20260427172056.148115-1-frederic.danis@collabora.com/) (Frédéric Danis, Apr 27)
- a388a8..505db9: [bass: Fix crashing on BT_BASS_MOD_SRC](https://lore.kernel.org/linux-bluetooth/) (Luiz, Apr 28), [client: public-broadcast advertising](https://lore.kernel.org/linux-bluetooth/20260428144008.7487-1-raghavendra.rao@collabora.com/) (raghu447, Apr 28), desynchronized transports v2 (Frédéric Danis, Apr 28)
- 505db9..69d9cd: [gatt-client: Fix use-after-free](https://lore.kernel.org/linux-bluetooth/20260429114806.2337081-1-jinwang.li@oss.qualcomm.com/) (Jinwang Li, Apr 29), RAS updates (Prathibha, Apr 29), public-broadcast v2 (raghu447, Apr 29)
- 69d9cd..7e38e0: [shared/hci: Add BPF filter for registered events](https://lore.kernel.org/linux-bluetooth/20260430155038.426968-1-luiz.dentz@gmail.com/) (Luiz, Apr 30), RAS v5-v7 (Prathibha, Apr 30), desynchronized transports v2 (Frédéric Danis, Apr 30)
- 7e38e0..323d54: [shared/util: Add decoding support for HIDS 1.1 UUIDs](https://lore.kernel.org/linux-bluetooth/177764460455.3493702.9637050673745875718.git-patchwork-notify@kernel.org/) (Luiz, May 1), BPF filter updates (May 1)

### Also applied to bluez.git (via patchwork notifications)

- [Add ability to desynchronized transports for PTS tests](https://lore.kernel.org/linux-bluetooth/20260428080314.180777-1-frederic.danis@collabora.com/) (Frédéric Danis, v2, 3-patch series, Apr 28)
- [gatt-client: Fix use-after-free caused by reentrant client teardown](https://lore.kernel.org/linux-bluetooth/20260429114806.2337081-1-jinwang.li@oss.qualcomm.com/) (Jinwang Li, Apr 30)
- [shared/util: Add decoding support for HIDS 1.1 UUIDs](https://lore.kernel.org/linux-bluetooth/177764460455.3493702.9637050673745875718.git-patchwork-notify@kernel.org/) (Luiz, 2-patch series, May 1)

---

## Company Focus Areas

### Intel
Luiz Augusto von Dentz contributed 13 messages: posted the [RFC BPF filter for shared/hci](https://lore.kernel.org/linux-bluetooth/20260430155038.426968-1-luiz.dentz@gmail.com/) (3-patch series, applied to master — enables BPF socket filtering for HCI event registration), [HIDS 1.1 UUID decoding](https://lore.kernel.org/linux-bluetooth/177764460455.3493702.9637050673745875718.git-patchwork-notify@kernel.org/) (applied), [bass crash fix](https://lore.kernel.org/linux-bluetooth/) (applied), reviewed the [l2cap UAF race fix](https://lore.kernel.org/linux-bluetooth/CABBYNZL4P1HkA_FMFkBu0Ou-qi1a6Atv3ae-U32r2U1JgkOe1A@mail.gmail.com/), and conducted reviews across multiple patches. Kiran K posted [btintel SAR revision 2 support](https://lore.kernel.org/linux-bluetooth/4c66feb9-e596-4ba2-98d3-b2365484fe2f@molgen.mpg.de/) (reviewed by Paul Menzel).

### Qualcomm
Prathibha Madugonde was the most prolific contributor (20 messages) with [RAS v3-v7](https://lore.kernel.org/linux-bluetooth/20260427113544.1063560-1-prathm@qti.qualcomm.com/) — 5 revisions in 4 days — continuing the rapid Channel Sounding companion feature development. Loic Poulain contributed 13 messages with the [block device NVMEM providers](https://lore.kernel.org/linux-bluetooth/b4de6c89-dd89-4e02-8d79-911e4f9f0813@lunn.ch/) cross-subsystem series (9 patches). Shuai Zhang posted 4 messages: [hci_qca jiffies-to-ms v5](https://lore.kernel.org/linux-bluetooth/20260429123802.1310681-1-shuai.zhang@oss.qualcomm.com/), [btusb firmware re-download v2](https://lore.kernel.org/linux-bluetooth/20260429121207.1306526-1-shuai.zhang@oss.qualcomm.com/), and Monaco Bluetooth DT node (v1/v2). Jinwang Li posted the [gatt-client reentrant teardown UAF fix](https://lore.kernel.org/linux-bluetooth/20260429114806.2337081-1-jinwang.li@oss.qualcomm.com/) (applied to master).

### Collabora
Frédéric Danis contributed 8 messages: [desynchronized transports for PTS testing](https://lore.kernel.org/linux-bluetooth/20260427172056.148115-1-frederic.danis@collabora.com/) (v1/v2, applied to master). raghu447 (Raghavendra Rao) contributed 9 messages: [public-broadcast advertise helper](https://lore.kernel.org/linux-bluetooth/20260428144008.7487-1-raghavendra.rao@collabora.com/) (v2, applied to master) and [Public Broadcast Announcement monitor decoding](https://lore.kernel.org/linux-bluetooth/20260427172056.148115-1-frederic.danis@collabora.com/) (applied).

### Google
Jann Horn contributed 2 high-impact messages: the [hci_event memset typo fix](https://lore.kernel.org/linux-bluetooth/20260429-bluetooth-memset-fix-v1-1-73507b81a903@google.com/) and the [ISO socket SOCK_DEAD leak bug report](https://lore.kernel.org/linux-bluetooth/CAG48ez2=SSQfGUXTPs9jQw_2Tw0JdzRHcLDdCgC7wTGkK0GOTA@mail.gmail.com/).

### Fairphone
Konrad Dybcio contributed 4 messages in cross-subsystem discussions (WCN399x, NVMEM).

### Synaptics
Kaihsin Chung's [v3 Synaptics 4384 Chip Support](https://lore.kernel.org/linux-bluetooth/20260409013035.1923003-1-kaihsin.chung@synaptics.com/) received continued review (1 message).

### Max Planck Institute (MPG)
Paul Menzel contributed 2 review messages including [btintel SAR revision 2](https://lore.kernel.org/linux-bluetooth/4c66feb9-e596-4ba2-98d3-b2365484fe2f@molgen.mpg.de/) review.

### MediaTek
Max Chou posted a MediaTek MT7902 device ID addition (1 message). Sean Wang contributed 1 message.

### Hovold Consulting
Johan Hovold's btusb wakeup irq devres lifetime series received continued discussion (1 message).

### Independent Contributors
Safa Karakuş reported the [L2CAP socket UAF vulnerability](https://lore.kernel.org/linux-bluetooth/69eedfe5.050a0220.101ddb.0571@mx.google.com/) and posted a [fix patch](https://lore.kernel.org/linux-bluetooth/CABBYNZL4P1HkA_FMFkBu0Ou-qi1a6Atv3ae-U32r2U1JgkOe1A@mail.gmail.com/) (2 messages). Alexej Sidorenko posted the [btrtl RTL8761B/BU LE extended scan fix](https://lore.kernel.org/linux-bluetooth/20260429151343.28142-1-alexej@sidorenko.cz/) (1 message). Dan Klishch posted the [RFC Set Public Address HCI_AUTO_OFF fix](https://lore.kernel.org/linux-bluetooth/20260430045522.7881-1-danilklishch@gmail.com/) (1 message). Other contributors: Zenm Chen (1, btintel_pcie cleanup), Willy Tarreau (1, security discussion), Kirill Shubin (1), Robertus Diawan Chris (1, firmware loading report), Danilo Krummrich (1), admin/fluentlogic.org (1, SDP security disclosure).

---

## Notable Trends

1. **Two independent security vulnerabilities disclosed**: The week saw two separate vulnerability reports: an [L2CAP socket UAF](https://lore.kernel.org/linux-bluetooth/69eedfe5.050a0220.101ddb.0571@mx.google.com/) (Safa Karakuş) and a high-severity [SDP OOB heap read](https://lore.kernel.org/linux-bluetooth/1CgzIVM-hFrHkvg_LOpx2mOjsirOpT0E2HBGPNmSW7ZfluNKQ0ES74B8GlpwWhq4ZtZCyEg4pqjlphoUk38a-0OP-xK3lEhaF5i_07XzMDw=@fluentlogic.org/) (CVSS 8.1H, no pairing required). Combined with Jann Horn's [ISO socket SOCK_DEAD confusion report](https://lore.kernel.org/linux-bluetooth/CAG48ez2=SSQfGUXTPs9jQw_2Tw0JdzRHcLDdCgC7wTGkK0GOTA@mail.gmail.com/), security scrutiny of the bluetooth stack remains high.

2. **BPF filtering for BlueZ HCI layer**: Luiz's [RFC for BPF socket filters in shared/hci](https://lore.kernel.org/linux-bluetooth/20260430155038.426968-1-luiz.dentz@gmail.com/) introduces kernel-style BPF filtering to the BlueZ userspace HCI transport. This enables efficient event filtering without kernel modification and could be foundational for future performance optimizations.

3. **RAS rapid iteration mirrors Channel Sounding pattern**: Prathibha Madugonde's [v3-v7 RAS sprint](https://lore.kernel.org/linux-bluetooth/20260427113544.1063560-1-prathm@qti.qualcomm.com/) (20 messages, 5 revisions in 4 days) mirrors Naga Bhavani Akella's Channel Sounding sprint from W16. Qualcomm is driving both Bluetooth 6.0 ranging features with high-velocity iteration.

4. **CMTP officially removed**: The [ISDN/CMTP removal](https://lore.kernel.org/linux-bluetooth/20260422105516.GN651125@horms.kernel.org/) proposed in W17 was officially applied via patchwork-bot+netdevbpf, removing decades-old dead code from the bluetooth subsystem.

5. **Collabora PTS testing expansion continues**: Frédéric Danis's [desynchronized transports](https://lore.kernel.org/linux-bluetooth/20260427172056.148115-1-frederic.danis@collabora.com/) series and raghu447's [public-broadcast advertise helper](https://lore.kernel.org/linux-bluetooth/20260428144008.7487-1-raghavendra.rao@collabora.com/) demonstrate Collabora's ongoing investment in BlueZ Bluetooth Profile Tuning Suite (PTS) test automation.

6. **Intel btintel_pcie bug reports accumulate**: A new [Bug 221426](https://bugzilla.kernel.org/show_bug.cgi?id=221426) (AX211 hardware error 0x0c with HID/HOG failures on 6.19.14-zen) adds to the growing list of btintel_pcie issues alongside the ongoing [Bug 221339](https://bugzilla.kernel.org/show_bug.cgi?id=221339) (AX200 -19 errors) and Bug 221346 (synchronize_irq hang). Kiran K's [SAR revision 2](https://lore.kernel.org/linux-bluetooth/4c66feb9-e596-4ba2-98d3-b2365484fe2f@molgen.mpg.de/) patch adds new functionality to the same driver.

7. **syzbot monthly report published**: The [May 2026 monthly bluetooth report](https://lore.kernel.org/linux-bluetooth/69f5eee0.050a0220.3cbe47.0018.GAE@google.com/) provides a summary of open syzbot-reported bluetooth issues, serving as a standing indicator of fuzzing-detected bugs requiring attention.
