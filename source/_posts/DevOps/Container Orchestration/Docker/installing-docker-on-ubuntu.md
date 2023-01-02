---
title: Installing Docker on Ubuntu
image: docker
tags:
- Docker
- Ubuntu
---
## Background

The following steps outline how to install Docker Engine on Ubuntu.

## Requirements

- OS
  - Ubuntu Impish 21.10
  - Ubuntu Hirsute 21.04
  - Ubuntu Focal 20.04 (LTS)
  - Ubuntu Bionic 18.04 (LTS)

## Installation

Before you install Docker Engine for the first time on a new host machine, you need to set up the Docker repository. Afterward, you can install and update Docker from the repository.

### Setup the Repo

Run the following commands to prepare:[^1]

```
$ sudo apt-get update
$ sudo apt-get install \
ca-certificates \
curl \
gnupg \
lsb-release
```

Add Docker's official GPG key:

```
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```

Configure the repo:

```
$ echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

### Install the Docker Engine

```
$ sudo apt-get update
$ sudo apt-get install docker-ce docker-ce-cli containerd.io
```

## Post-Install Configuration

Once that completes, run the following commands to allow docker to run as non-root:[^2]

```
$ sudo groupadd docker
$ sudo usermod -aG docker $USER
$ newgrp docker 
```

# Sources

[^1]: **Title:** [Docker Docs: Install on Ubuntu](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)<br>
**Publication:** [Docker Docs](https://docs.docker.com/)

[^2]: **Title:** [Docker Docs: Post-Install for Linux](https://docs.docker.com/engine/install/linux-postinstall/)<br>
**Publication:** [Docker Docs](https://docs.docker.com/)