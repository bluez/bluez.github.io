# What the table says, and how to audit it

`data/profiles.yaml` lists the Bluetooth profiles, protocols and services
that BlueZ implements, with PipeWire supplying the audio endpoints, codecs
and the HFP/HSP roles. Categories render as columns, rows in file order.

## Fields

- **abbr**: the abbreviation the Bluetooth SIG uses (HFP, BAP, HOGP). A row
  is a profile, not a service: a registration named `xyz_profile` under
  `profiles/xyz/` is profile XYZ even when the UUID it registers belongs to
  the service the profile is built on (`rap_profile` registers `RAS_UUID`,
  and the row is RAP, the Ranging Profile, with the profile's role names,
  Requestor and Responder). A service gets its own row only when bluez
  implements the service without a profile around it (BAS, DIS, BASS).
- **version**: the profile version the implementation advertises, decoded
  from hex BCD (`0x0104` is 1.4). Sources, in order of authority: SDP record
  tables (the `default_settings`-style tables with `.uuid` and `.version`),
  version constants near the profile code (`a2dp_ver`, `AVRCP_CT_VERSION`),
  and version fields written into records. When the code advertises different
  versions for different roles, write both, e.g. `1.2 / 1.1`, and say in
  `roles` which is which. When the implementation advertises no version at
  all (most GATT profiles, HID as host, mesh), it is the version of the
  specification the code implements, and it changes only when the code
  visibly targets a newer one.
- **full**: the profile's full name, without a version.
- **roles**: the roles the implementation plays. Derive them from the code:
  - a `struct btd_profile` with `remote_uuid` connects to a peer offering
    that UUID, so BlueZ plays the opposite role (remote A2DP Sink means
    BlueZ is the Source side of that pairing; remote HFP AG means BlueZ is
    the HF);
  - `local_uuid`, or an SDP record BlueZ registers, names what BlueZ offers;
  - obexd client drivers (`obexd/client/*.c`) are clients, obexd plugins
    (`obexd/plugins/*.c`) are servers;
  - PipeWire's `enum spa_bt_profile` lists the audio roles it implements
    (HFP_HF, HFP_AG, HSP_HS, HSP_AG, A2DP_SINK, A2DP_SOURCE, BAP_*).
- **codecs**: the codecs PipeWire provides for that row. The display name
  is the codec's `description` from the dossier. Fold an entry into another
  only when its description is that codec's name plus a quality or channel
  qualifier: SBC-XQ into SBC, AAC-ELD into AAC, aptX HD and aptX-LL into
  aptX, the Opus 05 surround, duplex and pro variants into Opus 05. Different
  descriptions are different codecs and stay separate: LC3-SWB and LC3-24kHz
  are two entries, not "LC3". The `kind` says which row a codec belongs to:
  `MEDIA_CODEC_A2DP` to A2DP, `MEDIA_CODEC_HFP` to HFP (CVSD also to HSP),
  `MEDIA_CODEC_BAP` to BAP, `MEDIA_CODEC_ASHA` to ASHA.
- **tag**: `experimental` when the registration sets `experimental = true`
  or the code only registers under the experimental D-Bus flag
  (`G_DBUS_FLAG_ENABLE_EXPERIMENTAL`); `testing` when it sets
  `testing = true`. Otherwise no tag.
- **note**: at most twelve words of context that matters to a user, such
  as PipeWire advertising a newer version than bluez, or a profile living
  in a separate daemon. Notes must stay true: update or drop them when the
  fact they cite changes.
- **url**: the official specification page.

The **intro** above the table summarises the lower-level stack and credits
PipeWire. The Core Specification version it mentions is the highest one the
bluez code knows about (the dossier lists them). Lower-level building
blocks (GAP, GATT, L2CAP, SDP, RFCOMM) belong there, not in a row.

The **verified** header records the checkout commits the table was last
checked against. `apply` maintains it; never edit it by hand.

## Method

1. Read the "changes since the table was last verified" sections first.
   They say where upstream moved. Nothing there means the table probably
   still holds, but check every row anyway.
2. For every row, confirm each field against the evidence: versions from
   the SDP tables and version constants, roles and tags from the
   registrations, codecs from the PipeWire codec list.
3. Look for registrations, SDP records, codecs, obexd drivers, daemons or
   directories that no row describes. Each is a candidate row in the
   category it belongs to. Bluez's own experimental HFP HF registration is
   an example of something deliberately folded into an existing row's
   note rather than given a row.
4. Look for rows whose implementation has left the tree. The source tree
   listing in the dossier is the check; a pattern search that found
   nothing is not.
5. Check that every note and the intro are still true.

## Worked example

The dossier shows `pipewire spa/plugins/bluez5/backend-native.c:3814
version = 0x0109` with the comment `HFP version 1.9`, while the bluez SDP
table advertises `0x0108` for `HFP_HS_UUID` and `HFP_AG_UUID`. The row
keeps `version: "1.8"` (bluez's record) and its note says PipeWire
advertises 1.9. If PipeWire moved to 1.10, the change would be:

```json
{"op": "set", "abbr": "HFP", "field": "note",
 "value": "built-in HF is experimental; PipeWire implements both roles and advertises 1.10",
 "why": "PipeWire's native backend now reports HFP 1.10 in its SDP record",
 "evidence": "pipewire spa/plugins/bluez5/backend-native.c:3814"}
```
