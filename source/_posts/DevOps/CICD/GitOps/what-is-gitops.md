---
title: What is GitOps?
image: git
tags:
- DevOps Principles
---
## Description

GitOps is both an operational framework and set of practices for using Git to manage infrastructure and application configurations.[^2]

GitOps applies the DevOps best practices for application development to infrastructure automation.

It uses Git as a single source of truth for declarative infrastructure and applications. The Git repository contains the entire state of the system so that the trail of changes to the system state are visible and auditable.[^2]

Since its inception in 2017, the term GitOps has grown in popularity among the cloud-native and Kubernetes communities.[^4]

## GitOps / DevOps principles

The GitOps process is characterized by these DevOps principles:[^4]

- Best practices for deployment, management, and monitoring of containerized applications

- A developer-centric experience for managing applications, with fully automated pipelines/workflows using Git for development and operations

- Use of the Git revision control system to track and approve changes to the infrastructure and run-time environment of applications

## Core components

### Infrastructure as Code (IaC)

GitOps uses a Git repository as the single source of truth for infrastructure definitions. Infrastructure as code (IaC) is the practice of keeping all infrastructure configuration stored as code within a git repository.[^3]

### Merge Requests (MRs)

GitOps uses merge requests (MRs) as the change mechanism for all infrastructure updates. The MR is where teams can collaborate via reviews and comments and where formal approvals take place. A merge commits to your main (or trunk) branch and serves as an audit log.[^3]

### Continuous Integration and Continuous Delivery (CI/CD)

GitOps automates infrastructure updates using a Git workflow with continuous integration and continuous delivery (CI/CD). When new code is merged, the CI/CD pipeline enacts the change in the environment.

Any configuration drift, such as manual changes or errors, is overwritten by GitOps automation so the environment converges on the desired state defined in Git.

GitLab uses CI/CD pipelines to manage and implement GitOps automation.[^3]

### Approval process

Developers make changes to the code, create a merge request, then an approver merges these changes, and the change is deployed.

This sequence introduces a “change by committee” element to infrastructure.

[^1]: https://gist.github.com/calaway/ea880263b0c0495bb00ee877f001dc59

[^2]: https://www.redhat.com/en/topics/devops/what-is-gitops

[^3]: https://about.gitlab.com/topics/gitops/

[^4]: **Title:** [GitOps and Kubernetes: Continuous Deployment](https://www.manning.com/books/gitops-and-kubernetes)<br>
**Publication:** [Manning Publications](https://www.manning.com/)<br>
**Date:** February 2021