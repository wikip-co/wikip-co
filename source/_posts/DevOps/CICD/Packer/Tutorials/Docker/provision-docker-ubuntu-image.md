---
title: How to Provision a Docker Image with Packer
image: packer
tags:
-
---

Sample `docker-ubuntu.pkr.hcl`

```
packer {
  required_plugins {
    docker = {
      version = ">= 0.0.7"
      source = "github.com/hashicorp/docker"
    }
  }
}

source "docker" "ubuntu" {
  image  = "ubuntu:xenial"
  commit = true
}

build {
  name    = "learn-packer"
  sources = [
    "source.docker.ubuntu"
  ]

  provisioner "shell" {
    environment_vars = [
      "FOO=hello world",
    ]
    inline = [
      "echo Adding file to Docker Container",
      "echo \"FOO is $FOO\" > example.txt",
    ]
  }

  provisioner "shell" {
    script = "scripts/script.sh"
  }

  provisioner "shell" {
    inline = ["echo This provisioner runs last"]
  }
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
