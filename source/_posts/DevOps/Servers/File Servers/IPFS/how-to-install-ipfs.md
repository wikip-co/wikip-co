---
title: How to Install IPFS
image: ipfs
tags:
-
---
A stock IPFS node is easy to install and start running.

## How to Install IPFS on ARM64 machines

First, go to the official IPFS Releases page and copy the link for the latest release.

- https://dist.ipfs.io/#go-ipfs

### How to Install IPFS on any Android (running Termux)

If you are running Termux on your android phone you should be able to get an IPFS node running using the following five steps:

```
$ wget https://dist.ipfs.io/go-ipfs/v0.11.0/go-ipfs_v0.11.0_linux-arm64.tar.gz
$ tar xf go-ipfs_v0.11.0_linux-arm64.tar.gz
$ mv go-ipfs/ipfs /data/data/com.termux/files/usr/bin/
$ rm -rf go-ipfs go-ipfs_v0.11.0_linux-arm64.tar.gz
$ ipfs init
```

Description of Steps:

- Download the go-ipfs Linux Binary
- Unzip the tar file
- Move to /usr/bin directory (equivalent)
- Remove downloaded file
- Initialize the ipfs node

To start the IPFS Daemon, run the following command:

```
$ ipfs daemon
```

You should now be able to access the webui by navigating to the following URL:

- http://127.0.0.1:5001/webui

A WiFi Internet connection may be required to upload files on the public IPFS network.

### How to install IPFS on a Raspberry Pi (running Raspberry Pi 64-bit OS)

Run the following four commands, which are similar to the steps taken above:

```
$ wget https://dist.ipfs.io/go-ipfs/v0.11.0/go-ipfs_v0.11.0_linux-arm64.tar.gz
$ tar xf go-ipfs_v0.11.0_linux-arm64.tar.g
$ sudo mv go-ipfs/ipfs /usr/local/bin/
$ rm -rf go-ipfs go-ipfs_v0.11.0_linux-arm64.tar.gz
```
To initialize the IPFS node, run the following command:

Please Note: Make sure you are logged in as the user that you want to run the IPFS daemon service!

```
$ ipfs init
```

To start the IPFS Daemon, run the following command:

```
$ ipfs daemon
```

You should be able to open the webui by navigating to the following URL:

- http://127.0.0.1:5001/webui

### How to Run the IPFS Daemon as a Backround Service

Create a unit file at `/etc/systemd/system/ipfs.service` with the contents:

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
Change the line `User=root` if you're not running the daemon as root.

Load the new service:

```
$ sudo systemctl daemon-reload
$ sudo systemctl enable ipfs
$ sudo systemctl start ipfs
```

## Sources

- https://developers.cloudflare.com/distributed-web/ipfs-gateway/setting-up-a-server
- https://dist.ipfs.io/#go-ipfs
