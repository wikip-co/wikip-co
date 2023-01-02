---
title: Powershell (General)
image: smart-contract
tags:
- Scripting
---
PowerShell is a cross-platform task automation solution made up of a command-line shell, a scripting language, and a configuration management framework. PowerShell runs on Windows, Linux, and macOS.[^1]

### Shell

PowerShell is a modern command shell that includes the best features of other popular shells. Unlike most shells that only accept and return text, PowerShell accepts and returns .NET objects. The shell includes the following features:

- Robust command-line history
- Tab completion and command prediction (See about_PSReadLine)
- Supports command and parameter aliases
- Pipeline for chaining commands
- In-console help system, similar to Unix man pages

### Scripting language

As a scripting language, PowerShell is commonly used for automating the management of systems. It is also used to build, test, and deploy solutions, often in CI/CD environments. PowerShell is built on the .NET Common Language Runtime (CLR). All inputs and outputs are .NET objects. No need to parse text output to extract information from output. The PowerShell scripting language includes the following features:

- Extensible through functions, classes, scripts, and modules
- Extensible formatting system for easy output
- Extensible type system for creating dynamic types
- Built-in support for common data formats like CSV, JSON, and XML

### Configuration management

PowerShell Desired State Configuration (DSC) is a management framework in PowerShell that enables you to manage your enterprise infrastructure with configuration as code. With DSC, you can:

- Create declarative configurations and custom scripts for repeatable deployments
- Enforce configuration settings and report on configuration drift
- Deploy configuration using push or pull models

### Next steps

#### Getting started

Are you new to PowerShell and don't know where to start? Take a look at these resources.

- Installing PowerShell
- PowerShell 101
- PowerShell Bits tutorials
- PowerShell Learn modules

#### PowerShell in action

Take a look at how PowerShell is being used in different scenarios and on different platforms.

- PowerShell remoting over SSH
- Getting started with Azure PowerShell
- Building a CI/CD pipeline with DSC
- Managing Microsoft Exchange

[^1]: **Title:** [Microsoft Docs](https://docs.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7.1)<br>
**Publication:** [Microsoft Docs](https://docs.microsoft.com/en-us/)<br>
**Date:** 10/05/2021<br>