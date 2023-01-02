---
title: What is a Site Reliability Engineer (SRE)?
image: devops
tags:
- 
---
Site reliability engineering teams engage with the other teams within their companies and the SRE principles and practices in various forms.[^1]

Here is a high level overview of common SRE team implementations:

## Kitchen Sink, a.k.a. “Everything SRE”

Scope of services or workflows covered is usually unbounded.

## Infrastructure

Focuses on the reliability of behind-the-scenes systems that help make other teams' jobs more efficient. These are often confused with "Platform" teams or "Platform Operations" teams. Infrastructure SRE teams may pair up with one or more platform engineering team(s), but they differ in that Infrastructure SRE teams focuses on performing most, if not all, of the work described in the principles and practices list above. Platform teams tend to focus on building the platform and while reliability is desirable that's not their sole priority.

## Tools

Focuses on tools to measure, maintain, and improve system reliability.

## Product or application

SRE team for product and/or application. Some large companies tend to staff several of these.

## Embedded

Usually SRE solo practitioners or pairs staffed within a software engineering team to apply most of the principles and practices described above.

## Consulting

Consult on how to implement SRE principles and practices. These are usually experienced SREs who've worked on teams in one or several of the implementations above. SREs on external facing consulting SRE teams are often called "Customer Reliability Engineers". They rarely, if ever, change customer's configuration or code.

Large companies who have adopted SRE tend to have a combination of the implementations described above, including multiple teams of the same implementation, e.g. multiple Product/application SRE teams to meet specific demands of several products and an Infrastructure SRE team to pair up with a Platform engineering group to meet reliability goals of a common platform for both products/applications.