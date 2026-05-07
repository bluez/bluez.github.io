---
title: "Weekly Report: linux-bluetooth Mailing List - April 6 - April 12, 2026 (Week 15)"
date: 2026-04-12
summary: "A high-throughput week dominated by Luiz Augusto von Dentz's [GIT PULL] bluetooth-next 2026-04-10 — the fourth bluetooth pull request in five weeks — containing 56 patches from 25 authors covering core fixes, new device IDs, MT7927/MT7902 support, QCA SSR fixes, and Intel Scorpius Peak2 support."
draft: false
---

**Total messages: 266 (121 human, 143 CI/bot, 2 excluded)**

Note: Of the 266 messages, 121 are human-generated, 143 are CI/bot (bluez.test.bot 84, BluezTestBot 29, patchwork-bot+bluetooth 18, bugzilla-daemon 9, kernel test robot 2, syzbot 1), and 2 are excluded cross-subsystem entries (Al Viro and Theodore Ts'o treewide IS_ERR_OR_NULL refactoring 00/61 and 04/61).

---

## Summary

A high-throughput week dominated by Luiz Augusto von Dentz's `[GIT PULL] bluetooth-next 2026-04-10` — the fourth bluetooth pull request in five weeks — containing 56 patches from 25 authors covering core fixes, new device IDs, MT7927/MT7902 support, QCA SSR fixes, and Intel Scorpius Peak2 support. Luiz also drove a major batch review clearing ~35 pending patches on April 9, posted the device: Fix btd_device_connect_services series (v1/v2, 3 patches, applied to bluez.git master), the shared/gatt-server permissions series (v2, applied), and the v3 hci_event OOB read fix for hci_le_create_big_complete_evt. Pauli Virtanen was again the most prolific BlueZ contributor (19 messages) — posting 12 messages on April 6 alone with monitor data size checks (5 patches, applied), smp-tester/ioctl-tester fixes (applied), shared/mcp crash and argument parsing fixes (v1/v2, applied), build: never build test-runner with ASAN (applied), gatt-database removal fix (applied), then shifting to kernel work with SCO sleeping-under-spinlock fix (applied), 6lowpan cyclic locking warning fix (v1/v2), hci_sync hci_conn_del usage fix, and an RFC to remove sco_conn entirely. Stefan Metzmacher contributed 11 messages across two areas: the cross-subsystem uaccess/sockptr copy_struct_ fixes (5-patch series, CC'd to bluetooth) and the SCO codecs num_codecs validation patch (discussed with Luiz, applied to bluetooth-next). Paul Menzel provided 10 review messages across multiple threads. New vendor support appeared from Kaihsin Chung (Synaptics 4384 chip, v1-v3), Sasha Finkelstein (Broadcom channel priority commands, v1-v2), and Chris Lu (MediaTek btmtk event filter, v1-v3). Jakub Kicinski flagged two broken Fixes tags in the GIT PULL, prompting corrections.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [GIT PULL] bluetooth-next 2026-04-10 | Luiz Augusto von Dentz | Intel | 56 (25 authors) | Submitted Apr 10; Jakub Kicinski flagged 2 broken Fixes tags (btmtk_mt6639_devs + L2CAP SDU length); covers core (hci_core, hci_sync, hci_event, L2CAP, SCO), drivers (btusb MT7927/MT7902/MT7922, btintel Scorpius Peak2, btmtk, btbcm, btqca, hci_qca, hci_ldisc, hci_ll), and SDIO; 56 patches from 25 authors |
| [PATCH v5/v6/v7] Bluetooth: qca: Fix delayed hw_error handling due to missing wakeup during SSR | Shuai Zhang | Qualcomm | 1 (3 revisions) | v5 (Apr 10), v6 applied to bluetooth-next (patchwork notification Apr 10), v7 also applied (Apr 10); QCA SSR hw_error handling fix with missing wakeup |
| [PATCH v4] Bluetooth: hci_qca: Convert timeout from jiffies to ms | Shuai Zhang | Qualcomm | 1 | v4 resubmission (Apr 10); continued from W14 |
| [PATCH v7] Bluetooth: hci_qca: Fix missing wakeup during SSR memdump handling | Shuai Zhang | Qualcomm | 1 | Applied to bluetooth-next (patchwork notification Apr 10) |
| [PATCH v2/v3/v4] Bluetooth: hci_conn: fix potential UAF in create_big_sync | David Carlier | Independent | 1 (3 revisions) | v2 net-next (Apr 11), v3 (Apr 11), v4 (Apr 12); iterating on hci_conn BIG sync UAF fix based on W14's Aaron Esau original |
| [PATCH v3] Bluetooth: hci_event: Fix OOB read and infinite loop in hci_le_create_big_complete_evt | Luiz Augusto von Dentz | Intel | 1 | v3 (Apr 10); Luiz's rework of Binbin Huang's v1/v2 fix from W14 |
| [PATCH v1/v2/v3] Bluetooth: btmtk: add event filter to filter specific event | Chris Lu | MediaTek | 1 (3 revisions) | v1 (Apr 7), v2 (Apr 7), v3 (Apr 12); MediaTek-specific event filtering during firmware download |
| [PATCH v2] Bluetooth: btintel_pcie: Support Product level reset | Chandrashekar Devegowda | Intel | 1 | v2 (Apr 7); product-level reset for btintel_pcie, reviewed by Luiz |
| [PATCH RESEND v1] Bluetooth: btintel_pcie: Align shared DMA memory to 128 bytes | Kiran K | Intel | 1 | Applied to bluetooth-next (patchwork notification Apr 7) |
| [PATCH RESEND][next] Bluetooth: hci.h: Avoid -Wflex-array-member-not-at-end warnings | Gustavo A. R. Silva | KSPP | 1 | Applied to bluetooth-next (patchwork notification Apr 8); KSPP hardening for hci.h flex-array members |
| [PATCH] Bluetooth: btintel_pcie: use strscpy to copy plain strings | Thorsten Blum | Independent | 1 | Applied to bluetooth-next (patchwork notification Apr 9) |
| [PATCH] Bluetooth: SCO: fix sleeping under spinlock in sco_conn_ready | Pauli Virtanen | Independent | 1 | New (Apr 12); fixes sleeping in atomic context during SCO connection setup |
| [RFC PATCH] Bluetooth: SCO: remove sco_conn and simplify locking scheme | Pauli Virtanen | Independent | 1 | RFC (Apr 12); proposes removing sco_conn struct entirely to simplify SCO locking |
| [PATCH v1/v2] Bluetooth: 6lowpan: fix cyclic locking warning on netdev unregister | Pauli Virtanen | Independent | 1 (2 revisions) | v1 (Apr 11) and v2 (Apr 11); fixes lockdep warning in 6lowpan netdev unregistration |
| [PATCH] Bluetooth: hci_sync: fix hci_conn_del usage in hci_le_create_conn_sync | Pauli Virtanen | Independent | 1 | New (Apr 11); fixes hci_conn_del usage in LE connection creation |
| [PATCH v1/v2] Bluetooth: l2cap: defer conn param update to avoid conn->lock/hdev->lock inversion | Mikhail Gavrilov | Independent | 1 (2 revisions) | v1 (Apr 9, Paul Menzel review) and v2 (Apr 10); L2CAP lock inversion fix |
| [PATCH] Bluetooth: hci_event: reject incoming conn request when MASTER conn exists | SeungJu Cheon | Independent | 1 | New (Apr 10); reject duplicate master connections |
| [PATCH] Bluetooth: RFCOMM: validate skb length in MCC handlers | SeungJu Cheon | Independent | 1 | New (Apr 12); RFCOMM MCC skb bounds validation |
| [PATCH v1/v2/v3] Bluetooth: Add Synaptics 4384 Chip Support | Kaihsin Chung | Synaptics | 1 (3 revisions) | v1 (Apr 8), v2 (Apr 8), v3 (Apr 9); new btusb vendor support for Synaptics 4384 BT chip; reviewed by Paul Menzel and Luiz |
| [PATCH v1/v2] Bluetooth: Add Broadcom channel priority commands | Sasha Finkelstein | Apple | 2 (2 revisions) | v1 (Apr 7), v2 (Apr 9); new Broadcom HCI vendor commands for A2DP/LE channel priority |
| [PATCH] Bluetooth: SCO: check for codecs->num_codecs == 1 before assigning to sco_pi(sk)->codec | Stefan Metzmacher | Samba Team | 1 | New (Apr 7); validates codec count before assignment; discussed with Luiz (applied to bluetooth-next via GIT PULL) |
| [PATCH v2 0/7] Enable Bluetooth and WiFi on Fairphone (Gen. 6) | Konrad Dybcio | Fairphone | 7 | v2 review (Apr 7); WCN6755 BT+WiFi enablement for Fairphone 6; Mark Brown applied regulator subset (Apr 6) |
| [PATCH] Bluetooth: l2cap: Add missing chan lock in l2cap_ecred_reconf_rsp | Dudu Lu | Independent | 1 | Applied to bluetooth-next (patchwork notification Apr 6); continued from W14 |
| [PATCH v3 1/5] Bluetooth: btusb: fix wakeup irq devres lifetime | Johan Hovold | Hovold Consulting | 5 | Applied to bluetooth-next (patchwork notification Apr 9); v3 from W14 |
| [PATCH RESEND v1] Bluetooth: btusb: MT7925: Add VID/PID 0e8d/8c38 | Chris Lu | MediaTek | 1 | Resent (Apr 7, Apr 10); Paul Menzel review; MediaTek MT7925 device ID |
| [PATCH RESEND v1] Bluetooth: btusb: MT7922: Add VID/PID 0e8d/223c | Chris Lu | MediaTek | 1 | Resent (Apr 7); Paul Menzel review; MediaTek MT7922 device ID |
| [PATCH] Bluetooth: BNEP: validate control header bytes before reading them | Pengpeng Hou | ISCAS | 1 | Review from Luiz (Apr 9); continued from W14 |
| [PATCH] Bluetooth: Remove unneeded crypto kconfig selections | Eric Biggers | Independent | 1 | Review from Luiz (Apr 9); continued from W14 |
| [PATCH v3 1/1] Bluetooth: serialize accept_q access | Ren Wei | Independent | 1 | Review from Luiz (Apr 9); continued from W14 |
| [PATCH] Bluetooth: hci_event: fix potential UAF in SSP passkey handlers | Anonymous | Independent | 1 | Applied to bluetooth-next (via GIT PULL); SSP passkey handler UAF fix |
| [PATCH v2] Bluetooth: hci_event: fix OOB read in hci_le_create_big_complete_evt | Binbin Huang | Independent | 1 | Luiz review (Apr 10); superseded by Luiz's v3 rework |
| [PATCH v3] Bluetooth: ISO: fix NULL deref in iso_recv() ISO_END handling | Nathan Rebello | Independent | 1 | Review from Luiz (Apr 9); continued from W14 |
| [PATCH] Bluetooth: ISO: validate ISO_END fragments | Kangzheng Gu | Independent | 1 | Review from Luiz (Apr 9); continued from W14 |
| [RFC PATCH 1/1] Bluetooth: btmtk: add USB autopm support to btmtk_usb_setup() | Alberto Garcia | Igalia | 1 | Review from Luiz (Apr 9); USB autosuspend during MediaTek firmware setup |
| [PATCH 0/5] uaccess/sockptr: copy_struct_ fixes and more helpers | Stefan Metzmacher / Christian Brauner | Samba Team / Kernel.org | 5 | Cross-subsystem (Apr 7-9, 15+ messages); sockptr API improvements affecting bluetooth; bluez.test.bot CI ran |
| [PATCH 5.10.y/5.15.y] Bluetooth: SCO: Fix use-after-free in sco_recv_frame() | Jianqiang kang | Independent | 2 | Stable backports (Apr 9); 5.10.y and 5.15.y SCO UAF fix |
| [PATCH] Bluetooth: hci_conn: Use disable_delayed_work_sync for le_conn_timeout | SeungJu Cheon | Independent | 1 | New (Apr 12 index, listed on latest page) |
| [PATCH] Bluetooth: bnep: Fix endianness in bnep_rx_frame() extension parsing | SeungJu Cheon | Independent | 1 | New (Apr 12 index, listed on latest page) |
| [PATCH] Bluetooth: l2cap: Fix MPS check in l2cap_ecred_reconf_req | SeungJu Cheon | Independent | 1 | New (Apr 12 index, listed on latest page) |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [PATCH BlueZ v1/v2 1/3] device: Fix btd_device_connect_services not discovering | Luiz Augusto von Dentz | Intel | 3 (2 revisions) | v1 (Apr 7) and v2 (Apr 8); fixes btd_device_connect_services when device not discovered, adds scanning prompt + auto_connect filter; applied to bluez.git master (Apr 9) |
| [PATCH BlueZ v2 1/2] shared/gatt-server: Add bt_gatt_server_set_permissions | Luiz Augusto von Dentz | Intel | 2 | v2 (Apr 8); GATT server permissions API + GATT.Security main.conf option; applied to bluez.git (Apr 8) |
| [PATCH BlueZ v1] monitor: Fix not loading local GATT DB from cache | Luiz Augusto von Dentz | Intel | 1 | Applied to bluez.git master (Apr 7); fixes GATT DB cache loading in btmon |
| [PATCH BlueZ 1/5] monitor: check data size properly in evt_num_completed_packets | Pauli Virtanen | Independent | 5 | 5-patch series: monitor data size checks, emulator unused variables, monitor/src/tools additional checks; applied to bluez.git (Apr 6) |
| [PATCH BlueZ] build: never build test-runner with ASAN | Pauli Virtanen | Independent | 1 | Applied to bluez.git (Apr 6); prevents ASAN from interfering with test-runner |
| [PATCH BlueZ 1/2] tools/smp-tester: don't write array out of bounds | Pauli Virtanen | Independent | 2 | smp-tester OOB write + ioctl-tester OOB read fixes; applied to bluez.git (Apr 6) |
| [PATCH BlueZ v1/v2 1/2] shared/mcp: fix crash on destroy after ATT gone | Pauli Virtanen | Independent | 2 (2 revisions) | v1 (Apr 6) and v2 (Apr 6); MCP crash fix + control point argument parsing fix; applied to bluez.git (Apr 6) |
| [PATCH BlueZ] gatt-database: remove database from dbs list when destroyed | Pauli Virtanen | Independent | 1 | New (Apr 12); fixes list corruption when gatt-database is destroyed; applied to bluez.git |
| [PATCH BlueZ v2 0/3] Bluetooth: Add initial Channel Sounding | Naga Bhavani Akella | Qualcomm | 3 | v2 (Apr 7); HCI raw interface (RAP), CS config parsing, Reflector role event handling; reviewed by Luiz |
| [PATCH BlueZ] src/device: Add ConnectedUUIDs property | Cai Tao | KylinOS | 1 | New (Apr 10); exposes connected service UUIDs via D-Bus; applied to bluez.git (Apr 10) |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [Bug 221339] AX200 -19 errors on boot after firmware 20260313-1.1 | bugzilla-daemon | New (Apr 9-10, 5 messages in range); Intel AX200 firmware regression causing -19 errors on boot |
| [Bug 221346] btintel_pcie (8086:e476) may hang in shutdown path (synchronize_irq) | bugzilla-daemon | New (Apr 11, 3 messages in range); btintel_pcie reboot stress test hang in synchronize_irq |
| [syzbot] [bluetooth?] general protection fault in h4_recv | syzbot | New (Apr 9); automated fuzz report for h4_recv GPF |
| GIT PULL bluetooth-next 2026-04-10: broken Fixes tags | Jakub Kicinski / Luiz | Jakub flagged 2 broken Fixes tags: btmtk_mt6639_devs SHA1 and L2CAP SDU length SHA1 don't exist (Apr 12) |
| off-topic meta bounce probes | Shuvam Pandey | Meta discussion about mailing list bounce probes (Apr 7) |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 22 |
| Pauli Virtanen | Independent | 19 |
| Stefan Metzmacher | Samba Team | 11 |
| Paul Menzel | Max Planck Institute (MPG) | 10 |
| Chris Lu | MediaTek | 8 |
| David Carlier | Independent | 6 |
| Shuai Zhang | Qualcomm | 6 |
| Konrad Dybcio | Fairphone | 4 |
| Naga Bhavani Akella | Qualcomm | 4 |
| Kaihsin Chung | Synaptics | 3 |
| SeungJu Cheon | Independent | 3 |
| Mikhail Gavrilov | Independent | 3 |
| Aleksa Sarai | Independent | 3 |
| Sasha Finkelstein | Apple | 2 |
| Gustavo A. R. Silva | KSPP | 2 |
| Jianqiang kang | Independent | 2 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications and GIT PULL)

