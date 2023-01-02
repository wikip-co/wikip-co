---
title: What is Project Eve?
image: eveos
tags:
- LF Edge
- Edge Computing
- Edge Virtualization Engine
---
## Description

Project EVE is building EVE-OS, a universal, open Linux-based operating system for distributed edge computing, designed to run appliances such as network firewalls and routers inside a virtualized environment. EVE-OS aims to do for the distributed edge what Android did for mobile by creating an open foundation that simplifies development, orchestration and security of edge computing nodes deployed on-prem and in the field. Supporting Docker containers, Kubernetes clusters and virtual machines, EVE-OS provides a flexible foundation for distributed edge deployments with choice of any hardware, application and cloud.[^1]

With EVE-OS, a company can consolidate several hardware devices into one physical appliance. Supporting Docker containers, Kubernetes clusters and virtual machines, EVE-OS provides a flexible foundation for distributed edge deployments with choice of any hardware, application and cloud.[^4]

EVE-OS can be deployed on any bare metal hardware (e.g. x86, Arm, GPU) or within a VM to provide consistent system and orchestration services and provides the ability to run applications in a variety of formats. Support for VMs enables users to continue to use existing software investments while building new containerized innovations in parallel.  Compared to agent-based edge management solutions, the bare metal EVE-OS eliminates the possibility of bricking a device in the field during an update, requiring an expensive truck roll.[^1]

Orchestration of the underlying hardware and installed software is achieved through the open EVE API, providing developers with consistent behavior across a diverse mix of technology ingredients. Offering consistency and flexibility while maintaining a robust, state-of-the-art security posture is a key project tenet.[^1]

## Edge Virtualization Engine

EVE aims to develop an open, agnostic and standardized architecture unifying the approach to developing and orchestrating cloud-native applications across the enterprise on-premises edge. It offers users new levels of control through hardware-assisted virtualization of on-prem edge devices. Once installed, EVE has direct access to and control of underlying resources and provides standard APIs that allow more efficient use of resources and can effectively partition hardware to increase workload consolidation and application multi-tenancy.[^2]

EVE supports both ARM and Intel architectures and requires hardware-assisted virtualization. While EVE can run on a board as small as a $20 Orange Pi, the sweet spot for its deployment are IoT Gateways and Industrial PCs.[^2]

## Background

EVE-OS aims to do for the distributed edge what Android did for mobile by creating an open foundation that simplifies development, orchestration and security of edge computing nodes deployed on-prem and in the field.[^3]

EVE-OS makes a radical departure from both embedded Linux and traditional Linux distributions: it is based on a Linux kernel, but at its heart is the hypervisor.[^3]

EVE-OS employs some of the most reliable and size-conscious sets of building blocks from Alpine Linux and linuxkit.[^3]

While EVE-OS is not strictly speaking based on Alpine, it leverages bits and pieces of Alpine in new and unusual ways. [^3]

## Use Cases

As a real-world use case example, Project EVE is used for predictive maintenance for oil rigs, where AI can help detect when a drill has come to the end of its useful life, or when it is about to fail.[^4]

A similar use case would be with Heating, Ventilation, and Air Conditioning (HVAC), where an industrial cooling unit may be monitored continually for signs of failure or wear. An accurate prediction can mean the difference between a unit failing, and being serviced to prevent a failure.[^4]

[^1]: https://www.lfedge.org/projects/eve/
[^2]: https://github.com/lf-edge/eve
[^3]: https://gitlab.alpinelinux.org/alpine/alpineconf-cfp/-/issues/16
[^4]: [The Linux Foundation: Introduction to Kubernetes on Edge with K3s](https://www.edx.org/course/introduction-to-kubernetes-on-edge-with-k3s)