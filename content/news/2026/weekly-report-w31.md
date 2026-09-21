---
title: "linux-bluetooth Weekly Report - Week 31"
date: 2026-08-02
summary: "Total messages: 282 (187 human, 95 CI/bot)"
draft: false
---

**Total messages: 282 (187 human, 95 CI/bot)**

Note: Of the 282 messages, 187 are human-generated, 95 are CI/bot (bluez.test.bot: 49, patchwork-bot+bluetooth: 22, BluezTestBot: 11, bugzilla-daemon: 5, kernel test robot: 4, github-actions[bot]: 3, patchwork-bot+netdevbpf: 1).

---

## Summary
During week 31 (27 July - 2 August 2026) the linux-bluetooth mailing list carried 282 messages, 187 from contributors and 95 from CI and bots. There were 78 human-initiated threads: 57 kernel patch series, 16 BlueZ userspace series and 5 discussions or reports. 22 patches were applied via patchwork and 11 commits were pushed to bluez repositories. The most active contributor was Luiz Augusto von Dentz (Intel) with 26 messages. 9 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: Miscellaneous fixes and cleanups](https://lore.kernel.org/linux-bluetooth/20260801-generic_fix-v3-0-efdd8dcf3430@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 7 | Version 3 |
| [arm64: dts: qcom: rb3gen2: add Industrial BT UART overlay](https://lore.kernel.org/linux-bluetooth/20260727-rb3-industrial-bt-uart-v2-6-2d100f30e202@oss.qualcomm.com/) | Rahul Samana | Qualcomm | 6 | Version 2 |
| [dt-bindings: bluetooth: qca: add QCC2072](https://lore.kernel.org/linux-bluetooth/20260727-rb3-industrial-bt-uart-v2-1-2d100f30e202@oss.qualcomm.com/) | Rahul Samana | Qualcomm | 6 | Version 2 |
| [power: sequencing: rename pwrseq_power_on/off() to pwrseq_vote_on/off()](https://lore.kernel.org/linux-bluetooth/20260727-pwrseq-vote-rename-v1-1-a2029aeeac65@oss.qualcomm.com/) | Bartosz Golaszewski | Qualcomm | 1 | Initial version |
| [Bluetooth: Add support for Shorter Connection Interval (SCI) feature](https://lore.kernel.org/linux-bluetooth/20260729202422.2658332-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 3 | Version 5 |
| [Bluetooth: Miscellaneous fixes and cleanups](https://lore.kernel.org/linux-bluetooth/20260727-generic_fix-v2-0-a57bdb81ac67@oss.qualcomm.com/) | Zijun Hu | Qualcomm | 3 | Version 2 |
| [Bluetooth: btintel_pcie: Add vendor_reset PCI sysfs for PLDR](https://lore.kernel.org/linux-bluetooth/20260727052104.1026824-1-chandrashekar.devegowda@intel.com/) | Chandrashekar Devegowda | Intel | 1 | Version 6 |
| [Bluetooth: hci_conn: hold conn for LE timeout work](https://lore.kernel.org/linux-bluetooth/20260730104103.2080325-1-nicoyip.dev@gmail.com/) | Chengfeng Ye | Independent | 1 | Initial version |
| [power: sequencing: rename pwrseq_power_on/off() to pwrseq_enable/disable()](https://lore.kernel.org/linux-bluetooth/20260731-pwrseq-vote-rename-v2-1-480357946e00@oss.qualcomm.com/) | Bartosz Golaszewski | Qualcomm | 1 | Version 2 |
| [Bluetooth: Add support for Shorter Connection Interval (SCI) feature](https://lore.kernel.org/linux-bluetooth/20260728182011.2334554-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 3 | Version 2 |
| [Bluetooth: Add support for Shorter Connection Interval (SCI) feature](https://lore.kernel.org/linux-bluetooth/20260729153412.2564039-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 3 | Version 3 |
| [Bluetooth: Add support for Shorter Connection Interval (SCI) feature](https://lore.kernel.org/linux-bluetooth/20260729192002.2636087-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 3 | Version 4 |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Add CS procedure data aggregation and D-Bus export](https://lore.kernel.org/linux-bluetooth/20260730064007.1229304-1-naga.akella@oss.qualcomm.com/) | Naga Bhavani Akella | Qualcomm | 3 | Version 3 |
| [bap: Start BIG sync after receiving BIGInfo](https://lore.kernel.org/linux-bluetooth/20260728-big_sync-v3-1-6751ba0802ce@amlogic.com/) | Yang Li | Independent | 1 | Version 3 |
| [Add CS procedure data aggregation and D-Bus export](https://lore.kernel.org/linux-bluetooth/20260729103019.4178720-1-naga.akella@oss.qualcomm.com/) | Naga Bhavani Akella | Qualcomm | 3 | Version 2 |
| [RAP: streamline session handling, reflector setup](https://lore.kernel.org/linux-bluetooth/20260727065954.1053484-1-naga.akella@oss.qualcomm.com/) | Naga Bhavani Akella | Qualcomm | 2 | Version 6 |
| [doc: Add CS distance provider documentation](https://lore.kernel.org/linux-bluetooth/20260731070159.2769120-1-naga.akella@oss.qualcomm.com/) | Naga Bhavani Akella | Qualcomm | 3 | Version 2 |
| [doc: Add Channel Sounding distance provider documentation](https://lore.kernel.org/linux-bluetooth/20260730114340.1576049-1-naga.akella@oss.qualcomm.com/) | Naga Bhavani Akella | Qualcomm | 3 | Initial version |
| [bap: fixed the return value of GIOFunc](https://lore.kernel.org/linux-bluetooth/20260729-fix_iofunc-v1-1-653c8e9ac29a@amlogic.com/) | Yang Li | Independent | 1 | Initial version |
| [bap: fixed the return value of GIOFunc](https://lore.kernel.org/linux-bluetooth/20260729-fix_iofunc-v2-1-f4043eff6664@amlogic.com/) | Yang Li | Independent | 1 | Version 2 |
| [github: Disable stale bot for triaged bugs](https://lore.kernel.org/linux-bluetooth/20260727091948.2746998-1-hadess@hadess.net/) | Bastien Nocera | Red Hat | 1 | Initial version |
| [Support for block device NVMEM providers](https://lore.kernel.org/linux-bluetooth/20260730-block-as-nvmem-v9-0-f72935817dbf@oss.qualcomm.com/) | Loic Poulain | Qualcomm | 10 | Version 9 |
| [bap: Start BIG sync after receiving BIGInfo](https://lore.kernel.org/linux-bluetooth/20260727-big_sync-v2-1-053fd3bcc3be@amlogic.com/) | Yang Li | Independent | 1 | Version 2 |
| [monitor: Decode Intel DDC LE extended features](https://lore.kernel.org/linux-bluetooth/20260730175135.2865308-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 1 | Initial version |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [Fix Out-of-Bounds Read in AVRCP GetFolderItems parsing](https://lore.kernel.org/linux-bluetooth/CADE-WFdQ+35ePBX35mQt6o61dyz7tBkKByVe1BnKzXxpb-njAw@mail.gmail.com/) | Elman Shahbazov | 2 messages |
| [[GIT PULL] bluetooth 2026-07-28](https://lore.kernel.org/linux-bluetooth/20260728201527.2456032-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 2 messages |
| [[SECURITY REPORT] Out-of-Bounds Read (CWE-125) in BlueZ AVRCP Browsing Profile l...](https://lore.kernel.org/linux-bluetooth/CADE-WFfZvGe+khqhxRtdGQOzSZVp4ZXoFoAFNvahsjS_obu7DQ@mail.gmail.com/) | Elman Shahbazov | 1 message |
| [[SECURITY] Out-of-Bounds Read (CWE-125) in BlueZ AVRCP GetFolderItems parsing (w...](https://lore.kernel.org/linux-bluetooth/CADE-WFdXcgeq=7gyzufLDwTh3cY+ECbqCtjPymkcyh30Mz8yMg@mail.gmail.com/) | Elman Shahbazov | 1 message |
| [mediatek MT7922: update bluetooth firmware to 20260724143815](https://lore.kernel.org/linux-bluetooth/20260727031201.63137-1-chris.lu@mediatek.com/) | Chris Lu | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Add CS procedure data aggregation and D-Bus export](https://lore.kernel.org/linux-bluetooth/20260730064007.1229304-1-naga.akella@oss.qualcomm.com/) | v2->v3 |
| [Bluetooth: Add support for Shorter Connection Interval (SCI) feature](https://lore.kernel.org/linux-bluetooth/20260729202422.2658332-1-luiz.dentz@gmail.com/) | v2->v3->v4->v5 |
| [Bluetooth: Miscellaneous fixes and cleanups](https://lore.kernel.org/linux-bluetooth/20260801-generic_fix-v3-0-efdd8dcf3430@oss.qualcomm.com/) | v2->v3 |
| [Bluetooth: SCO: serialise sco_conn lifetime against sco_recv_scodata()](https://lore.kernel.org/linux-bluetooth/20260728042639.1315193-1-qwe.aldo@gmail.com/) | v1->v2 |
| [Bluetooth: btintel: Fix diagnostics event detection](https://lore.kernel.org/linux-bluetooth/20260801-generic_fix-v3-1-efdd8dcf3430@oss.qualcomm.com/) | v2->v3 |
| [Bluetooth: hci_sync: Fix accept list UAF during suspend](https://lore.kernel.org/linux-bluetooth/20260801070524.3547883-1-nicoyip.dev@gmail.com/) | v1->v2 |
| [bap: Start BIG sync after receiving BIGInfo](https://lore.kernel.org/linux-bluetooth/20260728-big_sync-v3-1-6751ba0802ce@amlogic.com/) | v2->v3 |
| [bap: fixed the return value of GIOFunc](https://lore.kernel.org/linux-bluetooth/20260729-fix_iofunc-v2-1-f4043eff6664@amlogic.com/) | v1->v2 |
| [power: sequencing: rename pwrseq_power_on/off() to pwrseq_enable/disab](https://lore.kernel.org/linux-bluetooth/20260731-pwrseq-vote-rename-v3-1-44e60b8be053@oss.qualcomm.com/) | v2->v3 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 26 |
| Naga Bhavani Akella | Qualcomm | 20 |
| Rahul Samana | Qualcomm | 16 |
| Zijun Hu | Qualcomm | 12 |
| Loic Poulain | Qualcomm | 12 |
| Chengfeng Ye | Independent | 9 |
| Bhavani | Independent | 7 |
| Bartosz Golaszewski | Qualcomm | 7 |
| Yang Li | Independent | 6 |
| Pauli Virtanen | Independent | 5 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: ISO: fix HUP on socket release/shutdown + UAF/locking fixes](https://lore.kernel.org/linux-bluetooth/178517220714.1331160.9121301750263866259.git-patchwork-notify@kernel.org/)
- [Bluetooth: Add generic support for vendor HCI frames](https://lore.kernel.org/linux-bluetooth/178517701144.1360613.15398586406872211407.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: Preparation for upcoming Qualcomm QCC2072 support](https://lore.kernel.org/linux-bluetooth/178517701013.1360613.13814217148431362861.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_conn: hold conn reference in abort_conn_sync()](https://lore.kernel.org/linux-bluetooth/178517880851.1372023.12829411898419783534.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_conn: hold conn references in hci_sync tasks](https://lore.kernel.org/linux-bluetooth/178517880663.1372023.9123649060094265539.git-patchwork-notify@kernel.org/)
- [Bluetooth: SCO: give the socket its own sco_conn reference](https://lore.kernel.org/linux-bluetooth/178518541063.1412337.17890508638369383289.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: Add vendor_reset PCI sysfs for PLDR](https://lore.kernel.org/linux-bluetooth/178518540913.1412337.16971564531930709335.git-patchwork-notify@kernel.org/)
- [Bluetooth: fix short read errors in usb_control_msg()](https://lore.kernel.org/linux-bluetooth/178518540763.1412337.1240855663216361705.git-patchwork-notify@kernel.org/)
- [Bluetooth: use named initializers for acpi_device_id](https://lore.kernel.org/linux-bluetooth/178518540639.1412337.3111585831256595939.git-patchwork-notify@kernel.org/)
- [Bluetooth: Add support for Shorter Connection Interval (SCI) feature](https://lore.kernel.org/linux-bluetooth/178542780564.4069407.14152947693810775028.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel: Add Bluetooth SAR revision 2 support](https://lore.kernel.org/linux-bluetooth/178551240514.358291.14957385574860905765.git-patchwork-notify@kernel.org/)
- [Bluetooth: hcli_ldisc: Remove reduntant braces](https://lore.kernel.org/linux-bluetooth/178552381213.861446.17999935623882989992.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_aml: validate firmware segment lengths](https://lore.kernel.org/linux-bluetooth/178552381063.861446.12918007328883610653.git-patchwork-notify@kernel.org/)
- [Bluetooth: virtio_bt: avoid OOB read of build info string](https://lore.kernel.org/linux-bluetooth/178552380913.861446.3061212012664784295.git-patchwork-notify@kernel.org/)
- [Bluetooth: virtio_bt: avoid OOB read of build info string in virtbt_se](https://lore.kernel.org/linux-bluetooth/178552380763.861446.6322185394985227268.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_event: fix LE list UAF on reset](https://lore.kernel.org/linux-bluetooth/178552380614.861446.15530207520125767511.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [bap: Start BIG sync after receiving BIGInfo](https://lore.kernel.org/linux-bluetooth/178525020663.1763279.9677499412602336092.git-patchwork-notify@kernel.org/)
- [github: Disable stale bot for triaged bugs](https://lore.kernel.org/linux-bluetooth/178525020531.1763279.13744669231541644773.git-patchwork-notify@kernel.org/)
- [bap: fixed the return value of GIOFunc](https://lore.kernel.org/linux-bluetooth/178534020629.3138935.4210335244392986040.git-patchwork-notify@kernel.org/)
- [RAP: streamline session handling, reflector setup](https://lore.kernel.org/linux-bluetooth/178534020501.3138935.9208630328565039341.git-patchwork-notify@kernel.org/)
- [Add CS procedure data aggregation and D-Bus export](https://lore.kernel.org/linux-bluetooth/178542600500.4054893.17804747751609690022.git-patchwork-notify@kernel.org/)
- [Add support for Shorter Connection Interval (SCI)](https://lore.kernel.org/linux-bluetooth/178542781213.4069407.17479725999715799508.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- [rap: use session lookup for RAS operations](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1134915%2F000000-fc8f42@github.com/)
- [bap: Start BIG sync after receiving BIGInfo](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F89d477-729f96@github.com/)
- [shared/rap: Add bcs_procedure_data aggregation and...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1136563%2F000000-417b3d@github.com/)
- [bap: fixed the return value of GIOFunc](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2Fmaster%2F729f96-98e5a7@github.com/)
- [shared: Add bcs_procedure_data aggregation and pro...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1137145%2F000000-6ecaf0@github.com/)
- [doc: Add org.bluez.ChannelSoundingDistance1 docume...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1137365%2F000000-8ac88e@github.com/)
- [monitor: Decode Intel DDC LE extended features](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1137629%2F000000-032ea0@github.com/)
- [unit/test-rap: Add PTS tests for CS](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1138148%2F000000-31d59e@github.com/)
- [doc: Add org.bluez.CSDistance1 documentation](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1137931%2F000000-e38a41@github.com/)
- [sync_repo: check workflow branch even when master ...](https://lore.kernel.org/linux-bluetooth/bluez%2Faction-ci%2Fpush%2Frefs%2Fheads%2Fmain%2F058d4c-1e08fd@github.com/)
- [Fix Out-of-Bounds Read in AVRCP GetFolderItems par...](https://lore.kernel.org/linux-bluetooth/bluez%2Fbluez%2Fpush%2Frefs%2Fheads%2F1138845%2F000000-51e23f@github.com/)

---

## Company Focus Areas

### Independent Contributors

- [bap: Start BIG sync after receiving BIGInfo](https://lore.kernel.org/linux-bluetooth/20260728-big_sync-v3-1-6751ba0802ce@amlogic.com/)
- [Bluetooth: hci_conn: hold conn for LE timeout work](https://lore.kernel.org/linux-bluetooth/20260730104103.2080325-1-nicoyip.dev@gmail.com/)
- [Bluetooth: btusb: validate QCA rampatch size](https://lore.kernel.org/linux-bluetooth/20260730161820.11631-1-acharyalaxman8848@gmail.com/)
- [Bluetooth: hci_sync: Fix accept list UAF during suspend](https://lore.kernel.org/linux-bluetooth/20260730092331.2069741-1-nicoyip.dev@gmail.com/)

### Qualcomm

- [Bluetooth: Miscellaneous fixes and cleanups](https://lore.kernel.org/linux-bluetooth/20260801-generic_fix-v3-0-efdd8dcf3430@oss.qualcomm.com/)
- [arm64: dts: qcom: rb3gen2: add Industrial BT UART overlay](https://lore.kernel.org/linux-bluetooth/20260727-rb3-industrial-bt-uart-v2-6-2d100f30e202@oss.qualcomm.com/)
- [dt-bindings: bluetooth: qca: add QCC2072](https://lore.kernel.org/linux-bluetooth/20260727-rb3-industrial-bt-uart-v2-1-2d100f30e202@oss.qualcomm.com/)
- [Add CS procedure data aggregation and D-Bus export](https://lore.kernel.org/linux-bluetooth/20260730064007.1229304-1-naga.akella@oss.qualcomm.com/)

### Intel

- [Bluetooth: Add support for Shorter Connection Interval (SCI) feature](https://lore.kernel.org/linux-bluetooth/20260729202422.2658332-1-luiz.dentz@gmail.com/)
- [Bluetooth: btintel_pcie: Add vendor_reset PCI sysfs for PLDR](https://lore.kernel.org/linux-bluetooth/20260727052104.1026824-1-chandrashekar.devegowda@intel.com/)
- [Bluetooth: Add support for Shorter Connection Interval (SCI) feature](https://lore.kernel.org/linux-bluetooth/20260728182011.2334554-1-luiz.dentz@gmail.com/)
- [Bluetooth: Add support for Shorter Connection Interval (SCI) feature](https://lore.kernel.org/linux-bluetooth/20260729153412.2564039-1-luiz.dentz@gmail.com/)

### MediaTek

- [mediatek MT7922: update bluetooth firmware to 20260724143815](https://lore.kernel.org/linux-bluetooth/20260727031201.63137-1-chris.lu@mediatek.com/)

### Red Hat

- [github: Disable stale bot for triaged bugs](https://lore.kernel.org/linux-bluetooth/20260727091948.2746998-1-hadess@hadess.net/)
