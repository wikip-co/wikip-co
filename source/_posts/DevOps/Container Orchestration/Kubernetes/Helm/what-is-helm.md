---
title: What is Helm?
image: helm.png
tags:
- Package manager
- Kubernetes
---
## Description

Helm is a tool that streamlines installing and managing Kubernetes applications. It is a package manager for Kubernetes.

### How to install Helm[^1] [^2]

#### Manual Install

1. Download your desired version: https://github.com/helm/helm/releases

2. Unpack it (`tar -zxvf helm-v3.0.0-linux-amd64.tar.gz`)

3. Find the helm binary in the unpacked directory, and move it to its desired destination (`mv linux-amd64/helm /usr/local/bin/helm`)

#### Scripted Install

Helm now has an installer script that will automatically grab the latest version of Helm and install it locally.[^4]

You can fetch that script, and then execute it locally. It's well documented so that you can read through it and understand what it is doing before you run it.[^4]

```
$ curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
$ chmod 700 get_helm.sh
$ ./get_helm.sh
```

Verify the official installation script here: https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3

### Adding Repositories

Starting with Helm Version 3, there is by default NO default repository installed.[^3]

To add a repository:

`helm repo add stable https://charts.helm.sh/stable`

Verify the repo was added:

`helm repo list`

Should return:

```
NAME    URL
stable  https://charts.helm.sh/stable
```

Perform local repo update:

`helm repo update`

Should return:

```
Hang tight while we grab the latest from your chart repositories...
...Successfully got an update from the "stable" chart repository
Update Complete. ⎈Happy Helming!⎈
```

[^1]: https://github.com/helm/helm/releases
[^2]: https://helm.sh/docs/intro/install/
[^3]: https://www.udemy.com/course/amazon-eks-starter-kubernetes-on-aws/learn/lecture/17025742
[^4]: https://helm.sh/docs/intro/install/