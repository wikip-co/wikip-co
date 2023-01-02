---
title: Deploy a K3s Cluster using Ansible
image: kubernetes
tags:
- Container Orchestration
- Ansible
- K3s
- Raspberry Pi
- Ansible
---
## Description

This article will document how to deploy K3s to a cluster of Raspberry Pis.

## Requirements

I am using the following:

- One (1) Laptop (Running Ubuntu 21.10)
- Three (3) Raspberry Pis running Raspberry Pi OS, 64-bit (Debian 10 buster)
  - Two (2) raspberry pi model 4s, with 8gb RAM
  - One (1) Raspberry Pi 400 with 4gb RAM
  - Each Pi is using a Samsung T7 SSD connected via USB 3.0 for storage

### Before you start

Make sure that each Raspberry Pi is running and accessible on the network. You will need a list of each Pi's IP address.

## Install Ansible on the Laptop[^1]

To configure the PPA on your machine and install Ansible run these commands:[^1]

```
$ sudo apt update
$ sudo apt install software-properties-common
$ sudo add-apt-repository --yes --update ppa:ansible/ansible
$ sudo apt install ansible
```

### Deploy k3s using Ansible[^2]

https://k3s.io/ maintains an Ansible playbook that can set everything up for us.[^2]

It is available here: https://github.com/k3s-io/k3s-ansible [^3]

Download and unzip the repository to the following location, `/home/<user>/Downloads/k3s-ansible-master`.

Open a command line and navigate to the `k3s-ansible-master` project directory:

```
$ cd /Downloads/k3s-ansible-master
```
Edit the `hosts.ini` file,
```
$ nano inventory/sample/hosts.ini
```
It needs to contain IP addresses for each Raspberry Pi node in our cluster:

Example:

```
[master]
10.32.25.224

[node]
10.32.25.111
10.32.25.159

[k3s_cluster:children]
master
node
```
Now edit the `group_vars/all.yml` file to supply the Ansible username.
```
$ nano inventory/sample/group_vars/all.yml
```
Example:
```
---
k3s_version: v1.17.5+k3s1
ansible_user: <username>
systemd_dir: /etc/systemd/system
master_ip: "{{ hostvars[groups['master'][0]]['ansible_host'] | default(groups['master'][0]) }}"
extra_server_args: ""
extra_agent_args: ""
```
Remove the config files from the sample directory.

```
$ mv inventory/sample/* inventory/
```
Run the following command to start the Ansible playbook:
```
$ ansible-playbook site.yml -i inventory/hosts.ini
```
Note: I actually couldn't get this to work using SSH passwordless authentication.  I resorted to using the following command:

```
$ ansible-playbook site.yml -K -i inventory/hosts.ini 
```
The `-K` option prompts for the password before the playbook kicks off.  Using this method it finished without error.

## Install Kubectl on Laptop

Download the latest release with the command:[^5]

```
$ curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
```

Install kubectl:[^5]

```
$ sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

### Setup Kubectl to administer the cluster[^4]

```
$ scp <user>@master_ip:~/.kube/config ~/.kube/pi-cluster-config
```
Note: you may need to create the `~/.kube` directory if it doesnt already exist.

Set an environment variable to tell `kubectl` to use our `pi-cluster-config` file,

```
$ export KUBECONFIG=~/.kube/pi-cluster-config
```
Now you can run the following command to see if your pi cluster is up and running:
```
$ kubectl get nodes
```
It should return something like this:
```
NAME        STATUS   ROLES    AGE   VERSION
silverfox   Ready    master   95m   v1.17.5+k3s1
whitefoot   Ready    <none>   95m   v1.17.5+k3s1
cleareyes   Ready    <none>   95m   v1.17.5+k3s1
```
You can also ssh into the master node and administer the cluster.

## Resetting the cluster

It's best practice to rebuild a cluster frequently.[^6]

Regardless of the reason, here's how to quickly wipe the cluster clean (without re-flashing all the Raspberry Pis from scratch):

In the k3s-ansible repository directory (which you used to set up the cluster), run:

```
ansible-playbook -i inventory/hosts.ini reset.yml
```

This command will likely have a few failures relating to files that can't be cleaned up until after a reboot.

Reboot the Raspberry Pis (in the same directory):

```
ansible -i inventory/hosts.ini all -m reboot -b
```
Run the reset playbook a second time, to clean up the stragglers:

```
ansible-playbook -i inventory/hosts.ini reset.yml
```
Re-install K3s on the cluster:

```
ansible-playbook -i inventory/hosts.ini site.yml
```
[^4]

## Sources

[^1]: [Ansible Documentation: Installing Ansibl on Ubuntu](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu)

[^2]: [K3S: Lightweight Kubernetes](https://k3s.io/)

[^3]: [GitHub.com/k3s-io/k3s-ansible: Build a Kubernetes cluster using k3s via Ansible](https://github.com/k3s-io/k3s-ansible)

[^4]: [Raspberry Pi Cluster Ep 3 - Installing Kubernetes (K3s) on the Turing Pi](https://www.youtube.com/watch?v=N4bfNefjBSw)

[^5]: [Kubernetes.io: Install Kubectl - Linux](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)

[^6]: [geerlingguy turing-pi-cluster](https://github.com/geerlingguy/turing-pi-cluster)

[^7]: https://www.jeffgeerling.com/blog/2020/installing-k3s-kubernetes-on-turing-pi-raspberry-pi-cluster-episode-3

