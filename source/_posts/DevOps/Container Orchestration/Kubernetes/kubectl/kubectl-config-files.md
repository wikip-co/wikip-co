---
title: Working with kubectl config Files
image: kubernetes
tags:
- Container Orchestration
- kubectl
- Kubernetes
---
## Background

A file that is used to configure access to a cluster is sometimes called a kubeconfig file. This is a generic way of referring to configuration files. It does not mean that there is a file named kubeconfig.

Warning: Only use kubeconfig files from trusted sources. Using a specially-crafted kubeconfig file could result in malicious code execution or file exposure. If you must use an untrusted kubeconfig file, inspect it carefully first, much as you would a shell script.



## Description

This page shows how to configure access to multiple clusters by using configuration files. After your clusters, users, and contexts are defined in one or more configuration files, you can quickly switch between clusters by using the kubectl config use-context command.

### Requirements

I am using the following setup.

#### Client Setup

- One (1) Laptop (Running Ubuntu 21.10)

#### Cluster Setup

- Three (3) Raspberry Pis running Raspberry Pi OS, 64-bit (Debian 10 buster)
  - Two (2) raspberry pi model 4s, with 8gb RAM
  - One (1) Raspberry Pi 400 with 4gb RAM
  - Each Pi is using a Samsung T7 SSD connected via USB 3.0 for storage

## Working with `kubectl` config files

The loading order of the config follows these rules:

1.  If the --kubeconfig flag is set, then only that file is loaded. The flag may only be set once and no merging takes
place.

2.  If $KUBECONFIG environment variable is set, then it is used as a list of paths (normal path delimiting rules for
your system). These paths are merged. When a value is modified, it is modified in the file that defines the stanza. When
a value is created, it is created in the first file that exists. If no files in the chain exist, then it creates the
last file in the list.

3.  Otherwise, ${HOME}/.kube/config is used and no merging takes place.

## Configure `kubectl` to administer an existing cluster

1. Copy the config file from the master node on the cluster you are trying to manage.

```
$ scp <user>@master_ip:~/.kube/config ~/.kube/<custom-cluster-config-name>
```
(Specify the user and IP address of the master node in the cluster.)

Note: you may need to create the `~/.kube` directory if it doesnt already exist.

2. The following command sets a temporary environment variable.
```
$ export KUBECONFIG=~/.kube/pi-cluster-config
```
2a. Alternatively we can specify the custom config file each time we issue a cli-command, using the following `kubectl` flag
```
$ kubectl <command> --kubeconfig ~/.kube/path-to-custom/config
```
3. You should now be able to run the following command to see if your cluster is up and running:
```
$ kubectl get nodes
```
It should return something like this:
```
NAME        STATUS   ROLES    AGE   VERSION
<node0>   Ready    master   95m   v1.17.5+k3s1
<node1>   Ready    <none>   95m   v1.17.5+k3s1
<node2>   Ready    <none>   95m   v1.17.5+k3s1
```

## Sources

[^1]: [Kubernetes.io: Install Kubectl - Linux](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)

[^2]: [Kubernetes.io: Configure Access to Multiple Clusters](https://kubernetes.io/docs/tasks/access-application-cluster/configure-access-multiple-clusters/)