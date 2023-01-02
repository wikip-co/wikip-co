---
title: What is a Monorepo?
image: git
tags:
- Monolith
---
## Desccription

A monorepo is a version-controlled code repository that holds many projects. While these projects may be related, they are often logically independent and run by different teams. Some companies host all their code in a single repository, shared among everyone. Monorepos can reach colossal sizes.[^1]

In version control systems, a monorepo is a software development strategy where code for many projects is stored in the same repository. This software engineering practice dates back to at least the early 2000s, when it was known as a 'shared codebase'.

Monorepos can foster rapid development workflows in some setups, however monorepos are generally NOT ideal.

But there is a way (using GitHub actions) to only trigger based on a directory path for a branch using filters.[^2]

https://github.blog/changelog/2019-09-30-github-actions-event-filtering-updates/

Using the instructions from the article above, you can make a github action file for each service and then test that when you change a service the service's action kicks off as desired.[^2]

[^1]: https://semaphoreci.com/blog/what-is-monorepo
[^2]: https://marceldempers.dev/