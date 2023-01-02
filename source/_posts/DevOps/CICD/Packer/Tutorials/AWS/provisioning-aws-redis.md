---
title: Using Packer to Provision an Ubuntu AMI with Redis Installed
image: packer
tage:
- AWS
- Packer
---
In this tutorial you will build a t2.micro Amazon EC2 AMI. You will complete your image by installing Redis on it. Although pre-installing Redis to your AMI is a small example, it should give you an idea of what Packer provisioners can do.

The following section contains a complete Packer template that can be used to build an AWS Ubuntu AMI in the us-west-2 region.

Create a file named aws-ubuntu.pkr.hcl and add the following code:[^1]

```
packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.1"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  ami_name      = "learn-packer-linux-aws-redis"
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

build {
  name = "learn-packer"
  sources = [
    "source.amazon-ebs.ubuntu"
  ]

  provisioner "shell" {
    environment_vars = [
      "FOO=hello world",
    ]
      "echo Installing Redis",
    inline = [
      "sleep 30",
      "sudo apt-get update",
      "sudo apt-get install -y redis-server",
      "echo \"FOO is $FOO\" > example.txt",
    ]
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

Visit the AWS AMI page to verify that Packer successfully built your AMI.

- https://us-west-2.console.aws.amazon.com/ec2/v2/home?region=us-west-2#LaunchInstanceWizard

[^1]: https://learn.hashicorp.com/tutorials/packer/aws-get-started-provision?in=packer/aws-get-started