---
title: Asus ZenBook Keyboard Not Working After Fresh Ubuntu Install
image: ubuntu
tags:
- Ubuntu
- Asus
- Desktop
---
## Description

I recently installed a fresh copy of Ubuntu 21.10 on an Asus Zenbook 14 and I noticed the keyboard was not working.  I was able to reproduce this behavior with all flavors of Ubuntu (Mate, Studio, Kubuntu, etc.).

## Solution

The solution I found was to edit/update the GRUB loader.[^1]

To accomplish this, the on-screen keyboard must be enabled. 

### Edit grub file

`sudo vi /etc/default/grub`

Replace the following line:

`GRUB_CMDLINE_LINUX=""`

With this:

`GRUB_CMDLINE_LINUX="i8042.reset i8042.nomux i8042.nopnp i8042.noloop"`

### Update bootloader

`sudo update-grub`

## Verification

- Verify the keyboard works after a reboot.
- Verify the keyboard works after a power-off and power-on.

[^1]: https://askubuntu.com/questions/1358581/keyboard-stops-working-whenever-powered-off