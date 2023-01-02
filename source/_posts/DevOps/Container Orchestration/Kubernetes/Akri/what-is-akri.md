---
title: What is Akri?
image: akri
tags:
- Kubernetes
---
Akri lets you easily expose heterogeneous leaf devices (such as IP cameras and USB devices) as resources in a Kubernetes cluster, while also supporting the exposure of embedded hardware resources such as GPUs and FPGAs. Akri continually detects nodes that have access to these devices and schedules workloads based on them.[^1]

Akri was designed for "building a connected edge with Kubernetes"; the project was developed by the Microsoft Azure team and open sourced in October 2020.[^2]

Akri is less about managing edge Kubernetes clusters, and more about using Kubernetes as a conduit, and data plane for accessing remote devices such as GPUs and IP cameras.[^2]

Akri's focus is discovering and managing edge Kubernetes clusters. Akri does this is by connecting edge clusters back to a larger centrally-managed cluster through two new components: the Akri Controller and Akri Agent.[^2]

[^1]: https://github.com/project-akri/akri
[^2]: [The Linux Foundation: Introduction to Kubernetes on Edge with K3s](https://www.edx.org/course/introduction-to-kubernetes-on-edge-with-k3s)