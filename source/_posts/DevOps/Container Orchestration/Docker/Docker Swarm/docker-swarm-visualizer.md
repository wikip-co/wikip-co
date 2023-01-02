---
title: How to Deploy a Docker Swarm Visualizer
image: docker
tags:
- Container Orchestration
- Docker Compose
---
## Description

This article shows how to deploy a demo container that displays Docker services running on a Docker Swarm in a webui diagram.[^1]

Each node in the swarm will show all tasks running on it. When a service goes down it'll be removed. When a node goes down it won't, instead the circle at the top will turn red to indicate it went down. Tasks will be removed. Occasionally the Remote API will return incomplete data, for instance the node can be missing a name. The next time info for that node is pulled, the name will update.[^1]

### Please Note

This is a sample app meant for learning Docker. Running this app in production is insecure and should be avoided. If you want to run it in production you must take all security precautions, and in particular Protect the Docker daemon socket with SSL.[^1]

### Prerequisites

This only works with Docker Swarm Mode in Docker Engine 1.12.0 and later.[^1]

These instructions presume you have a swarm running.

Execute the following command on the master node:

```
$ docker service create \
  --name=viz \
  --publish=8080:8080/tcp \
  --constraint=node.role==manager \
  --mount=type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
  dockersamples/visualizer
```

[^1]: https://github.com/dockersamples/docker-swarm-visualizer