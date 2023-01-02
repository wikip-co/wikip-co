---
title: What is Change Management?
image: git
tags:
-
---
## Description

Change Management is a standard approach to apply changes and resolve conflicts brought about by change.  In the context of Infrastructure as Code (IaC), Change Management is a procedure that will be followed when resources are modified via configuration script.

## What is Change Automation?

Change Automation is a way of automatically creating a consistent, systematic, and predictable way of managing change requests via controls and policies.

Terraform uses Change Automation in the form of execution plans and resources graphs to apply and review complex changesets.

Change Automation allows you to know exactly what Terraform will change and in what order, avoiding many possible huan errors.

### What is a ChangeSet?

A ChangeSet is a collection of commits that represent changes made to a versioning repository. IaC uses ChangeSets so you can see what has changed by who over time.