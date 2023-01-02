---
title: What is Packer?
image: packer
tags:
- HashiCorp
---
Packer is an open source tool that enables you to create identical machine images for multiple platforms from a single source template. A common use case is creating "golden images" that teams across an organization can use in cloud infrastructure.[^1]

Packer is lightweight, runs on every major operating system, and is highly performant, creating machine images for multiple platforms in parallel. Packer comes out of the box with support for many platforms, the full list of which can be found at https://www.packer.io/docs/builders [^2]

Support for other platforms can be added via plugins.

The images that Packer creates can easily be turned into Vagrant boxes.

[^1]: https://www.packer.io/docs
[^2]: https://github.com/hashicorp/packer