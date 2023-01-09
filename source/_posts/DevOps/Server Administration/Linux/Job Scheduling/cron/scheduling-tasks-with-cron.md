---
title: Scheduling Tasks with cron
image: cron
tags:
- Linux Administration
- Linux
- Scheduling
- Scheduled Tasks
- Tutorials
- Linux Tutorials
---
## Description

`cron` is a command-line utility that functions as a job scheduler on Unix-like operating systems. Users can set up and maintain a schedule of jobs, also known as cron jobs, to run periodically at fixed times, dates, or intervals. 

## Usage

Create a crontab for your current user:

`crontab -e [username]`

The first time you run this command it should prompt you to select an editor:

```
no crontab for <user> - using an empty one

Select an editor.  To change later, run 'select-editor'.
  1. /bin/nano        <---- easiest
  2. /usr/bin/vim.tiny
  3. /usr/bin/code
  4. /bin/ed

Choose 1-4 [1]: 
```
You should see a `crontab` file open on your screen that looks like this,

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

## Cron expression

A cron expression is a string comprising five or six fields separated by white space that represents a set of times, normally as a schedule to execute some routine.

- Comments begin with a comment mark #, and must be on a line by themselves.
- The month and weekday abbreviations are not case-sensitive.
- In the particular case of the system crontab file (/etc/crontab), a user field inserts itself before the command. It is generally set to 'root'.
- In some uses of the cron format there is also a seconds field at the beginning of the pattern. In that case, the cron expression is a string comprising 6 or 7 fields.
- Commas are used to separate items of a list. For example, using "MON,WED,FRI" in the 5th field (day of week) means Mondays, Wednesdays and Fridays.
- Dash defines ranges. For example, 2000–2010 indicates every year between 2000 and 2010, inclusive.
- Percent-signs (%) in the command, unless escaped with backslash (\), are changed into newline characters, and all data after the first % are sent to the command as standard input.
- Non-standard characters: The following are non-standard characters and exist only in some cron implementations, such as the Quartz Java scheduler.
  - 'L' stands for "last". When used in the day-of-week field, it allows specifying constructs such as "the last Friday" ("5L") of a given month. In the day-of-month field, it specifies the last day of the month.
  - The 'W' character is allowed for the day-of-month field. This character is used to specify the weekday (Monday-Friday) nearest the given day. As an example, if "15W" is specified as the value for the day-of-month field, the meaning is: "the nearest weekday to the 15th of the month." So, if the 15th is a Saturday, the trigger fires on Friday the 14th. If the 15th is a Sunday, the trigger fires on Monday the 16th. If the 15th is a Tuesday, then it fires on Tuesday the 15th. However, if "1W" is specified as the value for day-of-month, and the 1st is a Saturday, the trigger fires on Monday the 3rd, as it does not 'jump' over the boundary of a month's days. The 'W' character can be specified only when the day-of-month is a single day, not a range or list of days.
  - Hash '#' is allowed for the day-of-week field, and must be followed by a number between one and five. It allows specifying constructs such as "the second Friday" of a given month.[20] For example, entering "5#3" in the day-of-week field corresponds to the third Friday of every month.
  - Question mark (?) In some implementations, used instead of '*' for leaving either day-of-month or day-of-week blank. Other cron implementations substitute "?" with the start-up time of the cron daemon, so that ? ? * * * * would be updated to 25 8 * * * * if cron started-up on 8:25am, and would run at this time every day until restarted again.
  - Slash (/) In vixie-cron, slashes can be combined with ranges to specify step values.[9] For example, */5 in the minutes field indicates every 5 minutes (see note below about frequencies). It is shorthand for the more verbose POSIX form 5,10,15,20,25,30,35,40,45,50,55,00. POSIX does not define a use for slashes; its rationale (commenting on a BSD extension) notes that the definition is based on System V format but does not exclude the possibility of extensions.
  - Note that frequencies in general cannot be expressed; only step values which evenly divide their range express accurate frequencies (for minutes and seconds, that's /2, /3, /4, /5, /6, /10, /12, /15, /20 and /30 because 60 is evenly divisible by those numbers; for hours, that's /2, /3, /4, /6, /8 and /12); all other possible "steps" and all other fields yield inconsistent "short" periods at the end of the time-unit before it "resets" to the next minute, second, or day; for example, entering */5 for the day field sometimes executes after 1, 2, or 3 days, depending on the month and leap year; this is because cron is stateless (it does not remember the time of the last execution nor count the difference between it and now, required for accurate frequency counting—instead, cron is a mere pattern-matcher).
  - 'H' is used in the Jenkins continuous integration system to indicate that a "hashed" value is substituted. Thus instead of a fixed number such as '20 * * * *' which means at 20 minutes after the hour every hour, 'H * * * *' indicates that the task is performed every hour at an unspecified but invariant time for each task. This allows spreading out tasks over time, rather than having all of them start at the same time and compete for resources.[22]
- The UNIX cron format is used to specify time in the scheduling of jobs.
- The cron format has five time and date fields separated by at least one blank.
- There can be no blank within a field value.
- - Scheduled tasks are executed when the minute, hour, and month of year fields match the current time and date, and at least one of the two day fields (day of month, or day of week) match the current date.
- `minute (0-59) hour (0-23) day-of-month (1-31) month (1-12) day-of-week (0-7) followed by the command or /path/to/script`


```
.---------------- minute (0 - 59) 
|  .------------- hour (0 - 23)
|  |  .---------- day of month (1 - 31)
|  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ... 
|  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7)  OR sun,mon,tue,wed,thu,fri,sat 
|  |  |  |  |
*  *  *  *  *  command to be executed
```

### Example

The following entry would execute a shell script (`incremental-backup`) at 11:00 AM and 4:00 PM (twice) each day.

`00 11,16 * * * /home/user/bin/incremental-backup`

The comma separated value in a field allows us to specify that the command needs to be executed at multiple times.

## `sudo` privileges

Commands or scripts that normally run with `sudo` should be added to the `root` `crontab` file.

To edit the `root` `crontab` type,

`sudo crontab -e`

## Sources

[^1] [^2] [^3] [^4] [^5] [^6] [^7]

[^1]: https://www.digitalocean.com/community/tutorials/how-to-use-cron-to-automate-tasks-ubuntu-1804

[^2]: https://help.ubuntu.com/community/CronHowto

[^3]: https://stackoverflow.com/questions/22743548/cronjob-not-running

[^4]: https://bc-robotics.com/tutorials/setting-cron-job-raspberry-pi/

[^5]: https://www.circuitbasics.com/how-to-write-and-run-a-shell-script-on-the-raspberry-pi/

[^6]: https://crontab.guru/#0_20_*_*_*

[^7]: https://stackoverflow.com/a/1802362
