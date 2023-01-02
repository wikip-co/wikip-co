---
title: AWS Glue (Database)
image: aws
tags:
- AWS
---
### General Info

AWS Glue is an event-driven, serverless computing platform. It is a computing service that runs code in response to events and automatically manages the computing resources required by that code.

### Purpose

The primary purpose of Glue, as compared to AWS's sister ETL platform AWS Lambda, is to scan other services in the same Virtual Private Cloud (or equivalent accessible network element even if not provided by AWS), particularly S3. The jobs are billed according to compute time, with a minimum count of 1 minute. Glue discovers the source data to store associated meta-data (e.g. the table's schema of field names, types lengths) in the AWS Glue Data Catalog (which is then accessible via AWS console or APIs).

### Languages Supported

- Python
- Scala

[^1]: **Title:** []()<br>
**Publication:** []()<br>
**Date:** <br>
**Author(s):** []()<br>