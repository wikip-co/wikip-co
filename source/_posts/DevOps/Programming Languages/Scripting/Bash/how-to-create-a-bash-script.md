---
title: How to Create a Bash Script
image: bash
tags:
-
---
## Description

How to create a bash script.

## Instructions

Create a new file,

`nano script-file`

Example `script-file` content:

```
#!/bin/bash
# This is my script

echo What is the input?

read userInput

touch $userInput
```

Make the `script-file` executable,

`chmod +x script-file`