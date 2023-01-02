---
title: Mounting NFS Volumes with Docker
image: docker
tags:
- Docker
- Docker Compose
- NFS Share
- NFS
- Network File System
- Shared Volumes
- Docker Swarm
---
## Description

This article documents how to mount an NFS volume to a docker container using `docker compose` or `docker stack` with a `docker-compose.yml` file.[^1]

You may see issues where the volumes are not automatically updated in the container when the data changes on the host.[^1]

Make sure the NFS share/folder exists on the server before attempting to mount it.

Don't remove 'soft' and 'nolock' unless you're sure you know what you're doing - this stops docker from freezing if your NFS server goes away.[^1]

### Examples

Example `docker-compose.yml`[^1]
```
version: "3.2"

services:
  rsyslog:
    image: jumanjiman/rsyslog
    ports:
      - "514:514"
      - "514:514/udp"
    volumes:
      - type: volume
        source: example
        target: /nfs
        volume:
          nocopy: true
volumes:
  example:
    driver_opts:
      type: "nfs"
      o: "addr=10.40.0.199,nolock,soft,rw"
      device: ":/docker/example"

```


Example `docker-compose.yml`
```
---
version: "3.5"
services: # $ docker stack deploy -c docker-compose.yml calibre
  calibre:
    image: lscr.io/linuxserver/calibre:arch-version-1b31d319
    ports:
      - 8091:8080
      - 8092:8081
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=America/Los_Angeles
      - PASSWORD= #optional
      - CLI_ARGS= #optional
    volumes:
      - type: volume
        source: library
        target: /config
        volume:
          nocopy: true
volumes:
  library:
    driver_opts:
      type: "nfs"
      o: "addr=10.32.25.64,nolock,soft,rw"
      device: ":/media/anthony/data-share/nfs/calibre"
```

[^1]: https://stackoverflow.com/a/46481637