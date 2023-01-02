---
title: Repository Administrator
image: git
tags:
- Version Control
---
## Description

A repository administrator sets up and maintains access to the repository by developers.[^1]

## Git commands

`git-daemon` to allow anonymous download from repository.

`git-shell` can be used as a restricted login shell for shared central repository users.

`git-http-backend` provides a server side implementation of Git-over-HTTP ("Smart http") allowing both fetch and push services.

`gitweb` provides a web front-end to Git repositories, which can be set-up using the git-instaweb[1] script.

## Examples

- [Managing a shared central repository](https://github.com/git/git/blob/master/Documentation/howto/update-hook-example.txt)

[^1]: **Title:** [Git Everyday](https://git-scm.com/docs/giteveryday)<br>
**Publication:** [git](https://git-scm.com/)<br>
**Author(s):** Scott Chacon and Ben Straub<br>