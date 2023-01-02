---
title: Terraform Execution Plans
image: hashicorp
tags:
-
---
## Description

An Execution PLan is a manual review of what will add, change or destroy before you applly changes (with `terraform apply`).

You can visualize an execution plan as a graph using the `terraform graph` command.  Terraform will output a GraphViz file (you'll need GraphViz installed to view the file).

### What is GraphViz

GraphViz is an open-source tool for drawing graphs specified in DOT language scripts having the file name extension `gv`.