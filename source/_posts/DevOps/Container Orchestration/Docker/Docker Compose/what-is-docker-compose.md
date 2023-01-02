---
title: What is Docker Compose?
image: compose
tags:
- Docker
---
## Background

Docker Compose is a tool provided by Docker that helps run and orchestrate multiple containers on a single Docker host. It provides the ability to build, run, and scale applications consisting of multiple services, each running in seperate containers.[^1]

### Purpose

Most modern applications consist of sevral services that work together. When using Docker containers, each application service runs in its own container.[^1]

Using the `docker container run` command can be too complicated to run such a multi-service application.[^1]

The Docker Compose tool provides a more efficient way, using YAML files to define the application for the Docker engine in a declarative way.[^1]

Docker Compose expects a YAML file called, `docker-compose.yml` as its default input.[^1]

### Declaritive Approach

The structure of a `docker-compose.yml` file is said to be a declarative way of describing and running a containerized application (potentially consisting of more than a single container).[^1]

This means we tell the Docker engine what the desired state for the application is and it has to figure out on its own how to achieve this desired state and how to reconcile it if the system deviates from it.[^1] 

## Quick Start

### Using Docker Compose [^2]

#### Three-step process:[^2]

1. Define your app's environment with a Dockerfile so it can be reproduced anywhere.
1. Define the services that make up your app in `docker-compose.yml` so they can be run together in an isolated environment.
1. Lastly, run `docker compose up` and Compose will start and run your entire app.

A Compose file looks like this: [^2]

```
services:
  web:
    build: .
    ports:
      - "5000:5000"
    volumes:
      - .:/code
  redis:
    image: redis
```

# Sources

[^1]: **Title:** Learn Docker<br>
**Publication:** Packt Publishing<br>
**Author(s):** Gabriel N. Schenker<br>
**Date:** 4/26/2018

[^2]: https://github.com/docker/compose