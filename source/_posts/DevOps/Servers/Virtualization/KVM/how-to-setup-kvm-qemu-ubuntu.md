---
title: How to Install and Setup QEMU/KVM on Ubuntu 22.04
image: kvm
tags:
- Virtualization
---
# Description

This article will outline how to setup the KVM hypervisor on Ubuntu 22.04.

Since KVM is part of Linux, it installs natively, enabling a straightforward user experience and smooth integration.[^1]

QEMU is a free and open-source machine emulator and virtualizer. It enables your host machine to run a variety of guest operating systems.[^2]

## Instructions [^3] [^4]

### Install Required Packages

Update your system.

`sudo apt update`

Check if virtualization is enabled.

`egrep -c '(vmx|svm)' /proc/cpuinfo`

If the result of the above command is greater than `0`, then virtualization should be enabled.  If not, then you can attempt to enable virtualization in the BIOS settings.

To verify if KVM virtualization is enabled run the following command:

`kvm-ok`

Install the cpu-checker package if you don't have it already.

`sudo apt install -y cpu-checker`

Run the command below to install KVM and additional virtualization packages on Ubuntu 22.04.

`sudo apt install -y qemu-kvm virt-manager libvirt-daemon-system virtinst libvirt-clients bridge-utils`

Breakdown of packages to be installed:

- qemu-kvm  – An opensource emulator and virtualization package that provides hardware emulation.
- virt-manager – A Qt-based graphical interface for managing virtual machines via the libvirt daemon.
- libvirt-daemon-system – A package that provides configuration files required to run the libvirt daemon.
- virtinst – A  set of command-line utilities for provisioning and modifying virtual machines.
- libvirt-clients – A set of client-side libraries and APIs for managing and controlling virtual machines & hypervisors from the command line.
- bridge-utils – A set of tools for creating and managing bridge devices.

Enable and start the Libvirt daemon.

`sudo systemctl enable --now libvirtd`

`sudo systemctl start libvirtd`

Confirm that the virtualization daemon is running as shown.

`sudo systemctl status libvirtd`

Add the currently logged-in user to the kvm and libvirt groups so that they can create and manage virtual machines.

`sudo usermod -aG kvm $USER`

`sudo usermod -aG libvirt $USER`

To apply this change, you need to log out and log back again.

### Create a Network Bridge [^5]

If you plan to access the KVM virtual machines from outside your local system, follow these instructions to create a network bridge. This allows the virtual machines to be accessible by other hosts on the network.

Otherwise, you can use the existing NAT settings.

This setup requires the use of the Network Manager Text User Interface tool.

To launch the Network Manager Text User Interface tool use the following command,

`sudo nmtui`

Follow these instructions:

1. Deactivate the WIFI network (if it exists).

- Select `Activate a connection`.
- Select the Wi-Fi network.
- Select `<Deactivate>`
- Select `<Back>`

2. Create a new Bridge

- Select `Edit a connection`.
- Select `<Add>`
- Select the type of connection you wish to create: `Bridge`
- Select `<Create>`
- The default name is `nm-bridge`
- Select `Slave` 
- Select `Ethernet` to add as slave to this bridge connection.
- Select `<Create>`
- Select `<Ok>`
- Confirm `Ethernet Connection 1` has been added as slave to the bridge connection.
- Select `<Ok>`
- Select `<Back>`

3. Remove Direct Wired Connection

- Select `Edit a connection`
- Select `Wired Connection 1` under `Ethernet`
- Select `<Delete>`
- Are you sure you want to delete the connection `Wired Connection 1`?
  - Select `Delete`
- Select `<Back>`
- Select `Quit`

You should now be able to select the bridged connection for your virtual machine network interface.

To verify the bridge was created, use the `bridge-utils` tool.

`brctl show`

This command should list the `nm-bridge` we created above.

It should also display the ethernet connection under `interfaces`.

### Download ISOs

TBD

### Create a VM

TBD

#### Snapshots

TBD

[^1]: [KVM hypervisor: a beginners’ guide](https://ubuntu.com/blog/kvm-hyphervisor)
[^2]: https://www.qemu.org/
[^3]: [Veronica Explains - QEMU/KVM for absolute beginners](https://www.youtube.com/watch?v=BgZHbCDFODk)
[^4]: [Linux Techi - James Kiarie - How to Install KVM on Ubuntu 22.04 (Jammy Jellyfish)](https://www.linuxtechi.com/how-to-install-kvm-on-ubuntu-22-04/)
[^5]: [Abstract programmer - qemu/kvm bridge and NAT networking](https://www.youtube.com/watch?v=DYpaX4BnNlg)