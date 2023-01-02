---
title: What is Continuous Deployment?
image: devops
tags:
- CD
- Pipelines
- GitHub Actions
- AWS ECS
---

While working with containerized applications the CD pipeline needs to contain the following steps:

1. Code checkout
1. Install dependencies
1. Build the image
1. Push to a container registry
1. Use the latest image for the next deployment
1. Trigger a new deployment

[^1]

[^1]: **Title:** [Creating a Continuous Deployment workflow using Github Actions to deploy your application to ECS](https://faun.pub/creating-a-continuous-deployment-workflow-using-github-actions-to-deploy-your-application-to-ecs-ce816db71469)<br>
**Publication:** [FAUN](https://faun.pub/)<br>
**Date:** August 31 2021<br>
**Author(s):** [Mohammed Ali Chherawalla](https://medium.com/@mohammed.ali.chherawalla)<br>