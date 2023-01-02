---
title: What is K3s?
image: k3s
tags:
- Container Orchestration
- Lightweight Kubernetes
- Open Source Projects
- Raspberry Pi
---
## Description

K3s is a lightweight version of Kubernetes. It's production ready, easy to install, half the memory, all in a binary less than 100 MB.[^4]

K3s is a fully compliant Kubernetes distribution with the following enhancements:[^2]

- Packaged as a single binary.
- Lightweight storage backend based on sqlite3 as the default storage mechanism. etcd3, MySQL, Postgres also still available.
- Wrapped in simple launcher that handles a lot of the complexity of TLS and options.
- Secure by default with reasonable defaults for lightweight environments.
- Simple but powerful “batteries-included” features have been added, such as: a local storage provider, a service load balancer, a Helm controller, and the Traefik ingress controller.
- Operation of all Kubernetes control plane components is encapsulated in a single binary and process. This allows K3s to automate and manage complex cluster operations like distributing certificates.
- External dependencies have been minimized (just a modern kernel and cgroup mounts needed). K3s packages required dependencies, including:
  - containerd
  - Flannel
  - CoreDNS
  - CNI
  - Host utilities (iptables, socat, etc)
  - Ingress controller (traefik)
  - Embedded service loadbalancer
  - Embedded network policy controller

## Use Cases

K3s is great for. . .

- Edge
- IoT
- CI
- Development
- ARM
- Embedding K8s
- Situations where a PhD in k8s clusterology is infeasible[^4]

K3s can provide similar capabilities to EVE through other CNCF and cloud native projects, and, when built as part of a complete architecture, can resemble a complete system more like EdgeX Foundry.[^6]

### Perfect for Edge

K3s is highly available and designed for production workloads in unattended, resource-constrained, remote locations or inside IoT appliances.[^1]

### Simplified & Secure

K3s is packaged as a single <50MB binary that reduces the dependencies and steps needed to install, run and auto-update a production Kubernetes cluster.[^1]

### Optimized for ARM

Both ARM64 and ARMv7 are supported with binaries and multiarch images available for both. K3s works great from something as small as a Raspberry Pi to an AWS a1.4xlarge 32GiB server.[^1]

## Background 

K3s is an open source project.[^4]  It was originally developed by Rancher Labs, a market leader in Kubernetes management software.[^2]

In August 2020, Rancher Labs donated K3s to the Cloud Native Computing Foundation (CNCF) who officially added K3s as a sandbox-level project managed under the auspices of the open source consortium. This action helped to ensure that open source governance policies would be applied in a way that does not unduly influence future product decisions in favor of any one vendor.[^5]

SUSE, the German-based multinational open-source software company, acquired Rancher Labs in December of 2020.[^3]

[^1]: https://k3s.io/
[^2]: https://rancher.com/docs/k3s/latest/en/
[^3]: https://www.suse.com/news/suse-completes-rancher-acquisition/
[^4]: https://github.com/k3s-io/k3s/blob/master/README.md
[^5]: https://containerjournal.com/topics/container-management/rancher-labs-donates-lightweight-kubernetes-to-cncf/
[^6]: [The Linux Foundation: Introduction to Kubernetes on Edge with K3s](https://www.edx.org/course/introduction-to-kubernetes-on-edge-with-k3s)