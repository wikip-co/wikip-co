---
title: What is Prometheus?
image: prometheus
tags:
- Metrics
- Time series database
- Server Monitoring
- Software
- System Monitors
- Management Systems
- Systems Management
---
## Description

Prometheus is a free software application used for event monitoring and alerting. It records real-time metrics in a time series database (allowing for high dimensionality) built using a HTTP pull model, with flexible queries and real-time alerting.

The project is written in Go and licensed under the Apache 2 License, with source code available on GitHub, and is a graduated project of the Cloud Native Computing Foundation, along with Kubernetes and Envoy.

## Architecture

A typical monitoring platform with Prometheus is composed of multiple tools:

- Multiple exporters that typically run on the monitored host to export local metrics.
- Prometheus to centralize and store the metrics.
- Alertmanager to trigger alerts based on those metrics.
- Grafana to produce dashboards.
- PromQL is the query language used to create dashboards and alerts.

**Website:** prometheus.io<br>
**Repository:**	github.com/prometheus/prometheus<br>
**Operating system(s):** Cross-platform<br>
**Written in:**	Go