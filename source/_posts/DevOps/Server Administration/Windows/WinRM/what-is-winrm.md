---
title: What is WinRM?
image: winrm
tags:
- Ansible
---
## Documentation

WinRM (Windows Remote Management) is Microsoft's implementation of WS-Management in Windows which allows systems to access or exchange management information across a common network. Utilizing scripting objects or the built-in command-line tool, WinRM can be used with any remote computers that may have baseboard management controllers (BMCs) to acquire data.

## Components

### WinRM Scripting API

Provides an Application programming interface enabling scripts to remotely acquire data from computers that perform WS-Management operations.

### winrm.cmd

Built-in systems management command line tool allowing a machine operator to configure WinRM. Implementation consists of a Visual Basic Scripting (VBS) Edition file (Winrm.vbs) which is written using the aforementioned WinRM scripting API.

### winrs.exe

Another command line tool allowing the remote execution of most Cmd.exe commands. This tool utilizes the WS-Management protocol.

### Intelligent Platform Management Interface (IPMI) driver

Provides hardware management and facilitates control of remote server hardware through BMCs. IPMI is most useful when the operating system is not running or deployed as it allows for continued remote operations of the bare metal hardware/software.

### WMI plug-in

Allows WMI data to be made available to WinRM clients.

### WMI service

Leverages the WMI plug-in to provide requested data or control and can also be used to acquire data from most WMI classes. Examples include the Win32_Process, in addition to any IPMI-supplied data.

### WS-Management protocol

Web Services Management is a DMTF open standard defining a SOAP-based protocol for the management of servers, devices, applications and various Web services. WS-Management provides a common way for systems to access and exchange management information across the IT infrastructure.

### Ports

By default WinRM HTTPS used 5986 port, and HTTP uses 5985 port. By default, port 5985 is in listening mode, but port 5986 has to be enabled.

## Usage

### Ansible

Ansible communicates with Windows servers over WinRM using the python pywinrm package and can remotely run PowerShell scripts and commands.