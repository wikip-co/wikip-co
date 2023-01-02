---
title: Pass Arguments to a Shell Script
image: bash
tags:
-
---
## Description

The shell command and any arguments to that command appear as numbered shell variables. `$0` has the string value of the command itself. Any arguments passed after the script appear as `$1`, `$2`, `$3` and so on. The count of arguments is in the shell variable `$#`.[^1] [^2]

### Example 

Execute a script from the CLI followed by an argument,

```
$ ./script.sh <argument1> <argument2> <argument2>
```

Sample contents of `script.sh`:

```
#!/usr/bin/env bash
example-command $1 $2 $3
```
In this example `$1`  would have the value of the first argument given at the command line during script execution.

[^1]: https://unix.stackexchange.com/questions/31414/how-can-i-pass-a-command-line-argument-into-a-shell-script
[^2]: https://www.learnshell.org/en/Passing_Arguments_to_the_Script#:~:text=Arguments%20can%20be%20passed%20to,references%20to%20the%20current%20script.