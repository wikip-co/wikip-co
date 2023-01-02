---
title: CloudFormation Commands for AWS CLI 
image: aws
tags:
-
---
## Description

This document contains a list of available AWS CloudFormation commands for AWS CLI.[^1]

## Available Commands

### activate-type

Activates a public third-party extension, making it available for use in stack templates. For more information, see Using public extensions in the CloudFormation User Guide.

Once you have activated a public third-party extension in your account and region, use SetTypeConfiguration to specify configuration properties for the extension. For more information, see Configuring extensions at the account level in the CloudFormation User Guide.

### batch-describe-type-configurations

Returns configuration data for the specified CloudFormation extensions, from the CloudFormation registry for the account and region.

### cancel-update-stack
### continue-update-rollback
### create-change-set
### create-stack
### create-stack-instances
### create-stack-set
### deactivate-type

Deactivates a public extension that was previously activated in this account and region.

Once deactivated, an extension cannot be used in any CloudFormation operation. This includes stack update operations where the stack template includes the extension, even if no updates are being made to the extension. In addition, deactivated extensions are not automatically updated if a new version of the extension is released.

### delete-change-set
### delete-stack
### delete-stack-instances
### delete-stack-set
### deploy
### deregister-type
### describe-account-limits
### describe-change-set
### describe-publisher
### describe-stack-drift-detection-status
### describe-stack-events
### describe-stack-instance
### describe-stack-resource
### describe-stack-resource-drifts
### describe-stack-resources
### describe-stack-set
### describe-stack-set-operation
### describe-stacks
### describe-type
### describe-type-registration
### detect-stack-drift
### detect-stack-resource-drift
### detect-stack-set-drift
### estimate-template-cost
### execute-change-set
### get-stack-policy
### get-template
### get-template-summary
### import-stacks-to-stack-set
### list-change-sets
### list-exports
### list-imports

Lists all stacks that are importing an exported output value. To modify or remove an exported output value, first use this action to see which stacks are using it. To see the exported output values in your account, see ListExports.

`list-imports` is a paginated operation. Multiple API calls may be issued in order to retrieve the entire data set of results. You can disable pagination by providing the `--no-paginate` argument. When using `--output text` and the `--query` argument on a paginated response, the `--query` argument must extract data from the results of the following query expressions: `Imports`

### list-stack-instances
### list-stack-resources
### list-stack-set-operation-results
### list-stack-set-operations
### list-stack-sets
### list-stacks
### list-type-registrations
### list-type-versions
### list-types
### package
### publish-type
### record-handler-progress
### register-publisher
### register-type
### rollback-stack
### set-stack-policy
### set-type-configuration
### set-type-default-version
### signal-resource
### stop-stack-set-operation
### test-type
### update-stack
### update-stack-instances
### update-stack-set
### update-termination-protection
### validate-template
### wait

[^1]: https://awscli.amazonaws.com/v2/documentation/api/latest/reference/cloudformation/index.html