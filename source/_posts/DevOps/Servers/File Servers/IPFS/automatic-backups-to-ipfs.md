---
title: Automatic Backups to IPFS
image: ipfs
tags:
-
---
## Description

This article explains how to set up recurring uploads to IPFS

## Requirements

These steps assume you have an IPFS node running on your local network.

The IPFS daemon service is assumed to be running as the root user.

## Steps

This script should be executed on the server running IPFS.

```
#!/bin/bash
/usr/local/bin/ipfs files cp /ipfs/$(/usr/local/bin/ipfs add -Q -r /export/backups/) /backup_"$(date '+%F_%H:%M')"
/usr/local/bin/ipfs pin rm -r $(/usr/local/bin/ipfs add -Q -r /export/backups/)
rm -rf /export/backups/*
```
- The first line uploads the directory to the ipfs server and copies to the ipfs workspace
- The second line removes the pinned items since we have copied them to the ipfs workspace
- The third line removes the local directory

Enter root user session:

```
$ sudo su -
```
Ensure the script is only viewable by the root user and make the script executable,

```
# chmod 0400 ipfs-backup-script
# chmod +x ipfs-backup-script 
```

As root, edit the `crontab` file:

```
# crontab -e
```

Add the following line to the crontab file:

```
0 2 * * * /home/<user>/ipfs-backup.sh
```

(this will run the ipfs upload at 2am)

When the script completes, the backup should be uploaded to IPFS and the local copy should be deleted.

[^1] [^2]

[^1]: https://stackoverflow.com/questions/43118022/how-do-i-unpin-and-remove-all-ipfs-content-from-my-machine
[^2]: https://github.com/ipfs/go-ipfs/issues/3764
