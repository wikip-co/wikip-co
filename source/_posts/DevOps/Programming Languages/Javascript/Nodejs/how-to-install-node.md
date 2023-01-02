---
title: How to Install Any Version of Node.js on Debian Based Distros
image: node
tags:
- Web Development
- Ubuntu 22.04
- Linux
- Troubleshooting
---
I was having a hard time installing node.js and npm (and yarn) on Ubuntu 22.04.  I typically use the install script provided from noudesource.com.  But this version of Ubuntu isn't officially supported yet.  So, I found a better method to install node, and honestly I will use the steps outlined herein from now on.  I believe it is more secure to install from default repos using apt and simply employ the use of a version manager to upgrade.

## Background

The steps below should allow you to install the latest version of nodejs on any debian based system. We will use the apt package manager to install the default versions of nodejs and npm. Then, we will install a version manager to easily switch between node versions. 

## Steps 

First, perform a system update:

`$ sudo apt update`

Then, install `nodejs` and `npm` using apt:

`$ sudo apt install nodejs npm`

Test which version you have installed:

`$ node --version`

Install `n`, a simple to use Node.js version manager for Linux.

`$ sudo npm install -g n`

Use `n` to select a version of Node.js to install:

`$ sudo n latest`

Now, check which version is installed:

`$ node --version`

This method was documented with the help of OSTechHelp's YouTube videos.[^1] [^2]

[^1]: https://www.youtube.com/watch?v=TMZzN_DI0UY
[^2]: https://www.youtube.com/watch?v=CDP1VShZp9E
