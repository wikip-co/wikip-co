---
title: Configuring Ansible for Windows
image: ansible
tags:
- Ansible
- Ansible Windows Configuration
- Ansible Galaxy
---
## Description

This article will explain how to get up and running using Ansible in a windows environment.

## Installing Ansible on Windows

### Install & Configure Windows Subsystem for Linux Version 2 (WSL2)

1. Download this WSL 2 kernel update (required). https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi

1. Double-click the wsl_update_x64.msi file and apply the update.

1. Open Start.

1. Search for PowerShell, right-click the top result, and select the Run as administrator option.

1. Run the Following two commands to enable WSL.

`> dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart`

`> dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart`

1. Type the following command to set Windows Subsystem for Linux 2 your default architecture for new distros that you install and press Enter:

`> wsl --set-default-version 2`

1. (Optional) To convert the distro from WSL 1 to WSL 2, type the following (depending on which distro(s) you are trying to use) and press Enter:

`> wsl --set-version Ubuntu 2`

`> wsl --set-version kali-linux 2`

### Download / Install Ubuntu or Kali Linux

If you have not done so alread.

1. Download Ubuntu AND/OR Kali Linux from the Windows Store.

## Configure WinRM on each Windows Host

[See here](/configure-winrm-to-use-https-and-credssp/)

## Install Asible in Linux Sub-system

1. Open Ubuntu

`sudo mkdir /etc/ansible`

`sudo nano /etc/ansible/hosts`

Example `hosts` file contents;

```
[web]
globo-web02

[web:vars]
ansible_user="ansible-user@domain.com"
ansible_password=P@ssw0rd
ansible_connection=winrm
ansible_winrm_transport=credsp
ansible_winrm_server_cert_validation=ignore
```

Ignore certificate validation unless a real cert has been issued by a CA.

[^1]: https://ubuntu.com/wsl