---
title: "Weekly Report: linux-bluetooth Mailing List - February 9-13, 2026 (W07)"
date: 2026-02-13
summary: "An active week on the linux-bluetooth mailing list with 175 messages covering kernel bug fixes, BlueZ userspace patches, new hardware support, build system overhaul, and community announcements."
draft: false
---
## February 9 - 13, 2026 (Week 07)

**Total messages: 175**

---

## Summary

An active week on the linux-bluetooth mailing list with 175 messages covering kernel bug fixes, BlueZ userspace patches, new hardware support, build system overhaul, and community announcements.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Status/Notes |
|-------|------|-------------|--------------|
| **L2CAP: Fix missing key size check for L2CAP_LE_CONN_REQ** | Luiz Augusto von Dentz | Intel | v1 posted Feb 13 |
| **L2CAP: Fix response to L2CAP_ECRED_CONN_REQ** | Luiz Augusto von Dentz | Intel | v1 posted Feb 11, accepted |
| **L2CAP: Fix result of L2CAP_ECRED_CONN_RSP when MTU is too short** | Luiz Augusto von Dentz | Intel | v3 posted Feb 10, accepted |
| **Fix CIS host feature condition** | Mariusz Skamra | Codecoup | v1 & v2 Feb 12, review from Greg KH and Paul Menzel |
| **mgmt: Fix heap overflow and race condition in mesh handling** | Maiquel Paiva | Independent | Rapid iteration: v5 through v8 posted Feb 13 |
| **hci_qca: Fix confusing shutdown()/power_off() naming + Fix BT not powered-off on rmmod** | Hans de Goede | Qualcomm | 2-patch series, Feb 12, review from Paul Menzel |
| **Bluetooth: purge error queues in socket destructors** | Heitor Alves de Siqueira | Igalia | v1 posted Feb 11, accepted |
| **fix use-after-free in hci_conn_drop** | Masahiro Kawada | Independent | Posted Feb 9, discussion with Hillf Danton |
| **btbcm: Add entry for BCM4343A2 UART Bluetooth** | Marek Vasut | NablaDev | Posted Feb 9, review from Paul Menzel |
| **qca: Refactor code on the basis of chipset names** | Vivek Sahu | Qualcomm | v1 posted Feb 10, accepted, reviewed by Dmitry Baryshkov |
| **qca: add QCC2072 support** | Vivek Sahu | Qualcomm | v2-v3 posted Feb 9, reviews from Dmitry Baryshkov, Bartosz Golaszewski, Krzysztof Kozlowski |
| **btusb: MT7922 Add VID/PID 0e8d/223c + MT7925 Add VID/PID 0e8d/8c38** | Chris Lu | MediaTek | 2-patch series, Feb 13 |
| **RFC: remove all PCMCIA drivers** | Ethan Nelson-Moore | Independent | RFC posted Feb 11, discussion with Luiz, Dominik Brodowski, Christophe Leroy |
| **driver core: Make deferred_probe_timeout default a Kconfig option** | Hans de Goede | Qualcomm | Cross-subsystem, Feb 12 |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Status/Notes |
|-------|------|-------------|--------------|
| **bass: Fix crash if setup is freed before bass_bcode_req response** | Luiz Augusto von Dentz | Intel | v1 posted Feb 12, accepted & merged |
| **doc/btmon: Add reading output section** | Luiz Augusto von Dentz | Intel | v1 posted Feb 12, accepted & merged |
| **client: Add mgmt.exp-iso command** | Luiz Augusto von Dentz | Intel | v1 (2 patches) posted Feb 10, accepted & merged |
| **adapter: Add btd_adapter_send_cmd_event_sync** | Luiz Augusto von Dentz | Intel | v1 posted Feb 9, accepted & merged |
| **bap: Fix use-after-free in broadcast sink cleanup** | Sarveshwar Bajaj | NXP | v1 posted Feb 13, reviewed by Pauli Virtanen |
| **emulator: Fix compilation on big endian systems** | Bastien Nocera | Red Hat | v2 posted Feb 10, accepted & merged; review from Pauli Virtanen |
| **shared/util: Add byte-swapping macros for constants** | Bastien Nocera | Red Hat | Posted Feb 9 (companion to big-endian fix) |
| **Add meson build system and HTML docs** (v8, 15 patches) | Bastien Nocera | Red Hat | Major series posted Feb 11 covering: meson build, libell wrap, systemd deps, tool installation, emulator install, disable-bluetoothd option, concurrent tests, profile/gdbus conditionals, docs deployment, GATT docs |
| **tools/btpclient: Add GATT support to get Device name** | Frederic Danis | Collabora | v1 and v2 posted Feb 11 |
| **gatt-client: Implement error handling for DB_OUT_OF_SYNC in GATT caching** | Mengshi Wu | Qualcomm | v4 posted Feb 10 |

### Build & Infrastructure

- **5.86 build failure** reported by Bastien Nocera (Red Hat) on Feb 9, related to library version update
- **bluetooth-next BUILD SUCCESS** notifications from kernel test robot (Feb 10, Feb 12)
- **kernel test robot** flagged build issues in QCC2072 v2 patches (Feb 10)
- **Patchwork bot** sent acceptance notifications for 10+ patches throughout the week

### Community

