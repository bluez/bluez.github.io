---
title: "linux-bluetooth Mailing List"
type: "mailing-list"
description: "How to subscribe to, post on, and browse the archives of the linux-bluetooth kernel mailing list."
list_address: "linux-bluetooth@vger.kernel.org"
subscribe_mailto: "mailto:linux-bluetooth+subscribe@vger.kernel.org"
subscribe_digest_mailto: "mailto:linux-bluetooth+subscribe-digest@vger.kernel.org"
unsubscribe_mailto: "mailto:linux-bluetooth+unsubscribe@vger.kernel.org"
post_mailto: "mailto:linux-bluetooth@vger.kernel.org"
archive_url: "https://lore.kernel.org/linux-bluetooth/"
patchwork_url: "https://patchwork.kernel.org/project/bluetooth/list/"
hosting_info_url: "https://subspace.kernel.org/vger.kernel.org.html#linux-bluetooth"
---

The **linux-bluetooth** list is where development of the Linux kernel Bluetooth
subsystem and the BlueZ userspace stack is discussed. Patches, bug reports, and
design discussions for both the kernel Bluetooth code and BlueZ happen here.
The Linux Bluetooth stack is written by many people, so please use the list
instead of emailing developers directly.

## Subscribing

You do **not** need to subscribe in order to post — subscribing only means you
receive a copy of every message, either individually or as a daily digest.
kernel.org [advises Gmail users](https://subspace.kernel.org/subscribing.html)
to take the digest on busy lists, because individual delivery can push you past
Gmail's delivery quota and make you miss unrelated mail as well. To stop
receiving list mail, send a message to the unsubscribe address below; its
subject and body are ignored and can be left blank.

<div class="calloutNote">

Don't want to follow the list itself? **Weekly summaries of activity on this
list** are published on the [BlueZ news page]({{< relref "/news" >}}).

</div>

## Posting to the list

A handful of rules apply to every kernel.org list, and mail that ignores them
is usually rejected or quietly ignored:

- **Send plain text only.** HTML mail is rejected by the list. This is by far
  the most common reason a first post never appears.
- **Use a short, descriptive subject.** "Bluetooth is broken" tells nobody
  anything; "LE scanning stalls after resume on Intel AX211" does.
- **Reply to all** so the discussion stays on the list, quote inline rather
  than above the whole message, and trim the parts you are not replying to.
- **Strip corporate confidentiality disclaimers** before posting to a public
  list.

The reasoning behind each of these is spelled out in the
[kernel.org mailing list etiquette guide](https://subspace.kernel.org/etiquette.html).
It is also worth searching the archive before asking — many questions have
been answered already.

## Reporting a bug

Bugs in the BlueZ userspace stack are tracked on GitHub: please open an issue
at [bluez/bluez](https://github.com/bluez/bluez/issues) rather than posting it
here. Bugs in the kernel Bluetooth subsystem are not tracked there and do
belong on this list.

Either way, include the BlueZ version (`bluetoothd --version`), the kernel
version, and which adapter is involved. Nearly every Bluetooth problem needs a
HCI trace to diagnose, so capture the failure with `btmon` and include that,
along with the output of `bluetoothd -n -d` if the daemon is involved. Say what
you expected to happen and what happened instead.

**Do not report suspected security vulnerabilities through either channel.**
Public disclosure makes an issue ineligible for a CVE; file a draft advisory as
described in the
[BlueZ security policy](https://github.com/bluez/bluez/blob/master/SECURITY.md)
instead.

## Sending patches

The preferred way to send patches is by email with `git send-email`. Which
rules apply depends on which tree you are patching, and confusing the two is a
common reason for a patch to be sent back:

- **BlueZ userspace** — prefix the subject with `[PATCH BlueZ]`, follow the
  BlueZ coding style, and do **not** add a `Signed-off-by` line; BlueZ does
  not use them, so including one is an error. The full set of rules is in
  [HACKING](https://github.com/bluez/bluez/blob/master/HACKING).
- **Kernel Bluetooth subsystem** — the standard
  [kernel patch submission process](https://www.kernel.org/doc/html/latest/process/submitting-patches.html)
  applies, `Signed-off-by` included.

Bug fixes take priority over new features, so send them separately rather than
bundling them with a larger series. If an AI coding assistant was involved,
disclose it with an `Assisted-by` tag as described in
[doc/coding-assistants.rst](https://github.com/bluez/bluez/blob/master/doc/coding-assistants.rst).

Once sent, your patch appears in Patchwork (linked below), which tracks its
review state. If a submission goes unanswered for a while, reply to your
own message to bump the thread rather than resending it as a new post.