- Bluetooth: l2cap: Add missing chan lock in l2cap_ecred_reconf_rsp (Dudu Lu, Apr 6)
- Bluetooth: btintel_pcie: Align shared DMA memory to 128 bytes (Kiran K, RESEND v1, Apr 7)
- Bluetooth: hci.h: Avoid -Wflex-array-member-not-at-end warnings (Gustavo A. R. Silva, RESEND, Apr 8)
- Bluetooth: btintel_pcie: use strscpy to copy plain strings (Thorsten Blum, Apr 9)
- Bluetooth: btusb: fix wakeup irq devres lifetime (Johan Hovold, v3, 5-patch series, Apr 9)
- Bluetooth: qca: Fix delayed hw_error handling due to missing wakeup during SSR (Shuai Zhang, v6, Apr 10)
- Bluetooth: hci_qca: Fix missing wakeup during SSR memdump handling (Shuai Zhang, v7, Apr 10)
- [GIT PULL] bluetooth-next 2026-04-10 (Luiz, 56 patches from 25 authors, submitted Apr 10, reviewed by Jakub Kicinski Apr 12)

### Patchwork status updates for previously-applied patches (notifications Apr 10)

- [GIT PULL] bluetooth 2026-03-12 (status update)
- [GIT PULL] bluetooth 2026-03-19 (status update)
- [GIT PULL] bluetooth 2026-03-25 (status update)
- [GIT PULL] bluetooth 2026-04-01 (status update)
- [PATCH v5 0/8] Bluetooth: Add MediaTek MT7927 (MT6639) support (status update)

