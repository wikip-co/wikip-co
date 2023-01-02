---
title: The Container Network Model
image: docker
tags:
- Docker
- Containers
- Fundamentals
- Networking
---
Docker networking is built on an architecture called the Container Network Model (CNM). The CNM is an architecture that allows us to provide a networking model that is simple and efficient, while at the same time ensuring that the applications running in the containers are safe, secure, and portable. Let us have a look at the CNM model.[^1]

<img src="https://res.cloudinary.com/alchemist-cookbook/image/upload/container-network-model-fig4-1.jpg" width="600" style="border-radius: 5px; border-width: 1px; border-color: #c9c9c9; border-style: solid;   display: block; margin-left: auto; margin-right: auto;">[^1]

The CNM typically have several constructs and let us have a quick look at those.[^1]

- Sandbox: The Sandbox is a construct that contains a full configuration of the container’s network stack. This means that it contains interfaces, routing tables, DNS settings, a. etc. However, the Sandbox is completely insulated from the outside world save for endpoints. Endpoints are described below.[^1]

- Endpoints: The Endpoints join the Sandbox to the outside world via networks. We can think of endpoints as a gateway to the outside world, which in this case, are networks.[^1]

- Network: The network here could be a complex network created by the user, or a Linux bridge or a VLAN. The important thing to note here is that endpoints connected to the same network will have connectivity amongst themselves. In other words, endpoints connected to the same network can communicate with each other as well.[^1]

[^1]: **Title:** Docker Demystified: Learn How to Develop and Deploy Applications Using Docker<br>
**Publication:** BPB Publications, India<br>
**Date:** 2021<br>
**Author(s):** Saibal Ghosh<br>