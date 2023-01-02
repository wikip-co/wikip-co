---
title: Build an Image for an AWS EC2 Instance with Packer
image: packer
tage:
- Packer
- Ubuntu
- EC2
- HCL
- AMI
---
In this tutorial you will build a t2.micro Amazon EC2 AMI.[^1]

The following section contains a complete Packer template that can be used to build an AWS Ubuntu AMI in the `us-west-2` region.

Create a file named `aws-ubuntu.pkr.hcl` and add the following code:
```
packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.2"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  ami_name      = "learn-packer-linux-aws"
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
  name    = "learn-packer"
  sources = [
    "source.amazon-ebs.ubuntu"
  ]
}
```

### Authenticate to AWS

Before you can build the AMI, you need to provide your AWS credentials to Packer as environment variables.

These credentials should have permissions to create, modify and delete EC2 instances.

For the full list IAM permissions required to run the amazon-ebs builder perform a google search.

Add your AWS credentials as two environment variables, `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.

You may need to also export your `AWS_SESSION_TOKEN` and `AWS_SESSION_EXPIRATION` as environment variables.

#### LINUX

```
$ export AWS_ACCESS_KEY_ID=YOUR_ACCESS_KEY
$ export AWS_SECRET_ACCESS_KEY=YOUR_SECRET_KEY
```

#### WINDWS

```
> set AWS_ACCESS_KEY_ID=YOUR_ACCESS_KEY
> set AWS_SECRET_ACCESS_KEY=YOUR_SECRET_KEY
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

Visit the AWS AMI Wizard page in the same region to verify that Packer successfully built your AMI.

- https://us-west-2.console.aws.amazon.com/ec2/v2/home?region=us-west-2#LaunchInstanceWizard:

[^1]: https://learn.hashicorp.com/tutorials/packer/aws-get-started-build-image?in=packer/aws-get-started