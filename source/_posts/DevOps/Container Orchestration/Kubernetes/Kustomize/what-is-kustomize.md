---
title: What is Kustomize?
image: kustomize
tags:
- Containers
- K8s
- Config
---
## Description

Kustomize is a Kubernetes-native configuration management feature. Kustomize works by traversing a Kubernetes manifest to add, remove or update configuration options without forking. Kustomize provides a template-free way to customize application configurations. Now, built into kubectl as apply -k.[^1]

It is available both as a standalone binary and as a native feature of kubectl.[^1]

[^1]: https://kustomize.io/