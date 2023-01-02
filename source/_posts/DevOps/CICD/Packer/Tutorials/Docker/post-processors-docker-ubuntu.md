---
title: Packer Post Processors
---
```
packer {
  required_plugins {
    docker = {
      version = ">= 0.0.7"
      source  = "github.com/hashicorp/docker"
    }
  }
}

variable "docker_image" {
  type    = string
  default = "ubuntu:xenial"
}

source "docker" "ubuntu" {
  image  = var.docker_image
  commit = true
}

source "docker" "ubuntu-bionic" {
  image  = "ubuntu:bionic"
  commit = true
}

build {
  name    = "learn-packer"
  sources = [
    "source.docker.ubuntu",
    "source.docker.ubuntu-bionic",
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
    inline = ["echo Running ${var.docker_image} Docker image."]
  }

  post-processors {
    post-processor "docker-import" {
      repository = "anthonyrussano/testpush"
      tag        = "latest"
    }
    post-processor "docker-push" {}
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
