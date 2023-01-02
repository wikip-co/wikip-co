---
title: Scheduling Tasks with cron
image: cron
tags:
- 
---
## Description

This document outlines how to use `cron` for scheduling events.

### Prerequisites

Install `cron` if it is not already setup on your system.

`sudo apt update && sudo apt install cron`

### Basic Usage

Open the terminal and type,

`crontab -e`

This will open the crontab (cron configuration file) for your user account.

The first time you run this command it may give you the following prompt:

```
no crontab for anthony - using an empty one

Select an editor.  To change later, run 'select-editor'.
  1. /bin/nano        <---- easiest
  2. /usr/bin/vim.tiny
  3. /usr/bin/code
  4. /bin/ed

Choose 1-4 [1]: 
```

I recommend selecting option 1.

Then you should see a `crontab` file open on your screen that looks like this,

```
# Edit this file to introduce tasks to be run by cron.
# 
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
# 
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').
# 
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
# 
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
# 
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
# 
# For more information see the manual pages of crontab(5) and cron(8)
# 
# m h  dom mon dow   command

```

Each line you add can define one command to run and its schedule.

The format structure is listed in the file as `m h  dom mon dow   command` or spelled out thats,

`minute (0-59)` `hour (0-23)` `day-of-month (1-31)` `month (1-12)` `day-of-week (0-7)` followed by the `command` or `/path/to/script`

### Examples

The following entry would execute a shell script (`incremental-backup`) at 11:00 and 16:00 (twice) each day.

`00 11, 16 * * * /home/user/bin/incremental-backup`

The comma separated value in a field allows us to specify that the command needs to be executed at multiple times.

## Administrator

Commands that normally run with administrative privileges should be added to the `root` `crontab` file.

To edit the `root` `crontab` type,

`sudo crontab -e`

## Sources

[^1] [^2] [^3] [^4] [^5] [^6]

[^1]: https://www.digitalocean.com/community/tutorials/how-to-use-cron-to-automate-tasks-ubuntu-1804

[^2]: https://help.ubuntu.com/community/CronHowto

[^3]: https://stackoverflow.com/questions/22743548/cronjob-not-running

[^4]: https://bc-robotics.com/tutorials/setting-cron-job-raspberry-pi/

[^5]: https://www.circuitbasics.com/how-to-write-and-run-a-shell-script-on-the-raspberry-pi/

[^6]: https://crontab.guru/#0_20_*_*_*