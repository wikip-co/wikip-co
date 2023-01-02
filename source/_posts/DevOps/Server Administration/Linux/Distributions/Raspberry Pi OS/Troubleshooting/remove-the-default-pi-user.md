---
title: Remove the Default Pi User
image: raspberry-pi
tags:
- Security
---
## Description

This is a basic setup guide for removing the default Pi user on the Raspberry Pi OS.

## Requirements

You can obtain the latest copy of Raspberry Pi OS here:

- Lite (headless):  https://downloads.raspberrypi.org/raspios_lite_arm64/images/
- Full (desktop): https://downloads.raspberrypi.org/raspios_arm64/images/

## Steps

### Create New User

`sudo adduser <username>`

### Add Permissions and Groups for the New User

To add all the same settings and groups as the default `pi` user, enter the following command,

`sudo usermod -a -G adm,dialout,cdrom,sudo,audio,video,plugdev,games,users,input,netdev,gpio,i2c,spi <username>`

Logout and login as the `<new user>`

### Remove the defualt `Pi` user

Close any `pi` user processes,

`sudo pkill -u pi`

#### Remove the `pi` user and `pi` home folder

`sudo deluser -remove-home pi`

#### Remove Sudo file

`sudo rm /etc/sudoers.d/010_pi-nopasswd`