---
title: What is a Bastion Host?
image: ssh
tage:
-
---
## Description

A bastion host is a server whose purpose is to provide access to a private network from an external network, such as the Internet. Because of its exposure to potential attack, a bastion host must minimize the chances of penetration.

### Bastion hosts in the cloud

You can use a bastion host to mitigate the risk of allowing SSH connections from an external network to the Linux instances launched in a private subnet of your Amazon Virtual Private Cloud (VPC).

With a bastion host we don't need to provide public SSH access to each node in our network, we can use a bastion host setup to expose SSH only on one specific host from which we can SSH into all other hosts.

To minimize risk a hardened bastion host is introduced and SSH blocked for public access on all other nodes.

For general SSH hardening check Hardening OpenSSH and the OpenSSH chapter in Applied Crypto Hardening by bettercrypto.org.

### Hardening your Bastion host

It is a best practice to harden your bastion host because it is a critical point of network security. Hardening might include disabling unnecessary applications or services, tuning the network stack, and the like.