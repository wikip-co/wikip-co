---
title: What is YAML?
image: yaml
tags:
- Programming Languages
- Markup Language
- Lightweight Markup Languages
- Configuration Files
---
YAML is a human-readable data-serialization language.  It is commonly used for configuration files and in applications where data is being stored or transmitted.

Example:

```
---
Resources:
  MyInstance:
    Type: AWS::EC2::Instance
    Properties:
      AvailabilityZone: us-east-1a
      ImageId: ami-0ed9277fb7eb570c9
      InstanceType: t2.micro

```