---
title: Sample Script
image: bash
tags:
-
---
# Description

A bash script is a series of commands written in a file. These are read and executed by the bash command-line interpreter program. The program executes line by line. For example, you can navigate to a certain path, create a folder and spawn a process inside it using the command line.[^5]

## example

```bash
#!/usr/bin/env bash

set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

```

## setting options

- `set -o <option>` is the generic way to set various options.

### errexit

- `set -e` is a shortcut for setting the `errexit` option.
  - `set -o errexit` has the same effect.
  - The `set -e` option instructs bash to immediately exit if any command has a non-zero exit status; subsequent lines of the script are not executed.[^4]
  - By default, bash does not do this.. if it encounters a runtime error, it does not halt execution of the program; it keeps going and if one line in a script fails, but the last line succeeds, the whole script has a successful exit code.[^4]

### errtrace

- `set -E` is a shortcut for setting the `errtrace` option.
  - `set -o errtrace` has the same effect.
  - When `errtrace` is enabled, the `ERR` trap is also triggered when the error (a command returning a nonzero code) occurs inside a function or a subshell. Another way to put it is that the context of a function or a subshell does not inherit the `ERR` trap unless `errtrace` is enabled.[^3]


[^1]: https://ricma.co/posts/tech/tutorials/bash-tip-tricks/
[^2]: https://elder.dev/posts/safer-bash/
[^3]: https://stackoverflow.com/a/25380229
[^4]: https://gist.github.com/mohanpedala/1e2ff5661761d3abd0385e8223e16425
[^5]: https://www.freecodecamp.org/news/shell-scripting-crash-course-how-to-write-bash-scripts-in-linux
