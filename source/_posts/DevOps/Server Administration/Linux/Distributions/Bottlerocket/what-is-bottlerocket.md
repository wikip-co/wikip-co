---
title: What is Bottlerocket?
image: bottlerocket
tags:
- Containers
---
## Description

Bottlerocket is a Linux-based open-source operating system that is purpose-built by Amazon Web Services for running containers. Bottlerocket includes only the essential software required to run containers, and ensures that the underlying software is always secure. With Bottlerocket, customers can reduce maintenance overhead and automate their workflows by applying configuration settings consistently as nodes are upgraded or replaced. 

Bottlerocket is now generally available at no cost as an Amazon Machine Image (AMI) for Amazon Elastic Compute Cloud (EC2).

## Benefits

### Increased uptime for container applications

Updates to Bottlerocket are applied in a single step and can be rolled back if necessary, resulting in lower error rates and improved uptime for container applications. By contrast, general-purpose operating systems are typically updated package-by-package.

### Open-source development model enables custom builds

Bottlerocket’s open development model enables customers and partners to produce custom builds, for example, builds that support their preferred orchestrators. Changes in these custom builds can be contributed back for inclusion to the Bottlerocket open source project.

### Lower management overhead and operational costs

Updates to Bottlerocket can be automated using container orchestration services such as Amazon EKS, which lowers management overhead and reduces operational costs.

### Improved security and resource utilization

Bottlerocket includes only the essential software to run containers, which improves resource utilization and reduces the attack surface compared to general-purpose operating systems.

### Optimized performance through AWS integrations

AWS provided builds of Bottlerocket are optimized to run on Amazon EC2 and include support for the latest Amazon EC2 instance capabilities. They also have built-in integrations with AWS services for container orchestration, registries, and observability.

### 3 years of support

AWS-provided builds of Bottlerocket come with three years of support after General Availability is announced. These AWS-provided builds are covered by AWS support plans at no incremental cost. Additionally, community support is available on the Bottlerocket GitHub.

[^1] [^2] [^3]

[^1]: https://aws.amazon.com/bottlerocket/
[^2]: https://github.com/bottlerocket-os/bottlerocket#bottlerocket-os 
[^3]: https://docs.aws.amazon.com/eks/latest/userguide/launch-node-bottlerocket.html