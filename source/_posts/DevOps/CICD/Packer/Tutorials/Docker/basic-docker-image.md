---
title: How to Build a Basic Docker Ubuntu Image with Packer
image: packer
tags:
-
---
In this tutorial you will build a Docker container image.[^1]

The following section contains a complete Packer template that can be used to build an  Ubuntu Docker image.

Create a file named `docker-ubuntu.pkr.hcl` and add the following code:
```
packer {
  required_plugins {
    docker = {
      version = ">= 0.0.7"
      source  = "github.com/hashicorp/docker"
    }
  }
}

source "docker" "ubuntu" {
  image  = "ubuntu:xenial"
  commit = true
}

build {
  name = "learn-packer"
  sources = [
    "source.docker.ubuntu"
  ]
}
```
### Build

Run through the following Pack commands to build the image(s):

```
Initialize your Packer configuration.

$ packer init .

Format your template.

$ packer fmt .

Validate your template.

$ packer validate .

Build the image.

$ packer .
```

#### Verify

List all the Docker images to confirm that Packer successfully built your Docker image.

```
$ docker images
```

[^1]: https://learn.hashicorp.com/tutorials/packer/docker-get-started-build-image?in=packer/docker-get-started