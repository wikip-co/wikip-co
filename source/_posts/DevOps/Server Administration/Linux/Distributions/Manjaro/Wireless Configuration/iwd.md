---
title: iNet Wireless Daemon (iwd)
image: iwd
tags:
- Wireless
- iwctl
- Command Line Tools
- Raspberry Pi
- iwmon
---
## Description

**iwd (iNet wireless daemon)** is a wireless daemon for Linux written by Intel. The core goal of the project is to optimize resource utilization by not depending on any external libraries and instead utilizing features provided by the Linux kernel to the maximum extent possible.[^1]

The `iwd` package provides the client program `iwctl`, the daemon `iwd` and the Wi-Fi monitoring tool `iwmon`.

> `IWD` is the Intel-developed iNet Wireless Daemon that can serve as a replacement to the likes of WPA_Supplicant while integrating nicely with NetworkManager / systemd-networkd / ConnMan.[^2]

## Usage

If you have installed Manjaro Minimal edition, you will notice it does not have NetworkManager installed.  Instead you must use `iwd` to configure a wifi interface.[^3]

[^1]: https://wiki.archlinux.org/title/Iwd
[^2]: https://www.phoronix.com/scan.php?page=news_item&px=Intel-IWD-1.20
[^3]: https://forum.manjaro.org/t/manjaro-arm-minimal-21-04-raspberry-pi-4-wifi-not-working/63055/5