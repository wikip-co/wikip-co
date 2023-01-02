---
title: Installing Docker on a Raspberry Pi
image: docker
tags:
- Docker
- Raspberry Pi
---
## Background

You can install the Docker client on your Raspberry Pi with just one terminal command.[^2]

## Requirements

- Hardware: Raspberry Pi 4
- OS: Debian 10 (Buster)

## Installation

Run the following commands:[^1] [^2]

```
$ sudo apt update
$ sudo apt upgrade
$ curl -sSL https://get.docker.com | sh
```

## Post-Install Configuration

Once that completes, run the following commands to allow docker to run as non-root:[^3]

```
$ sudo groupadd docker
$ sudo usermod -aG docker $USER
$ newgrp docker 
```

# Sources

[^1]: **Title:** [Installing Docker on the Raspberry Pi](https://pimylifeup.com/raspberry-pi-docker/)<br>
**Publication:** [PiMyLife Up](https://pimylifeup.com/)

[^2]: **Title:** [Docker comes to Raspberry Pi](https://www.raspberrypi.com/news/docker-comes-to-raspberry-pi/)<br>
**Publication:** [Raspberry Pi Foundation News](https://www.raspberrypi.com/news)<br>
**Author(s):** [Matt Richardson](https://www.raspberrypi.com/news/author/matt-richardson)

[^3]: **Title:** [Docker Docs: Post-Install for Linux](https://docs.docker.com/engine/install/linux-postinstall/)<br>
**Publication:** [Docker Docs](https://docs.docker.com/)