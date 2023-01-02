---
title: Cluster Monitoring Setup using Grafana
image: grafana
tags:
- K3s
- kubectl
- kubernetes
---

## Requirements

This tutorial assumes you have a running Kubernetes cluster.

1. Log into the master node using the root user account.

2. Perform the following updates/installations:
```
# apt update
# apt install -y build-essential golang
```
## Steps [^1] [^2] [^3] [^4]

Download or clone the `cluster-monitoring` project.

```
# git clone https://github.com/carlosedp/cluster-monitoring
# cd cluster-monitoring
# make vendor
```
Wait for command to complete. Then run, `make`
```
# make
```
Wait for this to complete creating manifest files.

Now apply the setup manifests.
```
# kubectl apply -f manifests/setup/
# kubectl apply -f manifests/
```
View status.
```
# kubectl get pods -n monitoring
```
Watch status until complete.
```
# watch kubectl get pods -n monitoring
```

[^1]: [carlosedp cluster-monitoring](https://github.com/carlosedp/cluster-monitoring)
[^2]: [Raspberry Pi Cluster Episode 4 - Minecraft, Pi-hole, Grafana and More!](https://www.jeffgeerling.com/blog/2020/raspberry-pi-cluster-episode-4-minecraft-pi-hole-grafana-and-more)
[^3]: [Jeff Geerling - Turing Pi Cluster](https://github.com/geerlingguy/turing-pi-cluster)
[^4]: [Jeff Geerling - Raspberry Pi Cluster Ep 4 - Minecraft, Pi-hole, Grafana + MORE!](https://www.youtube.com/watch?v=IafVCHkJbtI)