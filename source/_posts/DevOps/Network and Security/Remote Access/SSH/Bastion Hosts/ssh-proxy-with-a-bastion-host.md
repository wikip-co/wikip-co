---
title: How to Use SSH With a Bastion Host
image: ssh
tags:
- AWS
- 
---
## Description

A bastion host is a server that sits on a public network whose sole purpose is to provide access to an inner private network.[^1]

For example, if you use AWS and have instances on a private VPC subnet, then the only way you can gain SSH access to them is to use a bastion host as a kind of proxy.[^1]

`You > Bastion > Server`

## SSH Proxy

This is where you connect via SSH to the bastion host, and then open another SSH connection from your computer to the target server through the bastion. In other words, the SSH connection is still started on your computer and terminated at the target; the bastion becomes just a proxy.[^1]

The simplest method is like this:

`$ ssh -o ProxyCommand='ssh -W %h:%p user@bastion' user@target`

To make this easier (and to make it also work for other tools like `scp` or `rsync`), you can edit your ~/.ssh/config file to define the `proxy` command and other parameters.[^1]

For example:

```
Host bastion
  Hostname my-bastion-host.example.com

Host my_server
  Hostname 10.0.1.18
  ProxyCommand ssh bastion -W %h:%p
```

Then you can use:

`$ ssh my_server`

### SSH Proxy Cookbook

There are lots of ways you can combine options to suit nearly any workflow.

Combining hosts, using different keys, etc.

Check out the cookbook for really good examples:

- https://en.wikibooks.org/wiki/OpenSSH/Cookbook/Proxies_and_Jump_Hosts

[^1]: https://www.nadeau.tv/post/ssh-with-a-bastion-host/