---
title: Using Variables with Packer Configuration Files
image: packer
tags:
- Packer
---
sample docker-ubuntu.pkr.hcl
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
  image  = var.docker_image
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
    inline = ["echo Running ${var.docker_image} Docker image."]
  }
}

variable "docker_image" {
  type    = string
  default = "ubuntu:xenial"
}
```

Packer will automatically load any variable file that matches the name *.auto.pkrvars.hcl, without the need to pass the file via the command line.[^1]

Example variable file `example.auto.pkvars.hcl`
```
docker_image = "ubuntu:bionic"
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



[^1]: https://learn.hashicorp.com/tutorials/packer/docker-get-started-variables?in=packer/docker-get-started