### Pushed to bluez/bluez master

- 00dfd3..21db57: tools/smp-tester: don't write array out of bounds + ioctl-tester OOB read fix + monitor data size checks (5 patches) + build: never build test-runner with ASAN + shared/mcp fixes (Pauli Virtanen, Apr 6)
- 21db57..a73fcb: monitor: Fix not loading local GATT DB from cache (Luiz, Apr 7)
- a73fcb..516099: device: Fix btd_device_connect_services not discovering + client scanning prompt + auto_connect filter + shared/gatt-server permissions + GATT.Security option (Luiz, Apr 9)

### Also applied to bluez.git (via patchwork notifications)

- monitor: check data size properly in evt_num_completed_packets (Pauli Virtanen, 5-patch series, Apr 6)
- build: never build test-runner with ASAN (Pauli Virtanen, Apr 6)
- tools/smp-tester: don't write array out of bounds (Pauli Virtanen, 2-patch series, Apr 6)
- shared/mcp: fix crash on destroy after ATT gone (Pauli Virtanen, v2, 2-patch series, Apr 6)
- monitor: Fix not loading local GATT DB from cache (Luiz, Apr 7)
- shared/gatt-server: Add bt_gatt_server_set_permissions (Luiz, v2, 2-patch series, Apr 9)
- device: Fix btd_device_connect_services not discovering (Luiz, v2, 3-patch series, Apr 9)
- src/device: Add ConnectedUUIDs property (Cai Tao, Apr 10)
- gatt-database: remove database from dbs list when destroyed (Pauli Virtanen, Apr 12)

