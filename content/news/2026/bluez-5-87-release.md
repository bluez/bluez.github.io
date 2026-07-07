---
title: "Release of BlueZ 5.87"
date: 2026-07-07
summary: "BlueZ 5.87 has been released with improvements and bug fixes."
draft: false
---

This release includes the following changes:

---

## AVRCP

- **avrcp: validate name length when parsing browsed media items** ([#2172](https://github.com/bluez/bluez/pull/2172))
- **avrcp: Abort continuing response on fragmented CT replies** ([#2211](https://github.com/bluez/bluez/pull/2211))

---

## Audio

- **a2dp: Normalize multi-bit codec IE fields in remote Set Configuration** ([#1892](https://github.com/bluez/bluez/pull/1892))
- **a2dp: start connecting sink profile before source** ([#1899](https://github.com/bluez/bluez/pull/1899))
- **a2dp: connect source profile after sink** ([#1902](https://github.com/bluez/bluez/pull/1902))
- **audio/avrcp: fix EVENT_VOLUME_CHANGED not supported** ([#1938](https://github.com/bluez/bluez/pull/1938))
- **transport: Fix set volume failure with invalid device volume** ([#1949](https://github.com/bluez/bluez/pull/1949))
- **audio/player: Ensure metadata string is valid UTF-8** ([#2030](https://github.com/bluez/bluez/pull/2030))
- **audio: Add ability to force CIS transport Links property** ([#2065](https://github.com/bluez/bluez/pull/2065))
- **transport: Complete Acquire for Sink ASE entering Enabling** ([#2210](https://github.com/bluez/bluez/pull/2210))
- **media: use custom DBus timeouts only when remote side is waiting** ([#2233](https://github.com/bluez/bluez/pull/2233))
- **audio: harden a2dp parsers** ([#2242](https://github.com/bluez/bluez/pull/2242))
- **a2dp: Fix handling of codec capability storage** ([#2251](https://github.com/bluez/bluez/pull/2251))

---

## BAP (Basic Audio Profile)

- **bap: reduce ISO sync timeout to 2s** ([#1785](https://github.com/bluez/bluez/pull/1785))
- **bap: reduce ISO sync timeout to 3.6 secs** ([#1808](https://github.com/bluez/bluez/pull/1808))
- **shared/bap: Fix endpoint configuration** ([#1921](https://github.com/bluez/bluez/pull/1921))
- **bap: Fix typo in QoS D-Bus dictionary entry names** ([#2105](https://github.com/bluez/bluez/pull/2105))
- **shared/bap: set QoS state when CIS is lost** ([#2127](https://github.com/bluez/bluez/pull/2127))
- **shared/bap: Fix unused value in qos** ([#2139](https://github.com/bluez/bluez/pull/2139))
- **bap: bound channel allocation ltv copy to avoid stack overflow** ([#2198](https://github.com/bluez/bluez/pull/2198))
- **shared/bap: add ASE Control Point error responses** ([#2199](https://github.com/bluez/bluez/pull/2199))
- **shared/bap: Report invalid-length ASE CP write via notification** ([#2207](https://github.com/bluez/bluez/pull/2207))
- **shared/bap: Initialize ucast/bcast IDs as unset** ([#2229](https://github.com/bluez/bluez/pull/2229))
- **shared/bap: Transition ASE to QoS Configured on CIS loss** ([#2230](https://github.com/bluez/bluez/pull/2230))

---

## BASS (Broadcast Audio Scan Service)

- **bass: Fix crash if setup is freed before bass_bcode_req response** ([#1888](https://github.com/bluez/bluez/pull/1888))
- **bass: Fix crashing on BT_BASS_MOD_SRC** ([#2036](https://github.com/bluez/bluez/pull/2036))
- **bass: allocate subgroup_data for all subgroups in bass_build_bcast_src** ([#2165](https://github.com/bluez/bluez/pull/2165))
- **bass: Fix possible crash on bass_update_bis_sync** ([#2257](https://github.com/bluez/bluez/pull/2257))

---

## Bug Fixes

- **Add Null Pointer Checks** ([#1863](https://github.com/bluez/bluez/pull/1863))
- **Fix use-after-free in BAP broadcast cleanup** ([#1897](https://github.com/bluez/bluez/pull/1897))
- **Fix bluetoothctl no output** ([#1932](https://github.com/bluez/bluez/pull/1932))
- **[] mesh-gatt: Fix JSON files missing from dist** ([#1957](https://github.com/bluez/bluez/pull/1957))
- **Fix mangling of numbered UHID GET_REPORT_REPLY payloads** ([#1960](https://github.com/bluez/bluez/pull/1960))
- **[RESEND,BlueZ] mesh-gatt: Fix JSON files missing from dist** ([#1988](https://github.com/bluez/bluez/pull/1988))
- **Fix unsolicited AVRCP RegisterNotification response** ([#2011](https://github.com/bluez/bluez/pull/2011))
- **BAP broadcast fixes** ([#2052](https://github.com/bluez/bluez/pull/2052))
- **sixaxis: Fix pairing Esperanza EGG109k controller** ([#2063](https://github.com/bluez/bluez/pull/2063))
- **sdp: fix overflow in sdp_extract_seqtype()** ([#2094](https://github.com/bluez/bluez/pull/2094))
- **mpris-proxy: Fix possible crash** ([#2098](https://github.com/bluez/bluez/pull/2098))
- **[RFC,BlueZ] monitor: Fix RAS CS step mode parsing issues** ([#2111](https://github.com/bluez/bluez/pull/2111))
- **pbap: Fix not checking Database Identifier length** ([#2120](https://github.com/bluez/bluez/pull/2120))
- **[RFC,BlueZ] media: Fix possible crash on exit/adapter removal** ([#2122](https://github.com/bluez/bluez/pull/2122))
- **advertising: Fix sending extra bytes with MGMT_OP_ADD_EXT_ADV_DATA** ([#2167](https://github.com/bluez/bluez/pull/2167))
- **test-mesh-crypto: Fix retval for skipped test** ([#2181](https://github.com/bluez/bluez/pull/2181))
- **avdtp: Fix GET_CONFIGURATION cmd** ([#2192](https://github.com/bluez/bluez/pull/2192))

---

## Build System

- **build: never build test-runner with ASAN** ([#2017](https://github.com/bluez/bluez/pull/2017))
- **build: Support libical 4.0** ([#2177](https://github.com/bluez/bluez/pull/2177))

---

## Device Management

- **device: Initialize device volume with a valid value** ([#1810](https://github.com/bluez/bluez/pull/1810))
- **src/adapter.c: Re-pairing and reconnection are required after restart.** ([#1826](https://github.com/bluez/bluez/pull/1826))
- **src: retain const qualifier from pointer** ([#1873](https://github.com/bluez/bluez/pull/1873))
- **adapter: Add btd_adapter_send_cmd_event_sync** ([#1876](https://github.com/bluez/bluez/pull/1876))
- **adapter: Fix "Failed to set default system config" startup warning** ([#1972](https://github.com/bluez/bluez/pull/1972))
- **src/device: Fix stored gatt cache DB Hash value not update** ([#1998](https://github.com/bluez/bluez/pull/1998))
- **src/log.h: Add line number information to log output.** ([#2006](https://github.com/bluez/bluez/pull/2006))
- **device: warn user on BR connection key mismatch** ([#2010](https://github.com/bluez/bluez/pull/2010))
- **device: warn on BR/EDR connection key mismatch** ([#2013](https://github.com/bluez/bluez/pull/2013))
- **device: Fix btd_device_connect_services not discovering** ([#2024](https://github.com/bluez/bluez/pull/2024))
- **src/device: Add ConnectedUUIDs property** ([#2028](https://github.com/bluez/bluez/pull/2028))
- **adapter: add DisableDiscoveryOnConnect option for combo chip coexistence** ([#2054](https://github.com/bluez/bluez/pull/2054))
- **src/shared: implement custom CCC callbacks for intercepting client notification subscriptions** ([#2066](https://github.com/bluez/bluez/pull/2066))
- **src/shared: add custom CCC callbacks** ([#2068](https://github.com/bluez/bluez/pull/2068))
- **adapter: add BCAA UUID also when seen device is not discoverable** ([#2119](https://github.com/bluez/bluez/pull/2119))
- **src/shared: parse local & remote data and expose CS ranging data** ([#2128](https://github.com/bluez/bluez/pull/2128))
- **device: fix inverted NULL check in gatt_db clone** ([#2133](https://github.com/bluez/bluez/pull/2133))
- **adapter: Fix using case sensitive strncmp for pattern match addresses** ([#2179](https://github.com/bluez/bluez/pull/2179))
- **device: Refactor device_discover_services function** ([#2186](https://github.com/bluez/bluez/pull/2186))
- **device: Fix auth_retry timeout not being removed on reconnect** ([#2191](https://github.com/bluez/bluez/pull/2191))
- **device: Fix cache update on device remove** ([#2194](https://github.com/bluez/bluez/pull/2194))
- **adapter: Fix failed bonding attempt after LE link disconnection** ([#2213](https://github.com/bluez/bluez/pull/2213))
- **adapter: Fix crash on dev_disconnected** ([#2264](https://github.com/bluez/bluez/pull/2264))

---

## Documentation

- **doc/bluetoothctl: Document arguments and add examples** ([#1856](https://github.com/bluez/bluez/pull/1856))
- **doc: Add cross-references between bluetoothctl and D-Bus API documentation** ([#1859](https://github.com/bluez/bluez/pull/1859))
- **doc/btmon: Add reading output section** ([#1889](https://github.com/bluez/bluez/pull/1889))
- **doc/btmon: Add missing documentation** ([#1918](https://github.com/bluez/bluez/pull/1918))
- **doc/qualification: Updates for TCRL pkg101** ([#1940](https://github.com/bluez/bluez/pull/1940))
- **doc/qualification: follow up patches** ([#1945](https://github.com/bluez/bluez/pull/1945))
- **doc/btmon: Add GATT database reconstruction guide** ([#1954](https://github.com/bluez/bluez/pull/1954))
- **doc/btmon: Split Advertising and Scanning into btmon-advertising.rst** ([#1987](https://github.com/bluez/bluez/pull/1987))
- **doc: Document bidirectional (Source+Sink) ASE flow in LE Audio** ([#1989](https://github.com/bluez/bluez/pull/1989))
- **doc: add btmon-mgmt.rst** ([#2001](https://github.com/bluez/bluez/pull/2001))
- **doc: Add missing btmon-cs doc to btmon.rst** ([#2045](https://github.com/bluez/bluez/pull/2045))
- **doc: Add AI coding assistants guidelines** ([#2060](https://github.com/bluez/bluez/pull/2060))
- **doc: Fix Data Path direction in btmin-le-audio.rst** ([#2140](https://github.com/bluez/bluez/pull/2140))

---

## Emulator

- **emulator: Fix compilation on big endian systems** ([#1880](https://github.com/bluez/bluez/pull/1880))
- **hciemu: Fix silently dropping packet if writev return -EAGAIN** ([#1931](https://github.com/bluez/bluez/pull/1931))
- **hciemu: Fix crash if hciemu_client_new return NULL** ([#2099](https://github.com/bluez/bluez/pull/2099))
- **emulator/vhci: Add debug messages to error paths** ([#2100](https://github.com/bluez/bluez/pull/2100))
- **emulator/btdev: Add LE Set Host Feature V2 command emulation** ([#2154](https://github.com/bluez/bluez/pull/2154))

---

## GATT

- **gatt-client:Implement error handling for DB_OUT_OF_SYNC in GATT caching.** ([#1809](https://github.com/bluez/bluez/pull/1809))
- **gatt-client:Implement error handling for DB_OUT_OF_SYNC in GATT caching** ([#1925](https://github.com/bluez/bluez/pull/1925))
- **gatt-client: Fix use-after-free caused by reentrant client teardown** ([#2084](https://github.com/bluez/bluez/pull/2084))
- **gatt: validate data_length when parsing read-by-type response** ([#2196](https://github.com/bluez/bluez/pull/2196))
- **shared/gatt: Fix gatt-db buffer overflow for cloned db** ([#2237](https://github.com/bluez/bluez/pull/2237))

---

## ISO (Isochronous Channels)

- **iso-tester: add tests for set & receive ISO HW timestamps** ([#1956](https://github.com/bluez/bluez/pull/1956))
- **iso-tester: fix missing clear of io_id in callbacks** ([#1993](https://github.com/bluez/bluez/pull/1993))

---

## MCP (Media Control Profile)

- **shared/mcp: fix crash on destroy after ATT gone** ([#2021](https://github.com/bluez/bluez/pull/2021))

---

## Management Interface

- **mgmt: Remove mgmt_ev[] strings of undefined MGMT events** ([#2158](https://github.com/bluez/bluez/pull/2158))

---

## Mesh

- **mesh: Remove unused but set variable** ([#2117](https://github.com/bluez/bluez/pull/2117))

---

## Monitor

- **monitor: Fix -a/--analyze printing wrong connection type** ([#1943](https://github.com/bluez/bluez/pull/1943))
- **monitor: check data size properly in evt_num_completed_packets** ([#2018](https://github.com/bluez/bluez/pull/2018))
- **monitor: Fix not loading local GATT DB from cache** ([#2022](https://github.com/bluez/bluez/pull/2022))
- **monitor: Add decoding for Microsoft defined event** ([#2038](https://github.com/bluez/bluez/pull/2038))
- **monitor: Add L2CAP channel details to analyze output** ([#2042](https://github.com/bluez/bluez/pull/2042))
- **monitor: Add decoding support for Public Broadcast Announcements** ([#2078](https://github.com/bluez/bluez/pull/2078))
- **monitor: Add features bits defined in 6.2** ([#2095](https://github.com/bluez/bluez/pull/2095))
- **monitor: Add parsing of CS step mode data in RAS Notifications** ([#2107](https://github.com/bluez/bluez/pull/2107))
- **monitor: Add parsing of CS step mode data in RAS Notifications Subevent #0: Start ACL Connection Event: 406 Frequency Compensation: -16384 (0.01 ppm) Ranging Done Status: Partial results, more to follow (0x1) Subevent Done Status: All results c** ([#2108](https://github.com/bluez/bluez/pull/2108))
- **monitor: Parsing of cs step mode data in RAS Notifications** ([#2109](https://github.com/bluez/bluez/pull/2109))
- **monitor/att: split parsers for 0x21 and 0x23 in btmon** ([#2126](https://github.com/bluez/bluez/pull/2126))
- **monitor: Add support for HCI Event Encryption Change v2** ([#2146](https://github.com/bluez/bluez/pull/2146))
- **monitor: Add decoding support for LE Connection Subrating** ([#2171](https://github.com/bluez/bluez/pull/2171))

---

## OBEX

- **obexd/bip: Fix uninitialized memory and malformed XML in GetImage request** ([#1983](https://github.com/bluez/bluez/pull/1983))
- **obexd: fix PBAP PullPhoneBook failure with ebook backend** ([#2145](https://github.com/bluez/bluez/pull/2145))

---

## Other

- **Support for config fragments (conf.d style dirs)** ([#1792](https://github.com/bluez/bluez/pull/1792))
- **Implement the Bluetooth Ranging Profile GATT server and client support as specified by the Bluetooth SIG:** ([#1818](https://github.com/bluez/bluez/pull/1818))
- **retain const qualifier from pointer** ([#1872](https://github.com/bluez/bluez/pull/1872))
- **Add release notes for 68 PRs closed Nov 21, 2025 - Jan 8, 2026** ([#1878](https://github.com/bluez/bluez/pull/1878))
- **Analysis: Lenovo IdeaPad Duet keyboard requires Feature Report init** ([#1894](https://github.com/bluez/bluez/pull/1894))
- **zsh: amend completions** ([#1913](https://github.com/bluez/bluez/pull/1913))
- **l2test: Attempt to use BT_SNDMTU if output MTU has been set** ([#1920](https://github.com/bluez/bluez/pull/1920))
- **bthost: Add segmentation support for L2CAP LE-(E)CRED mode** ([#1928](https://github.com/bluez/bluez/pull/1928))
- **Enable and add support for Nintendo Switch 2 controllers** ([#1937](https://github.com/bluez/bluez/pull/1937))
- **Nintendo Switch 2 support** ([#1946](https://github.com/bluez/bluez/pull/1946))
- **lib/bluetooth/mgmt: Add missing mgmt_op entry for HCI_CMD_SYNC** ([#1947](https://github.com/bluez/bluez/pull/1947))
- **Revert "bluetooth.service: Set ConfigurationDirectoryMode"** ([#1991](https://github.com/bluez/bluez/pull/1991))
- **[RFC,BlueZ,v1] doc/btmon: Add Channel Sounding protocol flow documentation** ([#2002](https://github.com/bluez/bluez/pull/2002))
- **avdtp: ignore Discover cmd when host sends before** ([#2004](https://github.com/bluez/bluez/pull/2004))
- **[RFC,BlueZ,1/3] doc/btmon: Add Channel Sounding protocol flow documentation** ([#2005](https://github.com/bluez/bluez/pull/2005))
- **BLE-HID/Nintendo Switch 2 support** ([#2009](https://github.com/bluez/bluez/pull/2009))
- **sixaxis: use 0x12 command to get device mac address for ds4** ([#2014](https://github.com/bluez/bluez/pull/2014))
- **sixaxis: DS4: use 0x12 cmd to get device bdaddr** ([#2015](https://github.com/bluez/bluez/pull/2015))
- **gatt-database: remove database from dbs list when destroyed** ([#2029](https://github.com/bluez/bluez/pull/2029))
- **[Bluez,1/2] monitor: define manufacturer company IDs** ([#2031](https://github.com/bluez/bluez/pull/2031))
- **Add initial Channel Sounding Reflector** ([#2032](https://github.com/bluez/bluez/pull/2032))
- **Add initial Channel Sounding support -** ([#2041](https://github.com/bluez/bluez/pull/2041))
- **Add initial Channel Sounding support** ([#2043](https://github.com/bluez/bluez/pull/2043))
- **Remove glib dep from non-glib shared library** ([#2046](https://github.com/bluez/bluez/pull/2046))
- **[1/2] adapter: add DisableDiscoveryOnConnect option for combo chip coexistence** ([#2055](https://github.com/bluez/bluez/pull/2055))
- **Add initial Channel Sounding support for** ([#2059](https://github.com/bluez/bluez/pull/2059))
- **Add ability to desynchronized transports for PTS tests** ([#2080](https://github.com/bluez/bluez/pull/2080))
- **Add RAS Packet format and Notification support** ([#2086](https://github.com/bluez/bluez/pull/2086))
- **[RFC,BlueZ,1/3] shared/hci: Add BPF filter for registered events** ([#2087](https://github.com/bluez/bluez/pull/2087))
- **/bap: Handle CIS loss during streaming** ([#2116](https://github.com/bluez/bluez/pull/2116))
- **Add helper for "cleanup" variable attribute** ([#2118](https://github.com/bluez/bluez/pull/2118))
- **Functional/integration testing** ([#2123](https://github.com/bluez/bluez/pull/2123))
- **tester.config: add missing CRYPTO_AES** ([#2131](https://github.com/bluez/bluez/pull/2131))
- **test-mesh-crypto: Don't attempt to run test if AF_ALG is not available** ([#2147](https://github.com/bluez/bluez/pull/2147))
- **advertising: add property with advertisement ID** ([#2149](https://github.com/bluez/bluez/pull/2149))
- **Add configurable default LE PHY policy** ([#2153](https://github.com/bluez/bluez/pull/2153))
- **advertising: add property with advertisement Instance** ([#2161](https://github.com/bluez/bluez/pull/2161))
- **profile: Set L2CAP IMTU for external profile listeners** ([#2164](https://github.com/bluez/bluez/pull/2164))
- **profile: Set L2CAP IMTU for OBEX profile listeners** ([#2176](https://github.com/bluez/bluez/pull/2176))
- **btio: handle error from broadcast ISO socket** ([#2182](https://github.com/bluez/bluez/pull/2182))
- **btio: Handle EOPNOTSUPP from accept() to prevent busy loop** ([#2206](https://github.com/bluez/bluez/pull/2206))
- **avdtp: Return correct error when SEP is inuse** ([#2212](https://github.com/bluez/bluez/pull/2212))
- **added missing NULL check on buf** ([#2215](https://github.com/bluez/bluez/pull/2215))
- **gatt-database: Prefer notifications over indications** ([#2231](https://github.com/bluez/bluez/pull/2231))
- **Initial Channel Sounding Support for** ([#2235](https://github.com/bluez/bluez/pull/2235))
- **RAP: Move CS default settings** ([#2260](https://github.com/bluez/bluez/pull/2260))

---

## Profiles & Plugins

- **input: Handle HIDP continuation frames gracefully** ([#1893](https://github.com/bluez/bluez/pull/1893))
- **input: Fix checking LE bonding on HIDP** ([#2062](https://github.com/bluez/bluez/pull/2062))
- **profiles/ranging: Read measured_freq_offset field-16 bit as per Core Spec** ([#2178](https://github.com/bluez/bluez/pull/2178))
- **main: Fix bitwise AND operator in check_sirk_alpha_numeric()** ([#2214](https://github.com/bluez/bluez/pull/2214))
- **hostname: Update adapter name on transient hostname change** ([#2216](https://github.com/bluez/bluez/pull/2216))
- **profiles/audio/bass: Use BASS_Modify_Source when assistant is active** ([#2218](https://github.com/bluez/bluez/pull/2218))
- **profiles/midi: Fix zero timestampHigh** ([#2256](https://github.com/bluez/bluez/pull/2256))

---

## Shared Libraries

- **shared/att: make att channel respect LE socket security level** ([#1864](https://github.com/bluez/bluez/pull/1864))
- **shared/util: Add byte-swapping macros for constants** ([#1877](https://github.com/bluez/bluez/pull/1877))
- **shared/shell: gracefully recover from failed input initialization** ([#1906](https://github.com/bluez/bluez/pull/1906))
- **shared/shell: Fix bt_shell_printf in non-interactive mode** ([#1909](https://github.com/bluez/bluez/pull/1909))
- **shared: recover from failed input initialization** ([#1910](https://github.com/bluez/bluez/pull/1910))
- **shared/att: Simplify logic of DB out of sync recovery** ([#1926](https://github.com/bluez/bluez/pull/1926))
- **shared/ad: Fix not checking length on ad_replace_name** ([#1966](https://github.com/bluez/bluez/pull/1966))
- **shared/shell: Fix crash on bluetoothctl command completion** ([#1974](https://github.com/bluez/bluez/pull/1974))
- **shared/shell: Fix SIGSEGV on invalid input** ([#1975](https://github.com/bluez/bluez/pull/1975))
- **shared/util: Add MIN/MAX implementations** ([#1996](https://github.com/bluez/bluez/pull/1996))
- **shared/queue: Add way to iterate over queue contents** ([#2008](https://github.com/bluez/bluez/pull/2008))
- **shared/gatt-server: Add bt_gatt_server_set_permissions** ([#2026](https://github.com/bluez/bluez/pull/2026))
- **shared/util: Add decoding support for HIDS 1.1 UUIDs** ([#2089](https://github.com/bluez/bluez/pull/2089))
- **shared/hci: Add BPF filter for registered events** ([#2091](https://github.com/bluez/bluez/pull/2091))
- **shared/rap: fix use of uninitialized value** ([#2130](https://github.com/bluez/bluez/pull/2130))
- **shared/rap: Add client real-time ranging registration and notification parsing** ([#2138](https://github.com/bluez/bluez/pull/2138))
- **shared/rap: Add client ranging registration and notification parsing** ([#2175](https://github.com/bluez/bluez/pull/2175))
- **shared/hci: Avoid redundant BPF filter updates on duplicate events** ([#2197](https://github.com/bluez/bluez/pull/2197))
- **shared/rap: Fix Mode 0 step serialization** ([#2239](https://github.com/bluez/bluez/pull/2239))
- **shared: harden btsnoop trace parsing** ([#2243](https://github.com/bluez/bluez/pull/2243))
- **shared: rap: Defer CS Event registration until connection setup** ([#2250](https://github.com/bluez/bluez/pull/2250))
- **shared/rap: Fix step payload pointer in parse_step** ([#2252](https://github.com/bluez/bluez/pull/2252))

---

## Testing

- **unit: Add test cases for Ranging Profile (RAP) This adds unit test cases for the Ranging Profile (RAP) implementation, specifically testing the Ranging Service (RAS) server functionality.** ([#1820](https://github.com/bluez/bluez/pull/1820))
- **unit: Add unit test for new MIN/MAX macros** ([#2003](https://github.com/bluez/bluez/pull/2003))
- **unit: test-bap: disable optimization to speed up compilation** ([#2246](https://github.com/bluez/bluez/pull/2246))

---

## Tools

- **tools/btpclient: Fix eir data on GAP device found event** ([#1794](https://github.com/bluez/bluez/pull/1794))
- **tools/sdptool: report error when local SDP server is not found** ([#1852](https://github.com/bluez/bluez/pull/1852))
- **client: Add mgmt.exp-iso command** ([#1882](https://github.com/bluez/bluez/pull/1882))
- **tools/btpclient: Add GATT support to get Device name** ([#1883](https://github.com/bluez/bluez/pull/1883))
- **tools/btpclient: Move btpclient to client/btpclient directory** ([#1904](https://github.com/bluez/bluez/pull/1904))
- **client/btpclient: Fix build warning** ([#1908](https://github.com/bluez/bluez/pull/1908))
- **client/btpclient: Add GATT support to get Device name** ([#1912](https://github.com/bluez/bluez/pull/1912))
- **client/btpclient: Move BTP definitions per service** ([#1923](https://github.com/bluez/bluez/pull/1923))
- **client/mgmt: fix compiler error** ([#1927](https://github.com/bluez/bluez/pull/1927))
- **client: align 'io-cap' and 'pair' cmds with the docs** ([#1933](https://github.com/bluez/bluez/pull/1933))
- **tools/btmgmt: Fix btmgmt --help hanging** ([#1955](https://github.com/bluez/bluez/pull/1955))
- **client: add advertise broadcast-name helper** ([#1958](https://github.com/bluez/bluez/pull/1958))
- **client: add bluetoothctl broadcast-name helper** ([#1961](https://github.com/bluez/bluez/pull/1961))
- **client: add public-broadcast advertise helper** ([#1967](https://github.com/bluez/bluez/pull/1967))
- **client/btpclient: Add GATT read and write value supports** ([#2012](https://github.com/bluez/bluez/pull/2012))
- **tools/smp-tester: don't write array out of bounds** ([#2019](https://github.com/bluez/bluez/pull/2019))
- **client/btpclient: Add BTP_OP_BAP_DISCOVER support** ([#2049](https://github.com/bluez/bluez/pull/2049))
- **client/btpclient: Add GATT discovery supports** ([#2050](https://github.com/bluez/bluez/pull/2050))
- **client: Add public broadcast advertising support** ([#2083](https://github.com/bluez/bluez/pull/2083))
- **tools/tester: Fix crash when hciemu_new fails** ([#2103](https://github.com/bluez/bluez/pull/2103))
- **client/btpclient: Add BTP_EV_GAP_SEC_LEVEL_CHANGED support** ([#2106](https://github.com/bluez/bluez/pull/2106))
- **btmon/TDS: decode org 0x02 as Wi-Fi Alliance** ([#2113](https://github.com/bluez/bluez/pull/2113))
- **client/btpclient: Fix GAP unpair command** ([#2136](https://github.com/bluez/bluez/pull/2136))
- **client/btpclient: Add GAP extended advertising support** ([#2137](https://github.com/bluez/bluez/pull/2137))
- **client/mgmt: Add options to ltks command for loading entries** ([#2173](https://github.com/bluez/bluez/pull/2173))

---

PR List: https://github.com/bluez/bluez/pulls?q=is%3Apr+is%3Aclosed+closed%3A2026-02-09T21:27:33Z..2026-07-07T16:37:15Z+PW_SID
**Full Changelog**: [5.86...5.87](https://github.com/bluez/bluez/compare/5.86...5.87)
