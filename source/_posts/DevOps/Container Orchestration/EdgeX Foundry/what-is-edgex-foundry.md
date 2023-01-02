---
title: What is EdgeX Foundry?
image: edgex
tags:
- The Linux Foundation
- LF Edge
---
## Description

EdgeX Foundry is a vendor-neutral open-source platform hosted by the Linux Foundation, providing a common framework for industrial IoT edge computing. At the core there is a set of loosely coupled microservices organized in different layers.

EdgeX Foundry is compatible with Windows, macOS and Linux systems. However developers provide docker containers to ship pre-built and ready to go images of each component. Repositories provide a collection of docker-compose files that can be used to easily setup the entire platform by selecting the release version to target.

EdgeX Foundry is split into four primary layers: device, core, supporting, and application. It is a collection of more than a dozen microservices that are deployed to provide a minimal edge platform capability.[^1]

<img src="https://res.cloudinary.com/alchemist-cookbook/image/upload/edgex-platform-all-layers" width="600px">

[^1]: [The Linux Foundation: Introduction to Kubernetes on Edge with K3s](https://www.edx.org/course/introduction-to-kubernetes-on-edge-with-k3s)