- **BlueZ Face-to-Face Meetup** announced by George Kiagiadakis (Collabora): **Nice, France, May 30-31, 2026** (posted Feb 10-11)
- **SIG-Qualification discussion**: Christian Eggers (ARRI) raised problems with setting TSPC_L2CAP_4_3; Luiz responded Feb 13
- **GATT test questions**: Christian Eggers (ARRI) asked about running GATT/SR/GAI/BV-01-C and BV-02-C tests; Luiz responded Feb 11

### Bug Reports

- **Bugzilla #220815**: Request to add Realtek RTL8852CE device ID (13d3:3612)

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | ~20 |
| bluez.test.bot (CI) | BlueZ CI | ~20 |
| Bastien Nocera | Red Hat | ~18 |
| patchwork-bot+bluetooth | kernel.org | ~12 |
| Maiquel Paiva | Independent | ~10 |
| Vivek Sahu | Qualcomm | ~10 |
| Frederic Danis | Collabora | ~4 |
| Hans de Goede | Qualcomm | ~4 |
| Mariusz Skamra | Codecoup | ~3 |
| Dmitry Baryshkov | Linaro | ~3 |
| Masahiro Kawada | Independent | ~3 |
| Christian Eggers | ARRI | ~3 |
| Sarveshwar Bajaj | NXP | ~3 |
| Chris Lu | MediaTek | ~2 |
| Mengshi Wu | Qualcomm | ~2 |
| George Kiagiadakis | Collabora | ~2 |
| Marek Vasut | NablaDev | ~2 |
| Hillf Danton | Independent | ~2 |
| Heitor Alves de Siqueira | Igalia | ~1 |
| Ethan Nelson-Moore | Independent | ~1 |

---

## Merged to master (BlueZ)

Commits pushed to `bluez/bluez` master during this period:
1. `adapter: Add btd_adapter_send_cmd_event_sync` -- Bastien Nocera (Red Hat)
2. `client: Add mgmt.exp-iso command` -- Luiz Augusto von Dentz (Intel)
3. `bass: Fix crash if setup is freed before bass_bcode_req response` -- Luiz Augusto von Dentz (Intel)
4. `doc/btmon: Add reading output section` -- Luiz Augusto von Dentz (Intel)

---

## Company Focus Areas

### Intel
Maintainer-driven work across the full stack. On the kernel side, focused on **L2CAP protocol correctness**, fixing key size checks, ECRED connection request/response handling, and MTU validation. On the BlueZ userspace side, work targeted **LE Audio / ISO support** (new `mgmt.exp-iso` command), **BASS broadcast stability** (crash fix), **btmon documentation**, and adapter command synchronization improvements. Intel remains the primary driver of both kernel subsystem maintenance and BlueZ upstream development.

### Red Hat
Major effort on **build system modernization**, submitting v8 of a 15-patch meson build system series -- the largest single contribution this week. This covers meson wraps, systemd dependency separation, conditional builds, concurrent test execution, and HTML documentation generation/deployment. Additionally contributed **portability fixes** (big-endian compilation, byte-swapping macros) and reported the 5.86 build failure.

### Qualcomm
Active across multiple fronts. **New hardware enablement** with QCC2072 chipset support (v2-v3) and QCA driver refactoring by chipset names. **Driver reliability** with hci_qca shutdown/power-off naming cleanup and BT power-off on rmmod fix. **GATT caching** improvements with DB_OUT_OF_SYNC error handling. Also contributed a cross-subsystem patch for deferred probe timeout configuration.

### Collabora
Focused on **BTP (Bluetooth Test Protocol) tooling**, adding GATT Device Name support to btpclient. Also organized the **BlueZ Face-to-Face Meetup** in Nice, France for May 2026, driving community engagement.

### Codecoup
Working on **LE Audio conformance**, fixing the CIS host feature condition check in the kernel (v1 and v2 after review feedback from Greg KH).

### NXP
Addressed **broadcast audio stability** with a use-after-free fix in BAP broadcast sink cleanup.

### MediaTek
Submitted **new USB device IDs** for MT7922 (0e8d/223c) and MT7925 (0e8d/8c38), expanding hardware support for MediaTek Bluetooth chipsets.

### Igalia
Contributed a **socket layer fix**, purging error queues in Bluetooth socket destructors to prevent resource leaks.

### ARRI
Engaged in **SIG qualification testing**, raising issues with TSPC_L2CAP_4_3 settings and asking about GATT server test procedures (GAI/BV-01-C and BV-02-C).

### NablaDev
Submitted a **Broadcom hardware enablement** patch adding BCM4343A2 UART Bluetooth support.

### Linaro
Participated as a **reviewer**, providing feedback on Qualcomm's QCC2072 enablement patches.

---

## Notable Trends

1. **Security & stability focus**: Multiple use-after-free fixes (BAP broadcast, hci_conn_drop), heap overflow fix in mesh handling, L2CAP protocol correctness fixes
2. **Build system modernization**: Bastien Nocera's meson build series reached v8 with 15 patches -- a significant effort to provide an alternative to autotools
3. **Hardware enablement**: QCC2072 (Qualcomm), MT7922/MT7925 (MediaTek), BCM4343A2 (Broadcom), RTL8852CE (Realtek) device IDs
4. **PCMCIA removal RFC**: Discussion on removing legacy PCMCIA Bluetooth drivers from the kernel
5. **Community building**: Face-to-face meetup announced for May 2026 in Nice, France
