---
title: "Weekly Report: linux-bluetooth Mailing List - April 20 - April 26, 2026 (Week 17)"
date: 2026-04-26
summary: "A landmark week marked by the BlueZ Face-to-Face Meetup announcement (Nice, France, May 30-31) and Bastien Nocera's massive meson build system v9 series (15 patches, 16 messages) proposing a complete build system migration plus HTML documentation generation."
draft: false
---

**Total messages: 286 (164 human, 122 CI/bot)**

Note: Of the 286 messages, 164 are human-generated, 122 are CI/bot (bluez.test.bot 39, BluezTestBot 34, patchwork-bot+bluetooth 21, Sasha Levin AUTOSEL 13, kernel test robot 7, bugzilla-daemon 6, syzbot 2).

---

## Summary

A landmark week marked by the [**BlueZ Face-to-Face Meetup announcement**](https://lore.kernel.org/linux-bluetooth/3279c8579e9c1750c672bc070b91a48c13a3f4e7.camel@collabora.com/) (Nice, France, May 30-31) and Bastien Nocera's massive [**meson build system v9 series**](https://lore.kernel.org/linux-bluetooth/20260424091324.3097084-1-hadess@hadess.net/) (15 patches, 16 messages) proposing a complete build system migration plus HTML documentation generation. Bastien was the second-most prolific human contributor (20 messages) also contributing sixaxis DS4 bdaddr fix and ongoing glib removal. Luiz Augusto von Dentz led with 25 messages spanning reviews, the [**ISDN/CMTP removal**](https://lore.kernel.org/linux-bluetooth/20260422105516.GN651125@horms.kernel.org/) discussion (supporting Jakub Kicinski's net-deletions proposal to remove the Bluetooth CMTP protocol), [input LE bonding HIDP fix](https://lore.kernel.org/linux-bluetooth/20260422150328.2062359-1-luiz.dentz@gmail.com/) (v1, applied to master), audio CIS transport Links property (v2/v3, applied), [custom CCC callbacks](https://lore.kernel.org/linux-bluetooth/20260423150454.1908352-1-prathm@qti.qualcomm.com/) (v1/v2, applied), btsnoop-analyzer workflow permissions, and extensive code reviews. Michael Bommarito was the most prolific new contributor (12 messages) posting multiple security hardening patches: [hci_uart NULL deref fix](https://lore.kernel.org/linux-bluetooth/20260421135639.3185653-1-michael.bommarito@gmail.com/), L2CAP zero txwin_size handling, virtio_bt rx clamping, and RFCOMM credit validation. Frédéric Danis (Collabora, 11 messages) continued btpclient expansion and posted the [audio CIS transport Links property series](https://lore.kernel.org/linux-bluetooth/92cf3875-562d-4557-8213-086bf10cf4a8@collabora.com/) (v1-v3). Prathibha Madugonde (Qualcomm, 8 messages) introduced [**RAS (Ranging Aware Service) Packet format and Notification support**](https://lore.kernel.org/linux-bluetooth/20260424175254.2905834-1-prathm@qti.qualcomm.com/) (v1/v2, applied to bluez.git) — a companion Bluetooth 6.0 feature to Channel Sounding.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [PATCH net-deletions] net: remove ISDN subsystem and Bluetooth CMTP | Jakub Kicinski | Meta | 1 | Apr 22; proposes removing ISDN and CMTP from bluetooth; Luiz ACK'd, Greg KH, Stephen Hemminger, Simon Horman, Randy Dunlap all supported; applied via patchwork-bot+netdevbpf (Apr 27) |
| [PATCH v4] Bluetooth: btmtk: validate WMT event SKB length before struct access | Tristan Madani | Independent | 1 | v4 (Apr 21); continuing from W16 v2/v3; applied |
| [PATCH v3] Bluetooth: hci_bcm4377: validate firmware event length in completion ring | Tristan Madani | Independent | 1 | v3 (Apr 21); continuing from W16 |
| [PATCH v2] Bluetooth: btintel_pcie: treat boot stage bit 12 as warning | Kiran K | Intel | 1 | v2 (Apr 20); continuing from W16; applied |
| [PATCH] Bluetooth: SCO: hold sk properly in sco_conn_ready | Pauli Virtanen | Independent | 1 | Continued discussion (Apr 20); applied |
| [PATCH v2] Bluetooth: 6lowpan: fix cyclic locking warning on netdev unregister | Pauli Virtanen | Independent | 1 | v2 (Apr 22); applied |
| [PATCH v2 0/2] Bluetooth: ISO: Fix KCSAN data-races on iso_pi(sk) | SeungJu Cheon | Independent | 2 | v2 (Apr 21); ISO socket KCSAN data race fixes; applied |
| [PATCH] Bluetooth: hci_uart: Fix NULL deref in recv callbacks when priv is uninitialized | Michael Bommarito | Independent | 1 | Apr 21; hci_uart NULL dereference fix; applied |
| [PATCH] Bluetooth: L2CAP: handle zero txwin_size in ERTM RFC option | Michael Bommarito | Independent | 1 | Apr 22; continued from W16; L2CAP ERTM zero window handling |
| [PATCH] Bluetooth: virtio_bt: clamp rx length before skb_put | Michael Bommarito | Independent | 1 | Apr 22; continued from W16; virtio_bt rx bounds check |
| [PATCH] Bluetooth: RFCOMM: require a credit byte before consuming it | Pengpeng Hou / Michael Bommarito | ISCAS / Independent | 1 | Apr 22/24; RFCOMM credit validation (discussion) |
| [PATCH v2 0/2] Bluetooth: Use AES-CMAC library API | Eric Biggers | Independent | 2 | v2 (Apr 22); switch from shash to AES-CMAC library; applied |
| [PATCH v2 1/2] Bluetooth: Remove unneeded crypto kconfig selections | Eric Biggers | Independent | 2 | v2 (Apr 23); crypto Kconfig cleanup |
| [PATCH v3 0/8] Bluetooth, wifi, arm64: extend WCN driver to support WCN399x device | Manivannan Sadhasivam | Qualcomm | 8 | Apr 20; cross-subsystem WCN399x BT+WiFi+arm64 |
| [PATCH v1 0/6] sdio: About pointers in sdio_device_id::driver_data | Uwe Kleine-König | BayLibre | 6 | Apr 22; continued from W16; SDIO driver_data pointer cleanup affecting btsdio |
| [PATCH] Bluetooth: btusb: Add Mercusys MA530 for Realtek RTL8761BUV | Kryštof Korb / Marek Czerski | Independent | 1 | Apr 22-23; Realtek device ID; applied |
| [PATCH v2] Bluetooth: btusb: Add Realtek RTL8922AE VID/PID 0bda/d922 | zhangchen200426 | Independent | 1 (2 revisions) | v1 (Apr 24), v2 (Apr 24); new Realtek RTL8922AE device ID; applied |
| [PATCH] Bluetooth: btusb: Add Realtek RTL8922AE VID/PID 0bda/d923 | zhangchen200426 | Independent | 1 | Apr 24; additional RTL8922AE variant; applied |
| [PATCH v1] Bluetooth: HIDP: Fix possible UAF | Jeongjun Park | Independent | 1 | Apr 22; HIDP use-after-free fix |
| [PATCH] Bluetooth: btmtk: accept too short WMT FUNC_CTRL events | Pauli Virtanen | Independent | 1 | Apr 24; workaround for MediaTek short WMT events |
| [PATCH] Bluetooth: btusb: deal with MT7925 invalid ISO RX packets | Pauli Virtanen | Independent | 1 | Apr 24; handle bogus ISO RX packets from MT7925 |
| [PATCH v2] Bluetooth: btmtk: don't generate bogus ISO packets from zero padding | Pauli Virtanen | Independent | 1 (2 revisions) | Apr 25; prevent bogus ISO packets from zero-padded USB transfers |
| [PATCH v2] Bluetooth: btusb: Add TP-Link UB600 for Realtek 8761BUV | Nils Helmig | Independent | 1 (2 revisions) | v1 and v2 (Apr 25); new Realtek device ID |
| [PATCH] Bluetooth: btrtl: fix uninitialized scalar value | Hrvoje Nuic | Independent | 1 | Apr 22; btrtl uninitialized variable fix |
| [PATCH 00/12] Fixes/improvements for the PCI M.2 power sequencing driver | Andy Shevchenko | Intel | 12 | Apr 23-24; PCI M.2 power sequencing fixes (cross-subsystem) |
| [PATCH AUTOSEL 6.18/7.0-6.1] various stable backports | Sasha Levin | Microsoft | 13 | Apr 20; automated stable backports of recent bluetooth fixes |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [PATCH BlueZ v9 00/15] Add meson build system and HTML docs | Bastien Nocera | Red Hat | 15 | Apr 24; major RFC proposing meson build system migration + Sphinx HTML documentation; 16 messages |
| [PATCH BlueZ v11 0/3] Add initial Channel Sounding support | Naga Bhavani Akella | Qualcomm | 3 | v11 (Apr 21/23); continuing rapid iteration from W16's v3-v10; applied |
| [PATCH BlueZ v1 0/2] Add RAS Packet format and Notification support | Prathibha Madugonde | Qualcomm | 2 (2 revisions) | v1 (Apr 24), v2 (Apr 25); new RAS (Ranging Aware Service) packet format + notification handling for Channel Sounding |
| [PATCH BlueZ v1/v2/v3 1/3] audio: Add ability to force CIS transport Links property | Frédéric Danis | Collabora | 3 (3 revisions) | v1 (Apr 20), v2 (Apr 23), v3 (Apr 23); force CIS transport Links property for audio; applied to master |
| [PATCH BlueZ v1] input: Fix checking LE bonding on HIDP | Luiz Augusto von Dentz | Intel | 1 | v1 (Apr 22); fix LE bonding check for HIDP connections; applied to master |
| [PATCH BlueZ v2] src/shared: add custom CCC callbacks | Luiz Augusto von Dentz | Intel | 1 (2 revisions) | v1 (Apr 23), v2 (Apr 24); custom CCC callbacks for intercepting client notification subscriptions; applied to master |
| [PATCH BlueZ v1] doc: Add AI coding assistants guidelines | Luiz Augusto von Dentz | Intel | 1 | Apr 21; AGENTS.md documentation for AI coding guidelines; applied to master |
| [PATCH BlueZ v1] Add permissions for btsnoop-analyzer workflow | Luiz Augusto von Dentz | Intel | 1 | Apr 21; workflow permissions fix; applied to master |
| [PATCH BlueZ] sixaxis: DS4: use 0x12 cmd to get device bdaddr | Bastien Nocera | Red Hat | 1 | Apr 23; DualShock 4 bdaddr retrieval using HID report 0x12; continued from W16 |
| [PATCH BlueZ v2] sixaxis: Fix pairing Esperanza EGG109k controller | Alonso Garrigues | Independent | 1 | Apr 24; applied to master; fixes pairing for budget PS3-compatible controller |
| [PATCH BlueZ 0/1] client: add public-broadcast advertise helper | Raghavendra Rao | Collabora | 1 | Continued discussion; public broadcast advertising command |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| BlueZ Face-to-Face Meetup - Nice, France, May 30-31, 2026 | George Kiagiadakis | Apr 20; Collabora hosting BlueZ developer meetup; announced to mailing list |
| Bug 221339 AX200 -19 errors on boot after firmware 20260313-1.1 | bugzilla-daemon | Continued (Apr 22); Intel AX200 firmware regression |
| Bug 221411 9460/9560 Jefferson Peak can't detect certain bluetooth devices | bugzilla-daemon | New (Apr 24); Intel 9460/9560 device detection issue |
| [regression] AX200 -19 errors on boot after firmware 20260313-1.1 | Thorsten Leemhuis | Apr 20; regression tracker forwarding |
| Oops with 6.19.10 | Thorsten Leemhuis | Apr 24; continued discussion of kernel 6.19.10 bluetooth oops |
| [syzbot] KASAN: slab-use-after-free in process_one_work (2) | syzbot | Apr 22; bluetooth-related UAF fuzz report |
| [syzbot] WARNING in hci_send_cmd (4) | syzbot | Apr 26; hci_send_cmd warning fuzz report |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 25 |
| Bastien Nocera | Red Hat | 20 |
| Manivannan Sadhasivam | Qualcomm | 13 |
| Michael Bommarito | Independent | 12 |
| Frédéric Danis | Collabora | 11 |
| Prathibha Madugonde | Qualcomm | 8 |
| Pauli Virtanen | Independent | 7 |
| Uwe Kleine-König | BayLibre | 5 |
| Paul Menzel | Max Planck Institute (MPG) | 4 |
| Naga Bhavani Akella | Qualcomm | 4 |
| Eric Biggers | Independent | 4 |
| Dmitry Baryshkov | Qualcomm | 4 |
| zhangchen200426 | Independent | 3 |
| Tristan Madani | Independent | 3 |
| SeungJu Cheon | Independent | 3 |
| Greg KH | Linux Foundation | 3 |
| Andrew Lunn | Independent | 3 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- Bluetooth: SCO: hold sk properly in sco_conn_ready (Pauli Virtanen, Apr 20)
- Bluetooth: btmtk: validate WMT event SKB length before struct access (Tristan Madani, v4, Apr 21)
- Bluetooth: hci_uart: Fix NULL deref in recv callbacks (Michael Bommarito, Apr 21)
- Bluetooth: ISO: Fix KCSAN data-races on iso_pi(sk) (SeungJu Cheon, v2, Apr 21)
- Bluetooth: btintel_pcie: treat boot stage bit 12 as warning (Kiran K, v2, Apr 20)
- Bluetooth: 6lowpan: fix cyclic locking warning on netdev unregister (Pauli Virtanen, v2, Apr 22)
- Bluetooth: Use AES-CMAC library API (Eric Biggers, v2, 2-patch series, Apr 22)
- Bluetooth: btusb: Add Mercusys MA530 for Realtek RTL8761BUV (Marek Czerski, Apr 23)
- Bluetooth: btusb: Add Realtek RTL8922AE VID/PID 0bda/d922 (zhangchen200426, v2, Apr 24)
- Bluetooth: btusb: Add Realtek RTL8922AE VID/PID 0bda/d923 (zhangchen200426, Apr 24)
- net: remove ISDN subsystem and Bluetooth CMTP (Jakub Kicinski, applied via patchwork-bot+netdevbpf, Apr 27)

### Pushed to bluez/bluez master

- 73c694..bcfaf5: audio: Add ability to force CIS transport Links property (Frédéric Danis, Apr 20), client/btpclient BAP discover + GATT discovery (Frédéric Danis, Apr 20)
- bcfaf5..fc03db: doc: Add AI coding assistants guidelines (Luiz, Apr 21), input: Fix checking LE bonding on HIDP (Luiz, Apr 21), Add permissions for btsnoop-analyzer workflow (Luiz, Apr 21)
- fc03db..e4a8b6: input: Fix checking LE bonding on HIDP updates (Apr 22), sixaxis: Fix pairing Esperanza EGG109k controller (Alonso Garrigues, Apr 22)
- e4a8b6..5d9d39: audio: CIS transport Links v2/v3 (Frédéric Danis, Apr 23), custom CCC callbacks (Luiz, Apr 23), btsnoop-analyzer permissions (Apr 23)
- 5d9d39..f8f5c8: src/shared: custom CCC callbacks v2 (Luiz, Apr 24), input HIDP LE bonding (Apr 24), client: public-broadcast advertising (Raghavendra Rao, Apr 24), RAS packet format (Prathibha Madugonde, Apr 24)
- f8f5c8..06d3ff: src/shared: Add RAS packet format and notification support v2 (Prathibha Madugonde, Apr 25)

### Also applied to bluez.git (via patchwork notifications)

- audio: Add ability to force CIS transport Links property (Frédéric Danis, v3, 3-patch series, Apr 23)
- sixaxis: Fix pairing Esperanza EGG109k controller (Alonso Garrigues, v2, Apr 24)
- src/shared: add custom CCC callbacks (Luiz, v2, Apr 24)
- Add RAS Packet format and Notification support (Prathibha Madugonde, v2, 2-patch series, Apr 25)
- Channel Sounding v11 (Naga Bhavani Akella, 3-patch series, Apr 21)

---

## Company Focus Areas

### Intel
Luiz Augusto von Dentz led with 25 messages: supported ISDN/CMTP removal, posted input: Fix checking LE bonding on HIDP (applied to master), audio CIS transport Links reviews, custom CCC callbacks for notification subscriptions (v1/v2, applied), AI coding guidelines (AGENTS.md, applied), btsnoop-analyzer workflow permissions (applied), and extensive reviews across btmtk, Channel Sounding, RFCOMM, and security patches. Kiran K posted v2 of btintel_pcie boot stage bit 12 warning (applied). Andy Shevchenko contributed to PCI M.2 power sequencing fixes.

### Red Hat
Bastien Nocera was the second-most prolific contributor (20 messages): posted the landmark **meson build system v9 series** (15 patches) proposing build system migration from autotools to meson with HTML documentation generation, plus the sixaxis DS4 bdaddr fix continued from W16. The meson series represents a significant potential infrastructure change for BlueZ.

### Qualcomm
Manivannan Sadhasivam drove the WCN399x BT+WiFi+arm64 cross-subsystem series (13 messages via B4 Relay), receiving feedback from Dmitry Baryshkov, Konrad Dybcio, Andy Shevchenko, and Andrew Lunn. Prathibha Madugonde introduced RAS (Ranging Aware Service) Packet format and Notification support (v1/v2, 8 messages, applied to bluez.git) — a companion feature to Channel Sounding for distance measurement data exchange. Naga Bhavani Akella posted v11 of Channel Sounding (4 messages, applied), continuing the rapid iteration. Dmitry Baryshkov contributed 4 messages in cross-subsystem discussions.

### Collabora
Frédéric Danis contributed 11 messages: audio CIS transport Links property (v1-v3, applied to master) and btpclient GATT/BAP patches. George Kiagiadakis announced the BlueZ Face-to-Face Meetup in Nice, France (May 30-31).

### BayLibre
Uwe Kleine-König continued the SDIO driver_data pointer type cleanup series (5 messages), affecting btsdio among other SDIO drivers.

### Meta
Jakub Kicinski proposed removing the ISDN subsystem and Bluetooth CMTP protocol from the kernel (1 message), receiving immediate support from Luiz, Greg KH, Stephen Hemminger, Simon Horman, and Randy Dunlap. Applied via patchwork-bot+netdevbpf on Apr 27.

### Max Planck Institute (MPG)
Paul Menzel contributed 4 review messages across multiple threads including Mercusys device ID and other patches.

### Linux Foundation
Greg KH contributed 3 messages: stable backport reviews and ISDN/CMTP removal support.

### Independent Contributors
Michael Bommarito was the most active new independent contributor (12 messages), posting multiple security hardening patches: hci_uart NULL deref fix (applied), L2CAP zero txwin_size ERTM handling, virtio_bt rx length clamping, and RFCOMM credit byte validation discussions. Pauli Virtanen contributed 7 messages: SCO sock_hold fix (applied), 6lowpan cyclic locking v2 (applied), btmtk short WMT events workaround, btusb MT7925 invalid ISO RX handling, and btmtk bogus ISO packet prevention (v1/v2). Eric Biggers posted v2 of the crypto Kconfig cleanup + AES-CMAC library API migration (4 messages, applied). Tristan Madani's btmtk WMT v4 and hci_bcm4377 v3 were applied (3 messages). SeungJu Cheon posted ISO KCSAN data-race fixes v2 (3 messages, applied). zhangchen200426 posted Realtek RTL8922AE device IDs v1/v2 (3 messages, applied). Nils Helmig posted TP-Link UB600 Realtek device ID (2 messages). Alonso Garrigues fixed Esperanza EGG109k controller pairing (applied). Hrvoje Nuic fixed btrtl uninitialized variable. Jeongjun Park posted HIDP UAF fix.

---

## Notable Trends

1. **BlueZ Face-to-Face Meetup announced**: Collabora is hosting a BlueZ developer meetup in Nice, France on May 30-31, 2026. This is the first in-person BlueZ developer gathering announced on the mailing list, signaling growing community coordination needs as the project's scope expands (LE Audio, Channel Sounding, RAS).

2. **ISDN subsystem and CMTP removal**: Jakub Kicinski proposed removing the entire ISDN subsystem and Bluetooth CMTP from the kernel, receiving immediate unanimous support from maintainers and reviewers. CMTP (CAPI Message Transport Protocol over Bluetooth) was an obscure protocol for ISDN-over-Bluetooth that has been effectively dead for years. Applied within a week.

3. **Meson build system proposal**: Bastien Nocera's v9 15-patch series proposing meson as BlueZ's build system (alongside autotools initially) with HTML documentation represents one of the most significant infrastructure changes proposed for BlueZ in recent years. If accepted, this would modernize the build process and improve documentation accessibility.

4. **RAS support emerges alongside Channel Sounding**: Prathibha Madugonde (Qualcomm) introduced RAS (Ranging Aware Service) Packet format and Notification support — a companion Bluetooth 6.0 feature to Channel Sounding that handles distance measurement data exchange. Combined with Naga Bhavani Akella's CS v11 (applied), Qualcomm is building comprehensive Bluetooth ranging support.

5. **MediaTek ISO packet handling issues**: Pauli Virtanen posted three patches addressing MT7925 ISO-related issues: accepting short WMT FUNC_CTRL events, handling invalid ISO RX packets, and preventing bogus ISO packets from zero-padded USB transfers. This suggests real-world ISO audio testing with MediaTek hardware is revealing firmware quirks that need kernel-side workarounds.

6. **Security hardening wave continues**: Michael Bommarito's burst of security patches (hci_uart NULL deref applied, L2CAP zero txwin_size, virtio_bt rx clamping) combined with Tristan Madani's v4 btmtk and v3 hci_bcm4377 OOB read fixes (both applied) demonstrates continued community focus on bluetooth stack hardening.

7. **AI coding guidelines formalized**: Luiz added AGENTS.md to BlueZ (doc: Add AI coding assistants guidelines), establishing formal rules for AI-assisted contributions including attribution tags and human review requirements. This makes BlueZ one of the first bluetooth/kernel-adjacent projects to formalize AI contribution policies.
