---
title: Using the AWS CLI Docker Image
image: docker
tags:
- Docker
- Command Line Tools
---
## Desccription

This document will outline how to use the official AWS CLI version 2 Docker image.

This enables you to use the AWS CLI version 2 in a container-based environment without having to manage the installation yourself.

## Requirements

- A set of Access keys for AWS CLI.
- You must have Docker installed.
- Access to the official AWS CLI version 2 Docker image, hosted on DockerHub in the `amazon/aws-cli` repository.

## Steps

### Run the AWS CLI version 2 Docker image

`$ docker run --rm -it amazon/aws-cli <command>`

The first time you use the `docker run` command, the latest Docker image is downloaded to your computer. Each subsequent use of the `docker run` command runs from your local copy.

### Configure your access keys 

Because the AWS CLI version 2 is run in a container, by default the CLI can't access the host file system, which includes configuration and credentials.

To share the host file system, credentials, and configuration to the container, mount the host system’s ~/.aws directory to the container at /root/.aws with the -v flag to the docker run command.

`$ docker run --rm -it -v ~/.aws:/root/.aws amazon/aws-cli <command>`

This allows the AWS CLI version 2 running in the container to locate host file information.

If you do not have any previous credentials stored on your system, you can run  the following command and they will be created:

`$ docker run --rm -it -v ~/.aws:/root/.aws amazon/aws-cli configure`

You should be prompted to input your Access Key and Secret Access Key.

The `~/.aws` directory will be created if it does not already exist.

[^1] [^2]

[^1]: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-docker.html
[^2]: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html
[^3]: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html