---
title: What is BalenaOS?
image: balenaos
tags:
- Embedded Computing
- Embedded Networks
- Docker
---
## Description

BalenaOS is an operating system optimized for running Docker containers on embedded devices, with an emphasis on reliability over long periods of operation, as well as a productive developer workflow inspired by the lessons learned while building balena.[^1]

The core insight behind balenaOS is that Linux containers offer, for the first time, a practical path to using virtualization on embedded devices. VMs and hypervisors have lead to huge leaps in productivity and automation for cloud deployments, but their abstraction of hardware, as well as their resource overhead and lack of hardware support, means that they are not suitable for embedded scenarios. With OS-level virtualization, as implemented for Linux containers, both those objections are lifted for Linux devices, of which there are many in the Internet of Things.[^1]

BalenaOS is an operating system built for easy portability to multiple device types (via the Yocto framework and optimized for Linux containers, and Docker in particular. There are many decisions, large and small, we have made to enable that vision, which are present throughout our architecture.[^1]

The first version of balenaOS was developed as part of the balena platform, and has run on thousands of embedded devices on balena, deployed in many different contexts for several years. balenaOS v2 represents the combination of the learnings we extracted over those years, as well as our determination to make balenaOS a first-class open source project, able to run as an independent operating system, for any context where embedded devices and containers intersect.[^1]

We look forward to working with the community to grow and mature balenaOS into an operating system with even broader device support, a broader operating envelope, and as always, taking advantage of the most modern developments in security and reliability.[^1]

## Balena Cloud and BalenaOS

BalenaCloud is a device deployment and management infrastructure platform aimed at deploying IoT applications and managing fleets of IoT devices. BalenaOS is the operating system deployed to each of the IoT devices which make up a larger fleet: its tagline is: "Run Docker containers on embedded devices".[^2]

BalenaOS can be used as a self-hosted operating system, or connected to Balena’s cloud. It uses the open source Moby project created at Docker to schedule workloads as containers on devices.[^2]

As of April 2021, over 65 different devices are supported by Balena Cloud; each must be able to run a Linux operating system and have virtualization capabilities. Balena’s (optional) cloud platform has built-in tools for provisioning, secure tunnels, and distributing updates efficiently.[^2]

Balena has a built-in mechanism to build and deploy new versions of code, triggered by pushing code to a git repository. You can see a number of demos for the Raspberry Pi, like running an SSH server, controlling GPIO, or accessing a camera.[^2]

[^1]: https://www.balena.io/docs/reference/OS/overview/2.x/
[^2]: [The Linux Foundation: Introduction to Kubernetes on Edge with K3s](https://www.edx.org/course/introduction-to-kubernetes-on-edge-with-k3s)