---
title: Configure WinRM to use HTTPS and CredSSP
image: winrm
tags:
- Ansible
- Ansible Windows Configuration
---
## Description

This document outlines how to configure CredSSP Authentication for a windows host.

CredSSP stands for Credential Security Support Provider. CredSSP provides an encrypted Transport Layer Security Protocol channel.

## Steps

For each instance we want to control with Ansible using WinRM we must setup the correct listeners and authentication mechanisms.

To view the current available listeners on an instance, open PowerShell and run, 

`> winrm enumerate winrm/config/Listener`

To view the current authentication method configuration run, 

`> winrm get winrm/config/Service`

You should see `CredSSP = false`

To enable CredSSP authentication, download the official Ansible script:

`> wget https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1 -OutFile ConfigureRemotingForAnsible.ps1`

Use the script,

`> .\ConfigureRemotingForAnsible.ps1 -EnableCredSSP -DisableBaiscAuth -Verbose`

This command enables CredSSP, disables basic authentication, and configures an https listener.

To verify this setup,

Open PowerShell and re-run the following commands, 

`> winrm enumerate winrm/config/Listener`

You should see HTTPS listed as an available listener.

`> winrm get winrm/config/Service`

You should see `CredSSP = true`

For security purposes, remove the unsecured HTTP listener:

`> Get-ChildItem -Path WSMan:\localhost\Listener | Where-Object { $_.Keys -eq "Transport=HTTP" } | Remove-Item -Recurse -Force`

Run the following to ensure HTTP is no longer listed,

`> winrm enumerate winrm/config/Listener`

Restart the WinRM service,

`> restart-service winrm`