---

## Company Focus Areas

### Intel
Luiz Augusto von Dentz led the week with 22 messages: submitted `[GIT PULL] bluetooth-next 2026-04-10` (56 patches, 25 authors — the fourth bluetooth pull in five weeks), posted device: Fix btd_device_connect_services (v1/v2, 3-patch series, applied to bluez.git master), shared/gatt-server permissions (v2, applied), monitor: Fix not loading local GATT DB from cache (applied), the v3 hci_event OOB read fix reworking Binbin Huang's original, and conducted a massive batch review on April 9 clearing ~35 pending patches with reviews and CI runs. Chandrashekar Devegowda posted btintel_pcie Support Product level reset (v2, Apr 7). Kiran K's btintel_pcie DMA alignment patch (RESEND v1) was applied to bluetooth-next.

### Qualcomm
Shuai Zhang posted 6 messages with three revisions (v5/v6/v7) of the QCA hw_error SSR wakeup fix and v4 of the hci_qca jiffies-to-ms conversion. Both v6 and v7 of the SSR fix were applied to bluetooth-next. Naga Bhavani Akella posted v2 of the BlueZ Channel Sounding implementation (3 patches, 4 messages), continuing the channel sounding effort from W14.

### Synaptics
Kaihsin Chung posted 3 messages with v1-v3 of the new Synaptics 4384 Bluetooth chip support for btusb, addressing review feedback from Paul Menzel (naming conventions, commit message) and Luiz (driver structure).

