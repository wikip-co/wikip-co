---
title: What is Secrets Management?
image: secrets
tags:
- Network Security
- DevSecOps
- Security
- Secrets
---
## What is a Secret?

“secrets” refer to a private piece of information that acts as a key to unlock protected resources or sensitive information in tools, applications, containers, DevOps and cloud-native environments.[^1]

Common types of secrets include:

- Privileged account credentials
- Passwords
- Certificates
- SSH keys
- API keys
- Encryption keys
- Key Challenges in Managing Secrets

A non-human user with access to a secret automatically gains real-time access and permissions to any resources belonging to the owner of the secret.[^1]

Secrets are widespread. They include:

- embedded hard-coded credentials in containerized applications (e.g., Red Hat OpenShift, Kubernetes or Pivotal) [^1]
- automation processes (e.g., Ansible Playbooks, Puppet or Chef) [^1]
- business-critical applications, including: [^1]
  - both internally developed and commercial off-the-shelf solutions (COTS) [^1]
  - security software, such as vulnerability scanners [^1]
  - application servers and IT management software [^1]
  - Robotic Process Automation (RPA) platforms [^1]
  - Continuous Integration/Continuous Deployment (CI/CD) tool chains [^1]

## What is Secrets Management?

Automated processes use secrets to access protected data and execute business processes instantaneously.[^1]

Organizations must protect secrets assigned to non-human identities to defend against attacks and mitigate risks.[^1]

Secrets management allows organizations to consistently enforce security policies for non-human identities.[^1]

Secrets management provides assurance that resources across tool stacks, platforms and cloud environments can only be accessed by authenticated and authorized entities.[^1]

The following steps are typically included in a secrets management initiative: [^1]

- Authenticate all access requests that use non-human credentials.
- Enforce the principle of least privilege.
- Enforce role-based access control (RBAC) and regularly rotate secrets and credentials.
- Automate management of secrets and apply consistent access policies.
- Track all access and maintain a comprehensive audit.
- Remove secrets from code, configuration files and other unprotected areas.

### What are Common Secrets Management Use Cases?

#### Secrets management to secure CI/CD pipelines.

Popular CI/CD pipeline tools such as Jenkins, Ansible, Puppet and Chef are designed for efficiency and speed, but can present new security challenges.[^1]

These automated configuration management tools require secrets to access protected resources like databases, SSH servers and HTTPs services.[^1]

These secrets are often insecurely hard-coded or stored in configuration files or code for these tools (e.g., JenkinsFiles, playbooks, scripts, or source code).[^1]

Effective secrets management allows organizations to remove these hard-coded secrets from DevOps tools within the CI/CD pipeline while providing full audit trails, policy-based RBAC and secrets rotation.[^1]

#### Secrets management to secure containers.

DevOps and engineering teams increasingly rely on containers to accelerate development and improve portability and productivity.[^1]

Containers require secrets to access critical and sensitive information.[^1]

But, since containers are ephemeral (or short-lived), they can be difficult to track and access to specific resources can be hard to manage and secure.[^1]

Secrets management security measures enable teams to authenticate container requests for secrets with native container platform attributes and manage secrets with RBAC policy for granular control.[^1]

#### Secrets management to manage elastic and auto-scale environments

Cloud providers offer auto-scaling capabilities to support elasticity (ephemeral) and pay-as-you-grow economics.

While this improves efficiency, it also creates new security management challenges—particularly around scalability.

By implementing secrets management best practices, organizations can eliminate the need to have human operators manually apply policies to each new host by assigning an identity to the host in real time and securely authenticating the calling application based on the predefined security policy.

#### Secrets management to secure internally developed applications and COTS applications.

Internally developed applications and scripts, along with third-party tools and solutions such as security tools, RPA, automation tools and IT management tools often require high levels of privileged access across the enterprise’s infrastructure to complete their defined tasks. Effective secrets management practices require the removal of hardcoded credentials from internally developed applications and scripts and that all secrets be centrally stored, managed and rotated to minimize risk.[^1]

[^1]: **Title:** [Secrets Management](https://www.cyberark.com/what-is/secrets-management/)<br>
**Publication:** [CyberArk Glossary](https://www.cyberark.com/glossary/)<br>
**Archive:** [archive](https://drive.proton.me/urls/KEVNCXJMGC#vHQrupJKC5bf)

[^2]: **Title:** []()<br>
**Publication:** []()<br>
**Archive:** [archive]()
