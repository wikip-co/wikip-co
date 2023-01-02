---
title: Installing kubectl on Ubuntu
image: kubernetes
tags:
- Container Orchestration
- kubectl
- Kubernetes
---
## Description

This article explains how to install `kubectl` on Ubuntu Linux.[^1]


## Steps

1. To download the latest release of `kubectl` use the following command:

```
$ curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
```

2. To install `kubectl` run:

```
$ sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```
3. Verify installation:

```
$ kubectl version
```

## Sources

[^1]: [Kubernetes.io: Install Kubectl - Linux](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)