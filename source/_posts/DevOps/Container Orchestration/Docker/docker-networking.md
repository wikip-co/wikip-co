---
title: Docker Networking
image: docker
tags:
- Docker
- Containers
- Fundamentals
- Networking
---
## Docker Networks

View the current networks available on the system by running the following command:

```
# docker network ls
```

The screenshot below should be similar to the output you received.

<img src="https://res.cloudinary.com/alchemist-cookbook/image/upload/docker%20network%20ls.png" width="600" style="border-radius: 5px; border-width: 1px; border-color: #c9c9c9; border-style: solid;   display: block; margin-left: auto; margin-right: auto;">

There will be three standard networks available on any docker installation unless we have installed docker swarm.[^1]

### The Bridge Network

Think about the bridge network as a linking device operating at the link layer to forward traffic to other networks. When we install the docker software, the software automatically installs the docker bridge, which sets up rules, so that all containers automatically get connected to the docker bridge, and this helps to establish a communication channel amongst the containers.[^1]

### The Host Network

We can also use the host network to create a container. If we do so, the container is created without its network namespace and uses the host’s networking namespace. On top of it, the container is not allocated its own IP address.[^1]

Normally, there is no real reason to do this unless we are trying to debug or analyze the traffic flowing through the host network.[^1]

Since the container does not have its own network stack and it uses the host’s network stack, there is no scope for port-mapping, and all port mapping options are ignored and produce a warning message instead.[^1]

### The None Network

When we don’t have any requirement for the container to connect to the outside world, we can use the none network. This container will be completely isolated from the outside world, and applications running inside the container will be insulated from anywhere outside the container.[^1]

### Using an existing container's namespace

There is a mechanism by which we can have a container use the network stack of an existing container. In other words, the new container will not have a network stack of its own; instead, it will start using the existing container’s network stack. The new container will have its processes and filesystem but will share the same IP address and port numbers as the first container, and the two containers will be able to talk over the loopback interface.[^1]

## Port Mapping

Port mapping is very important, because the outside world needs to communicate with the container, and it can only do so when it goes through a host port. The host port needs to be mapped to a port in the container.[^1]

<img src="https://res.cloudinary.com/alchemist-cookbook/image/upload/docker%20container%20port%20mapping.jpg" width="600" style="border-radius: 5px; border-width: 1px; border-color: #c9c9c9; border-style: solid;   display: block; margin-left: auto; margin-right: auto;">

If we look at the diagram, we will see that the port 8080 on the host is mapped to the port 80 on the container while the port 56 on the host is mapped to port 60. So, all external traffic will be channeled through the host port to the container port to create a connection.[^1]

But none of this is required when the container wants to communicate with the outside world. This is possible because the container’s IP address is hidden behind the host’s IP address. It is as if the host itself is talking to other applications. To do this outbound Network Address Translation (NAT), Docker uses the Linux netfilter framework.[^1]

[^1]: **Title:** Docker Demystified: Learn How to Develop and Deploy Applications Using Docker<br>
**Publication:** BPB Publications, India<br>
**Date:** 2021<br>
**Author(s):** Saibal Ghosh<br>