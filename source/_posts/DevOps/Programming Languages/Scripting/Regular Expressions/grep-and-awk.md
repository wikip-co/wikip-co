---
title: What are grep and awk?
image: regex
tags:
- Search by date
- grep
- awk
- regex
---
`awk` is a very powerful programming language whereas `grep` is just a filtration tool.[^1]

Many tasks which can be accomplished using `grep` (typically in conjunction with other commands) can potentially be done using a single `awk` command.[^1]

> Basically, whatever `grep` can do, you can also do in `awk`. Therefore, you should never see someone using `grep` and `awk` together.[^2]

#### Using `grep` and `awk`

`grep "foo" file.txt | awk '{print $1}'`

#### Using only `awk`

`awk '/foo/ {print $1}' file.txt`

## How to use the `awk` command to...

### Search a directory for files or folders with a modified time of today's date:

**`ls -lrt --time-style=+'%m-%d-%Y' | awk -v d=$(date +%m-%d-%Y) '$6==d'`**

## How to use the `grep` command to...

### Search a directory for files with a modified time of today's date:

**`ls -lrt --time-style=+'%d-%m-%Y' * | grep " $(date +'%d-%m-%Y') "`**

#### Tell `grep` to display file modified time with hours, minutes, and seconds:

**`ls -lrt --time-style=+'%r %d-%m-%Y' * | grep " $(date +'%d-%m-%Y') "`**

[^1]: https://www.theunixschool.com/2012/09/grep-vs-awk-examples-for-pattern-search.html
[^2]: https://stackoverflow.com/questions/22865507/using-grep-and-awk-together