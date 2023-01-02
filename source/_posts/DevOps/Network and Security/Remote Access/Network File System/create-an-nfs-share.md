---
title: Create an NFS Share
image: nfs
tags:
- Internet Protocols
- Network File Systems
- Internet Protocol Based Network Software
- Application Layer Protocols
- Network File Transfer Protocols
- Distributed File Systems
- File Sharing
- Networking
---
## Description

This article demonstrates how to configure and connect to an NFS Share.

## Requirements



## Server Setup

### Install required packages

`$ sudo apt install nfs-kernel-server`

### Create the Directory that will be Exported

`$ sudo mkdir -p /export`

### Apply permissions

> Caution: In this example we will be configuring the NFS share to be accessed without authentication.

`$ sudo chmod -R 777 /export`

> Please Note: Setting 777 permissions to a file or directory means that it will be readable, writable, and executable by all users.

### Edit the `/etc/exports` file:

`$ sudo nano /etc/exports`

The `exports` file defines which file systems are exported to remote hosts.

To export the folder we just created, add the following two line to `/etc/exports` file:

`/export 192.168.1.0/24(rw,fsid=0,nohide,insecure,no_subtree_check,async)`

This will publish the `/export` folder on the local subnet, `192.168.1.0/24`.

### Restart the NFS Service

To apply the changes, restart the `nfs-kernel-server` service:

`$ sudo systemctl restart nfs-kernel-server`

## Client Setup

The client configuration is relatively simple.

Follow these steps tp setup and test the NFS Mountpoint on the Client.

### Install the required packages

`$ sudo apt install nfs-common`

Create the directory on the client filesystem where the NFS share will be mounted:

`$ sudo mkdir /mnt/<hostname>`

### Edit the `/etc/fstab` file

#### Auto Mount

To ensure the NFS shared folder is mounted by the client on every reboot, add the following line to `/etc/fstab`:

`<nfs-server-IP>:/export   /mnt   nfs    auto  0  0`

#### Manual Mount

If the client will not consistently and reliably have access to the NFS server (i.e. a laptop that connects to multiple private/public networks), then use the `noauto` option in the `/etc/fstab` file instead, so that it will ''not'' automatically try to mount the filesystem at boot.

`<nfs-server-IP>:/export   /mnt/whitefoot   nfs    noauto  0  0`

In this scenario, the user can manually mount the share using the following command:

`$ sudo mount /mnt/whitefoot`

## Sources

[^1] [^2] [^3] [^4] [^5] [^6] [^7] [^8] [^9] [^10] [^11] [^12]

[^1]: https://www.thegeekdiary.com/understanding-the-etc-exports-file/
[^2]: https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/5/html/deployment_guide/s1-nfs-server-config-exports
[^3]: https://unix.stackexchange.com/questions/427597/implications-of-using-nfsv4-fsid-0-and-exporting-the-nfs-root-to-entire-lan-or
[^4]: https://linux.die.net/man/5/exports
[^5]: https://www.raspberrypi.org/documentation/computers/remote-access.html#network-file-system-nfs
[^6]: https://askubuntu.com/questions/292043/how-to-unmount-nfs-when-server-is-gone
[^7]: https://devconnected.com/how-to-mount-and-unmount-drives-on-linux/
[^8]: https://linuxize.com/post/how-to-mount-an-nfs-share-in-linux/#:~:text=Automatically%20Mounting%20NFS%20File%20Systems%20with%20%2Fetc%2Ffstab,-Generally%2C%20you%20will&text=The%20%2Fetc%2Ffstab%20file%20contains,the%20%2Fetc%2Ffstab%20file.
[^9]: https://superuser.com/questions/1038136/what-is-the-noauto-mount-flag-for
[^10]: https://www.jeffgeerling.com/blog/2021/htgwa-create-nfs-share-linux-on-raspberry-pi
[^11]: https://pimylifeup.com/raspberry-pi-nfs-client/
[^12]: https://pimylifeup.com/raspberry-pi-nfs/