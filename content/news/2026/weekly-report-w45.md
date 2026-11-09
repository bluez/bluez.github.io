---
title: "linux-bluetooth Weekly Report - Week 45"
date: 2026-11-08
summary: "Total messages: 589 (465 human, 124 CI/bot)"
draft: false
---

**Total messages: 589 (465 human, 124 CI/bot)**

Note: Of the 589 messages, 465 are human-generated, 124 are CI/bot (bluez.test.bot: 89, patchwork-bot+bluetooth: 22, kernel test robot: 5, Sasha Levin: 4, bugzilla-daemon: 2, patchwork-bot+netdevbpf: 1, syzbot: 1).

---

## Summary
During week 45 (2 - 8 November 2026) the linux-bluetooth mailing list carried 589 messages, 465 from contributors and 124 from CI and bots. There were 119 human-initiated threads: 65 kernel patch series, 49 BlueZ userspace series and 5 discussions or reports. 22 patches were applied via patchwork and 0 commits were pushed to bluez repositories. The most active contributor was Luiz Augusto von Dentz (Intel) with 197 messages. 20 series went through more than one revision during the week.

---

## Key Patch Series & Discussions

### Kernel Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Bluetooth: Broadcom controllers of the Apple T2 Macs](https://lore.kernel.org/linux-bluetooth/20261104151601.70493-1-dev@deq.rocks/) | Andre Eikmeyer | Independent | 4 | Initial version |
| [Bluetooth: Broadcom controllers of the Apple T2 Macs](https://lore.kernel.org/linux-bluetooth/20261105085750.120392-1-dev@deq.rocks/) | Andre Eikmeyer | Independent | 2 | Version 2 |
| [Bluetooth: Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261104221321.1200529-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 6 | Version 3 |
| [Bluetooth: Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261103221921.4071765-2-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 6 | Initial version |
| [Bluetooth: Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261104183626.838825-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 6 | Version 2 |
| [Bluetooth: Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261105171217.2053745-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 6 | Version 4 |
| [Bluetooth: Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261105184449.2149626-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 6 | Version 5 |
| [Bluetooth: Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261105205056.2218652-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 6 | Version 6 |
| [Bluetooth: Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261106161227.2814291-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 6 | Version 7 |
| [Bluetooth: Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261106181745.3134593-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 6 | Version 8 |
| [Bluetooth: Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261106215738.3562688-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 6 | Version 9 |
| [USB: Lock registered interfaces during manual driver binding](https://lore.kernel.org/linux-bluetooth/20261105-device-trust-core-v1-5-1e536825b4eb@nvidia.com/) | Leon Romanovsky | Independent | 17 | Initial version |

### BlueZ Userspace Patches

| Topic | From | Affiliation | Patches | Status/Notes |
|-------|------|-------------|---------|--------------|
| [Channel Sounding and RAP fixes](https://lore.kernel.org/linux-bluetooth/20261102081913.1623864-1-cheng.jiang@oss.qualcomm.com/) | Cheng Jiang | Qualcomm | 15 | Initial version |
| [obexd/pbap: Update PSE support from PBAP 1.1 to 1.2](https://lore.kernel.org/linux-bluetooth/20261104083429.4111632-1-jinwang.li@oss.qualcomm.com/) | Jinwang Li | Qualcomm | 18 | Initial version |
| [driver core: Expose device trust authorization through sysfs](https://lore.kernel.org/linux-bluetooth/20261105-device-trust-core-v1-10-1e536825b4eb@nvidia.com/) | Leon Romanovsky | Independent | 17 | Initial version |
| [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261105171229.2053802-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 11 | Version 4 |
| [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261106181809.3134862-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 11 | Version 5 |
| [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261107214611.388705-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 11 | Version 6 |
| [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261104222055.1207928-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 10 | Version 3 |
| [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261103221944.4072041-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 9 | Initial version |
| [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261104183647.839090-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 9 | Version 2 |
| [Fix handling of malformed GATT PDUs](https://lore.kernel.org/linux-bluetooth/20261106183350.3155282-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 8 | Version 2 |
| [BAP ASE state handling enhancements](https://lore.kernel.org/linux-bluetooth/20261103203011.3904290-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 7 | Initial version |
| [Fix handling of malformed GATT PDUs](https://lore.kernel.org/linux-bluetooth/20261105221638.2332398-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | Intel | 8 | Initial version |

### Discussions & Bug Reports

| Topic | From | Notes |
|-------|------|-------|
| [[GIT PULL] bluetooth 2026-11-02](https://lore.kernel.org/linux-bluetooth/20261102221725.2603463-1-luiz.dentz@gmail.com/) | Luiz Augusto von Dentz | 5 messages |
| [Revert "net: Convert proto_ops bind() callbacks to use sockaddr_unsized"](https://lore.kernel.org/linux-bluetooth/20261103174541.85310-1-abuehaze@amazon.com/) | Hazem Mohamed Abuelfotoh | 2 messages |
| [Sony WF-1000XM6 call audio fails on Linux: first eSCO setup gets 0x1f, then ACL ...](https://lore.kernel.org/linux-bluetooth/ebfb1f3b-99f4-42bc-b79a-5085af6824ae@gmail.com/) | Arka Bhuiyan | 2 messages |
| [Exposing the bluetoothd version over D-Bus](https://lore.kernel.org/linux-bluetooth/20261106225329.6405-1-kevin@simpleble.org/) | Kevin Dewald | 1 message |
| [[BUG] Bluetooth: btintel_pcie: controller never recovered after HW exception wit...](https://lore.kernel.org/linux-bluetooth/CAFC7XimOGvQUgXzg24vfDZ4q=9obX0yCYrrijus3RwigGOVSQw@mail.gmail.com/) | J R | 1 message |

---

## Series Revised This Week

| Topic | Revisions |
|-------|-----------|
| [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261107214611.388705-1-luiz.dentz@gmail.com/) | v1->v2->v3->v4->v5->v6 |
| [Bluetooth: Add initial support for HDT PHY](https://lore.kernel.org/linux-bluetooth/20261106215738.3562688-2-luiz.dentz@gmail.com/) | v1->v2->v3->v4->v5->v6->v7->v8->v9 |
| [Bluetooth: Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261106215738.3562688-1-luiz.dentz@gmail.com/) | v1->v2->v3->v4->v5->v6->v7->v8->v9 |
| [Bluetooth: Broadcom controllers of the Apple T2 Macs](https://lore.kernel.org/linux-bluetooth/20261105085750.120392-1-dev@deq.rocks/) | v1->v2 |
| [Bluetooth: L2CAP: Keep credits from completing security upgrades](https://lore.kernel.org/linux-bluetooth/20261107071634.2237059-1-cochcoder@proton.me/) | v4->v5->v6->v7->v8 |
| [Bluetooth: btbcm: raise ACL priority on Apple Broadcom controllers](https://lore.kernel.org/linux-bluetooth/20261105085750.120392-2-dev@deq.rocks/) | v1->v2 |
| [Bluetooth: btintel: Add UEFI standalone static SAR support](https://lore.kernel.org/linux-bluetooth/20261108093656.3857961-1-aluvala.sai.teja@intel.com/) | v1->v2 |
| [Bluetooth: btintel_pcie: DBGC flush doorbell and dump rate-limit](https://lore.kernel.org/linux-bluetooth/20261104064610.4109582-1-aluvala.sai.teja@intel.com/) | v1->v2->v3 |
| [Bluetooth: btintel_pcie: Move debug INI parsing to debug file](https://lore.kernel.org/linux-bluetooth/20261104122508.241477-2-aluvala.sai.teja@intel.com/) | v1->v2->v3->v4->v5 |
| [Bluetooth: btintel_pcie: debug INI rework and fatal error injection](https://lore.kernel.org/linux-bluetooth/20261104122508.241477-1-aluvala.sai.teja@intel.com/) | v1->v2->v3->v4->v5 |
| [Bluetooth: btusb: fix use-after-free in force_poll_sync](https://lore.kernel.org/linux-bluetooth/20261105055639.12824-1-25031212351@stu.xidian.edu.cn/) | v1->v2->v3 |
| [Bluetooth: qca: Disable SoC debug logging for WCN3990](https://lore.kernel.org/linux-bluetooth/20261108000449.2664455-1-hex@freenixos.com/) | v1->v2 |

---

## Top Contributors (by message count)

| Contributor | Affiliation | Messages |
|-------------|-------------|----------|
| Luiz Augusto von Dentz | Intel | 197 |
| Leon Romanovsky | Independent | 29 |
| Sai Teja Aluvala | Intel | 21 |
| Jinwang Li | Qualcomm | 20 |
| Kyle Pepper | Independent | 19 |
| Cheng Jiang | Qualcomm | 18 |
| Kevin Dewald | Independent | 12 |
| Andre Eikmeyer | Independent | 11 |
| Bartosz Golaszewski | Qualcomm | 7 |
| Greg Kroah-Hartman | Independent | 7 |

---

## Merged to master (BlueZ & bluetooth-next)

### Applied to bluetooth-next (kernel, via patchwork notifications)

- [Bluetooth: MGMT: Send Connection Subrate on LE connection and update](https://lore.kernel.org/linux-bluetooth/179365801954.694758.1964574440994296679.git-patchwork-notify@kernel.org/)
- [Bluetooth: MGMT: Fix discovery stuck after a failed Stop Discovery](https://lore.kernel.org/linux-bluetooth/179365801804.694758.16698757063901481997.git-patchwork-notify@kernel.org/)
- [Bluetooth: Fix advertising instance accesses without hdev->lock](https://lore.kernel.org/linux-bluetooth/179365801654.694758.6672265217691317645.git-patchwork-notify@kernel.org/)
- [Bluetooth: validate retained LE ISO command lengths](https://lore.kernel.org/linux-bluetooth/179365801530.694758.3065073336478186790.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: DBGC flush doorbell and dump rate-limit](https://lore.kernel.org/linux-bluetooth/179380980870.2929236.9750765977869830675.git-patchwork-notify@kernel.org/)
- [Bluetooth: btintel_pcie: debug INI rework and fatal error injection](https://lore.kernel.org/linux-bluetooth/179380980731.2929236.900247427168680792.git-patchwork-notify@kernel.org/)
- [Bluetooth: qca: Disable SoC debug logging for WCN3950](https://lore.kernel.org/linux-bluetooth/179383082559.3253812.14222626454934978611.git-patchwork-notify@kernel.org/)
- [Bluetooth: L2CAP: Match LE responses to outstanding requests](https://lore.kernel.org/linux-bluetooth/179383082342.3253812.9942140641407431585.git-patchwork-notify@kernel.org/)
- [Bluetooth: Fix not updating of hdev->commands[] after reset](https://lore.kernel.org/linux-bluetooth/179389633229.103975.4552218809952719575.git-patchwork-notify@kernel.org/)
- [Bluetooth: hci_qca: fix use-after-free in ibs debugfs files](https://lore.kernel.org/linux-bluetooth/179389633088.103975.11910858924814622408.git-patchwork-notify@kernel.org/)
- [Bluetooth: btusb: fix use-after-free in force_poll_sync](https://lore.kernel.org/linux-bluetooth/179389632955.103975.1644847337972087743.git-patchwork-notify@kernel.org/)
- [Bluetooth: reject invalid LE supervision timeout relationships](https://lore.kernel.org/linux-bluetooth/179399640976.849577.17436810105504463448.git-patchwork-notify@kernel.org/)

### Applied to BlueZ (via patchwork notifications)

- [profiles/midi: Fix running status across channels](https://lore.kernel.org/linux-bluetooth/179372341454.1736455.18207620929462425550.git-patchwork-notify@kernel.org/)
- [Add LE connection parameters to org.bluez.Bearer.LE1](https://lore.kernel.org/linux-bluetooth/179372341304.1736455.11988052173742240524.git-patchwork-notify@kernel.org/)
- [monitor: Fix Conn Interval rsp group decode](https://lore.kernel.org/linux-bluetooth/179372341154.1736455.322872408424969861.git-patchwork-notify@kernel.org/)
- [Fix linked transports of an ASE not enabled yet](https://lore.kernel.org/linux-bluetooth/179372341004.1736455.15818678357433071838.git-patchwork-notify@kernel.org/)
- [Run test-functional under User Mode Linux](https://lore.kernel.org/linux-bluetooth/179372340880.1736455.17491384995793060538.git-patchwork-notify@kernel.org/)
- [Make Notify Multiple timeout configurable](https://lore.kernel.org/linux-bluetooth/179381940854.3059479.4187675660003846551.git-patchwork-notify@kernel.org/)
- [BAP ASE state handling enhancements](https://lore.kernel.org/linux-bluetooth/179381940730.3059479.12239804796316659769.git-patchwork-notify@kernel.org/)
- [avrcp: Fix GetTotalNumberOfItems command encoding](https://lore.kernel.org/linux-bluetooth/179399100691.811161.16790714216807073653.git-patchwork-notify@kernel.org/)
- [shared/timeout: Fix use-after-free when a timeout removes itself](https://lore.kernel.org/linux-bluetooth/179399100567.811161.6597744778392597032.git-patchwork-notify@kernel.org/)
- [Fix handling of malformed GATT PDUs](https://lore.kernel.org/linux-bluetooth/179408520642.1337848.1745297927626770621.git-patchwork-notify@kernel.org/)

### Pushed to bluez repositories

- None recorded this week.

---

## Company Focus Areas

### Independent Contributors

- [driver core: Expose device trust authorization through sysfs](https://lore.kernel.org/linux-bluetooth/20261105-device-trust-core-v1-10-1e536825b4eb@nvidia.com/)
- [Bluetooth: Broadcom controllers of the Apple T2 Macs](https://lore.kernel.org/linux-bluetooth/20261104151601.70493-1-dev@deq.rocks/)
- [Bluetooth: Broadcom controllers of the Apple T2 Macs](https://lore.kernel.org/linux-bluetooth/20261105085750.120392-1-dev@deq.rocks/)
- [PCI: Replace untrusted state with device trust](https://lore.kernel.org/linux-bluetooth/20261105-device-trust-core-v1-17-1e536825b4eb@nvidia.com/)

### Intel

- [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261105171229.2053802-1-luiz.dentz@gmail.com/)
- [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261106181809.3134862-1-luiz.dentz@gmail.com/)
- [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261107214611.388705-1-luiz.dentz@gmail.com/)
- [Add support for HDT and EKS](https://lore.kernel.org/linux-bluetooth/20261104222055.1207928-1-luiz.dentz@gmail.com/)

### Qualcomm

- [Channel Sounding and RAP fixes](https://lore.kernel.org/linux-bluetooth/20261102081913.1623864-1-cheng.jiang@oss.qualcomm.com/)
- [obexd/pbap: Update PSE support from PBAP 1.1 to 1.2](https://lore.kernel.org/linux-bluetooth/20261104083429.4111632-1-jinwang.li@oss.qualcomm.com/)
- [Bluetooth: Fix Transport_Unit_Size and remove redundant NVMEM dependency](https://lore.kernel.org/linux-bluetooth/20261102-fix_kconf-v2-0-b4bd28de37b5@oss.qualcomm.com/)
- [power: sequencing: qcom-wcn: increase WCN7850 power-up delay](https://lore.kernel.org/linux-bluetooth/20261102094800.3225454-1-shuai.zhang@oss.qualcomm.com/)
