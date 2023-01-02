---
title: What is Flux?
image: flux.png
tags:
-
---
## Description

Flux provides GitOps for both apps and infrastructure.[^1]

Flux is a set of continuous and progressive delivery solutions for Kubernetes that are open and extensible.[^1]

Flux is a tool for keeping Kubernetes clusters in sync with sources of configuration (like Git repositories), and automating updates to configuration when there is new code to deploy.[^3]

Flux is built from the ground up to use Kubernetes' API extension system, and to integrate with Prometheus and other core components of the Kubernetes ecosystem. In version 2, Flux supports multi-tenancy and support for syncing an arbitrary number of Git repositories, among other long-requested features.[^3]

Flux is constructed with the GitOps Toolkit, a set of composable APIs and specialized tools for building Continuous Delivery on top of Kubernetes.[^3]

Flux is a CNCF Incubating project.[^1] Flux was accepted to CNCF on July 15, 2019 and is at the Incubating project maturity level.[^2]

![](https://res.cloudinary.com/alchemist-cookbook/image/upload/v1639211211/flux-gitops-toolkit.png)

[^1]: https://fluxcd.io/
[^2]: https://www.cncf.io/projects/flux/
[^3]: https://fluxcd.io/docs/