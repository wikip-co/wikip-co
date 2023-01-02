---
title: Create a Vagrant Box from an AMI with Packer Post-Processors
image: packer
tage:
- AWS
- Packer
- Vagrant
- Virtual Machines
---
Post-processors run only AFTER packer saves the instance as an image.  Post-processors are varied in their function; they can comrpess the artifact(s), upload the artifact(s) into the cloud, or create a file that describes the artifact and build.

In this tutorial, you will add the vagrant post-processor to create a Vagrant box from your AMI.[^1]

The following section contains a complete Packer template that can be used to build an AWS Ubuntu AMI in the us-west-2 region.

Create a file named `aws-ubuntu.pkr.hcl` and add the following code:[^1]

```
packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.1"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

variable "ami_prefix" {
  type    = string
  default = "learn-packer-linux-aws-redis"
}

locals {
  timestamp = regex_replace(timestamp(), "[- TZ:]", "")
}

source "amazon-ebs" "ubuntu" {
  ami_name      = "${var.ami_prefix}-${local.timestamp}"
  instance_type = "t2.micro"
  region        = "us-west-2"
  source_ami_filter {
    filters = {
      name                = "ubuntu/images/*ubuntu-xenial-16.04-amd64-server-*"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"]
  }
  ssh_username = "ubuntu"
}

source "amazon-ebs" "ubuntu-focal" {
  ami_name      = "${var.ami_prefix}-focal-${local.timestamp}"
  instance_type = "t2.micro"
  region        = "us-west-2"
  source_ami_filter {
    filters = {
      name                = "ubuntu/images/*ubuntu-focal-20.04-amd64-server-*"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"]
  }
  ssh_username = "ubuntu"
}

build {
  name    = "learn-packer"
  sources = [
    "source.amazon-ebs.ubuntu",
    "source.amazon-ebs.ubuntu-focal",
  ]

  provisioner "shell" {
    environment_vars = [
      "FOO=hello world",
    ]
    inline = [
      "echo Installing Redis",
      "sleep 30",
      "sudo apt-get update",
      "sudo apt-get install -y redis-server",
      "echo \"FOO is $FOO\" > example.txt",
    ]
  }

  provisioner "shell" {
    inline = ["echo This provisioner runs last"]
  }
post-processor "vagrant" {}
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

Use Vagrant to launch the image:

```
vagrant box add my-box name-of-the-box.box
vagrant init my-box
vagrant up
```

To check status:

```
vagrant status
```

### Cleanup

To remove any AMIs created during this exercise:

1. [AWS AMI management page](https://us-west-2.console.aws.amazon.com/ec2/v2/home?region=us-west-2#Images:visibility=owned-by-me;sort=tag:Name) > Actions Menu > Select 'Deregister AMI'
1. [AWS Snapshot management page](https://us-west-2.console.aws.amazon.com/ec2/v2/home?region=us-west-2#Snapshots:visibility=owned-by-me;sort=tag:Name) > Actions menu > Select 'Delete snapshot'

[^1]: https://learn.hashicorp.com/tutorials/packer/aws-get-started-provision?in=packer/aws-get-started