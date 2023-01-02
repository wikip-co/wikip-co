---
title: How to Run a Filesystem Check on Raspberry Pi OS
image: raspberry-pi
tags:
- Raspberry Pi
- fsck
- e2fsck
---
## Description

How to initiate a filesystem check at boot on the Raspberry Pi OS.

It's not possible to run `fsck` (or `e2fsck`) on a mounted partiton.  Therefore a filesystem check can be initiated at boot time.

## Steps

### Open `cmdline.txt` for editing

`sudo edit /boot/cmdline.txt`

### Add `fsck.mode=force` to the existing line of text as shown below [^1]

```
console=serial0,115200 console=tty1 root=PARTUUID=6c586e13-02 rootfstype=ext4 elevator=deadline fsck.mode=force fsck.repair=yes rootwait
```

### Reboot the system 

The filesystem check should be kicked-off as part of the boot process.

Depending on your custom user configuration, the system may require or prompt you to login to a root user session.

At this point you can review the log files.

## Check log files

If you want to see the log entries generated, you can use the `journalctl` tool.

### Example [^1]

#### `$ journalctl -u systemd-fsck*`

This shows logs from the specified unit (`-u`), `systemd-fsck*`

#### `$ journalctl -xb`

This display items related to the current boot (`-b`) with message explainations where available (`-x`).

[^1]: https://raspberrypi.stackexchange.com/questions/111541/output-fsck-on-boot-to-a-log-file