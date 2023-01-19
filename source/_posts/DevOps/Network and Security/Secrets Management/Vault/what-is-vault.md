---
title: What is Vault?
image: vault
tags:
- Identity-based access
- Encryption as a Service
- Secrets
- Security
---
HashiCorp Vault is an identity-based secrets and encryption management system. A secret is anything that you want to tightly control access to, such as API encryption keys, passwords, and certificates. Vault provides encryption services that are gated by authentication and authorization methods.

## Description

Vault is a tool for securely accessing secrets. Vault provides a unified interface to any secret, while providing tight access control and recording a detailed audit log.[^1]

Modern systems requires access to a multitude of secrets: database credentials, API keys for external services, credentials for service-oriented architecture communication, etc.

Understanding who is accessing what secrets is very difficult and platform-specific. Adding on key rolling, secure storage, and detailed audit logs is almost impossible without a custom solution. This is where Vault can be used.[^1]

## Key features

### Secure Secret Storage

Arbitrary key/value secrets can be stored in Vault. Vault encrypts these secrets prior to writing them to persistent storage, so gaining access to the raw storage isn't enough to access your secrets. Vault can write to disk, Consul, and more.[^1]

### Dynamic Secrets

Vault can generate secrets on-demand for some systems, such as AWS or SQL databases. For example, when an application needs to access an S3 bucket, it asks Vault for credentials, and Vault will generate an AWS keypair with valid permissions on demand. After creating these dynamic secrets, Vault will also automatically revoke them after the lease is up.[^1]

### Data Encryption

Vault can encrypt and decrypt data without storing it. This allows security teams to define encryption parameters and developers to store encrypted data in a location such as SQL without having to design their own encryption methods.[^1]

### Leasing and Renewal

All secrets in Vault have a lease associated with it. At the end of the lease, Vault will automatically revoke that secret. Clients are able to renew leases via built-in renew APIs.[^1]

### Revocation

Vault has built-in support for secret revocation. Vault can revoke not only single secrets, but a tree of secrets, for example all secrets read by a specific user, or all secrets of a particular type. Revocation assists in key rolling as well as locking down systems in the case of an intrusion.[^1]

[^2]

## Sources

[^1]: [GitHub.com/hashicorp/vault README.md](https://github.com/hashicorp/vault#readme)

[^2]: [Official Vault Documentation](https://www.vaultproject.io/docs)

[^3]: **Title:** []()<br>
**Publication:** []()<br>
**Date:** <br>
**Author(s):**