### MediaTek
Chris Lu contributed 8 messages: v1-v3 of the btmtk event filter to filter specific events during firmware download, and RESEND v1 submissions for MT7925 (VID/PID 0e8d/8c38) and MT7922 (VID/PID 0e8d/223c) device IDs. Both device ID patches were reviewed by Paul Menzel.

### Apple
Sasha Finkelstein posted v1 and v2 (2 messages) of the Broadcom channel priority commands patch, adding vendor-specific HCI commands for A2DP and LE audio channel priority on Broadcom controllers.

### Fairphone
Konrad Dybcio contributed 4 messages in the Fairphone Gen 6 BT+WiFi enablement series (v2, 7 patches): WCN6755 Bluetooth and WiFi DT bindings and arm64 DTS entries. Mark Brown applied the regulator subset on Apr 6.

### Samba Team
Stefan Metzmacher was the third-most prolific contributor (11 messages) across two areas: the cross-subsystem uaccess/sockptr copy_struct_ fixes (5-patch series CC'd to bluetooth, with discussion from Aleksa Sarai, David Laight, and Christian Brauner) and the SCO codecs num_codecs validation patch (discussed with Luiz, subsequently applied to bluetooth-next via the GIT PULL).

### Max Planck Institute (MPG)
Paul Menzel contributed 10 review messages across multiple threads: Synaptics 4384 v1/v2/v3 review, MT7925/MT7922 RESEND reviews, btmtk event filter review, l2cap defer conn param update review (Mikhail Gavrilov), and bug report discussions.

### KSPP
Gustavo A. R. Silva posted 2 messages: the RESEND of the hci.h -Wflex-array-member-not-at-end warnings fix (applied to bluetooth-next).

### Igalia
Alberto Garcia posted the btmtk USB autopm support RFC (1 message), adding USB autosuspend during MediaTek firmware setup — reviewed by Luiz on April 9.

### ISCAS
Pengpeng Hou's BNEP control header validation patch from W14 received Luiz's review on April 9.

### Hovold Consulting
Johan Hovold's v3 btusb wakeup irq devres lifetime 5-patch series from W14 was applied to bluetooth-next (patchwork notification Apr 9).

### KylinOS
Cai Tao (294305068) posted the ConnectedUUIDs D-Bus property patch (1 message, Apr 10), adding a new property exposing connected service UUIDs. Applied to bluez.git.

### Independent Contributors
Pauli Virtanen was the second-most prolific contributor (19 messages): submitted 12 messages on April 6 alone covering BlueZ quality improvements — monitor data size checks (5-patch series), smp-tester/ioctl-tester bounds fixes, shared/mcp crash and argument parsing fixes (v1/v2), and build: never build test-runner with ASAN (all applied to bluez.git master). Later in the week, shifted to kernel SCO work: SCO sleeping-under-spinlock fix (Apr 12), 6lowpan cyclic locking warning fix (v1/v2, Apr 11), hci_sync hci_conn_del usage fix (Apr 11), gatt-database removal fix (Apr 12, applied), and an RFC to remove sco_conn entirely and simplify the SCO locking scheme (Apr 12). David Carlier iterated the hci_conn create_big_sync UAF fix through v2-v4 (6 messages, Apr 8-12), including a v2 targeting net-next. Mikhail Gavrilov posted v1 and v2 of the l2cap defer conn param update lock inversion fix (3 messages). SeungJu Cheon posted 3 patches: hci_event reject incoming conn request when MASTER exists, RFCOMM MCC skb length validation, and hci_conn le_conn_timeout delayed work sync fix. Other contributors: Jianqiang kang (2, stable backport SCO UAF fix for 5.10.y/5.15.y), Eric Biggers (1, crypto Kconfig cleanup, reviewed by Luiz), Nathan Rebello (1, ISO_END NULL deref v3, reviewed by Luiz), Kangzheng Gu (1, ISO_END fragment validation, reviewed by Luiz), Thorsten Blum (1, btintel_pcie strscpy, applied), Shuvam Pandey (1, meta bounce probes discussion).

---

## Notable Trends

1. **Fourth GIT PULL in five weeks**: Luiz submitted `[GIT PULL] bluetooth-next 2026-04-10` — the fourth bluetooth pull request since mid-March — with 56 patches from 25 authors, demonstrating the sustained high velocity of bluetooth-next development. Jakub Kicinski's review identified two broken Fixes tags, showing the importance of netdev maintainer review.

2. **SCO subsystem rework begins**: Pauli Virtanen posted an RFC to remove sco_conn entirely and simplify the SCO locking scheme, alongside a concrete fix for sleeping under spinlock in sco_conn_ready. This signals the beginning of a potentially significant SCO subsystem cleanup, addressing long-standing locking complexity.

3. **Massive batch review clears backlog**: Luiz conducted a batch review on April 9 clearing ~35 pending patches accumulated over weeks (some dating back to March 11), resulting in 84 bluez.test.bot CI runs and 18 patchwork-bot notifications in a single day. This batch processing pattern is increasingly common for bluetooth maintainer workflow.

4. **Pauli Virtanen's BlueZ quality sprint**: Pauli submitted 12 messages on April 6 alone — 5 patches for monitor data size checks, 2 for tester bounds fixes, 2 for MCP crash fixes, and 1 for ASAN build isolation — all applied to bluez.git master the same day. This concentrated effort significantly improved BlueZ code quality in a single session.

5. **New vendor engagement expands**: Three new vendor integrations appeared: Synaptics 4384 (Kaihsin Chung, first Synaptics Bluetooth contribution), Broadcom channel priority commands (Sasha Finkelstein via Apple, adding A2DP/LE priority control), and MediaTek btmtk event filter (Chris Lu, iterating through v1-v3). This broadens the diversity of hardware vendors actively contributing.

6. **Channel Sounding reaches v2**: Naga Bhavani Akella (Qualcomm) posted v2 of the BlueZ Channel Sounding implementation after Luiz's review of v1 in W14, progressing the RAP interface, CS config parsing, and Reflector role event handling — one of the major new Bluetooth features under development.

7. **btintel_pcie stability concerns surface**: Two new bug reports emerged for btintel_pcie: Bug 221339 (AX200 firmware -19 errors after firmware update 20260313-1.1) and Bug 221346 (btintel_pcie 8086:e476 synchronize_irq hang during reboot stress testing). These add to the growing attention on Intel PCIe Bluetooth driver stability.
