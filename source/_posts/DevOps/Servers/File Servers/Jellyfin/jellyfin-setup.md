---
title: Jellyfin Setup and Deployment
image: jellyfin
tags:
-
---
## Description

This document outlines how to install Jellyfin on your network.

## Resources  & Tools

In our example we will be using the following:

Command-Line Tools

- Docker
- Docker Compose
- Docker Hub

Hardware

- Raspberry Pi 4 (Bullseye 64bit)
- Samsung T7 SSD (1TB)

Software

Git Repo: https://gitlab.com/anthonyrussano/jellyfin-server

## Steps

### Configure Persistant Storage

I have created an NFS share on the Raspberry Pi.

This share contains folders for Jellyfin's config, cache, and media volumes.

### Docker Run

For testing purposes, we can run the following `docker run` command to quickly spin up the Jellyfin Server.

#### Host Network

```
docker run -d \
 --name jellyfin \
 --user uid:gid \
 --net=host \
 --volume /path/to/config:/config \
 --volume /path/to/cache:/cache \
 --mount type=bind,source=/path/to/media,target=/media \
 --restart=unless-stopped \
 jellyfin/jellyfin
```

#### Bridge Network

```
docker run -d \
 --name jellyfin \
 --user uid:gid \
 -p 8096:8096 \
 -p 8920:8920 \
 --volume /path/to/config:/config \
 --volume /path/to/cache:/cache \
 --mount type=bind,source=/path/to/media,target=/media \
 --restart=unless-stopped \
 jellyfin/jellyfin
```

### Docker Compose

For a more permanent setup, we recommend creating the following docker-compose.yml file on your server:

#### Bridge Network

```
version: "3.5"
services:
  jellyfin:
    image: jellyfin/jellyfin
    container_name: jellyfin
    user: 1001:1001
    network_mode: "bridge"
    volumes:
      - /share/jellyfin/config:/config
      - /share/jellyfin/cache:/cache
      - /share/jellyfin/media:/media
    ports:
      - 8096:8096
      - 8920:8920 #optional
    restart: "unless-stopped"
```

Of course, replace the user and volumes with your custom values.
Then, just run `docker-compose up -d` and the Jellyfin server should be available on the ports specified.

[^1] [^2] [^3]

[^1]: https://hub.docker.com/r/jellyfin/jellyfin
[^2]: https://github.com/jellyfin/jellyfin
[^3]: https://jellyfin.org/docs/general/administration/installing.html#docker