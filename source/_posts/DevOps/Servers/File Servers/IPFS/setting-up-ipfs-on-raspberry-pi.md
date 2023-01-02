---
title: Setting up an IPFS Server on a Raspberry Pi
image: ipfs
---
# Description

In this tutorial we will take a barebones Linux server and install IPFS on it.  Then we will configure the server to run IPFS as a service, and make the server Internet addressable.

Please note: The default IPFS configuration allows for any files uploaded to the IPFS service to be discoverable by anyone else using the IPFS network!

## Setting up a Server

This guide will walk you through how to setup your own IPFS server. If you want, you can run several servers or use both a pinning service and your own server for higher availability.

## ​​Prerequisites

A Linux server that’s online as much as possible like a NUC or Raspberry Pi running on your home network will work.

### Recommended Minimum Requirements:

- 2 gigabytes of RAM
- 10 gigabytes of disk space
- 1 terabyte of bandwidth per month

## ​​Installing IPFS

The first step is to install IPFS.

Go to the IPFS Releases page (below) and copy the link for the correct asset for your server from the latest release. (For most people, this is the link that ends in _linux-amd64.tar.gz.)

- <https://dist.ipfs.io/>
  - https://dist.ipfs.io/#go-ipfs

Follow the commands outlined below to (1) download the file to your server, (2) extract the contents, (3) install IPFS, and (4) clean up:

```
$ wget -q https://github.com/ipfs/go-ipfs/releases/download/v0.4.21/go-ipfs_v0.4.21_linux-amd64.tar.gz
$ tar xf go-ipfs_v0.4.21_linux-amd64.tar.gz
$ sudo mv go-ipfs/ipfs /usr/local/bin
$ rm -rf go-ipfs go-ipfs_v0.4.21_linux-amd64.tar.gz
```

IPFS also has to do its own setup, so we run this command logged in as the user that we’ll want to run the IPFS daemon:

`$ ipfs init`

(If you want the daemon to run as root, actually switch to the root user with sudo su first instead of running sudo ipfs init.)

## ​​Adding the IPFS Daemon Service

In this tutorial we will create a systemd managed background service. These services are started automatically when the server boots, restarted if they fail, and have their output logs persisted to disk.

Now that IPFS is installed, we can create a service for it so that we get all these benefits.

To do this, we create a unit configuration file at `/etc/systemd/system/ipfs.service` with the contents:

```
[Unit]
Description=IPFS Daemon

[Service]
ExecStart=/usr/local/bin/ipfs daemon
User=root
Restart=always
LimitNOFILE=10240

[Install]
WantedBy=multi-user.target
```

(Change the line `User=root` if you’re not running the daemon as root.)

Then tell systemd about the new service:

```
$ sudo systemctl daemon-reload
$ sudo systemctl enable ipfs
$ sudo systemctl start ipfs
```

### Checking the Logs

- See all logs from the daemon:
  - `$ journalctl -u ipfs`
- See only most recent logs, and show new logs as they’re written:
  - `$ journalctl -f -u ipfs`

## ​​Opening Up to the Internet

For the best performance, your node will need to be addressable from the public Internet.

If you’re hosting your own server, you’ll need to first configure your router to give the machine running the IPFS node an internal static IP address.

Once the server has a static IP, you’ll need to setup Port Forwarding on the router, to direct connections on port 4001 to the router to port 4001 on the server.

It’s best to restart the server once the router’s updated config has been applied.

## ​​Enabling Unattended Upgrades

If this server will be exposed to the Internet, we strongly recommend enabling unattended upgrades. This helps make sure that it installs most security updates in a timely manner and without human intervention.