---
title: Docker Volumes
image: docker
tags:
- Containers
- Docker
- Volumes
- Docker Volumes
---
## Description

Docker volumes are file systems that are stored on the host and mounted in the Docker containers.  They are used to preserve data independent of the container life cycle.[^1]

## Videos

<iframe width="560" height="315" src="https://www.youtube.com/embed/p2PH_YPCsis?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/SBUCYJgg4Mk?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Types of Volumes

### Host Volumes

`-v /path/on/host:/path/in/container`

### Anonymous Volumes

`-v /path/in/container`

### Named Volumes

`-v volume_name:/path/in/container`

## docker compose

### Named Volume Examples

```
version: '3'
services:
  mongodb:
    image: mongo
    ports:
      - 27017:27017
    volumes:
      - db-data:/var/lib/mysql/data
  service_two:
    image: coolio
    ports:
      - 8080:8080
    volumes:
      - db-data:/var/lib/data
  volumes:
    db-data:
      driver: local

```

## docker volume command

`docker volume inspect [volume_name]`

[^1]: https://phoenixnap.com/kb/docker-volumes#:~:text=What%20are%20Docker%20Volumes%3F,file%20systems%20between%20containers%20easily.
[^2]: https://www.youtube.com/watch?v=p2PH_YPCsis&t=1s