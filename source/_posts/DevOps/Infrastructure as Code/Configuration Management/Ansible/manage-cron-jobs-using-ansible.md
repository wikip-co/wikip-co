---
title: Manage Cron Jobs Using Ansible
image: ansible
tags:
-
---
## Description

### Add New or Manage Existing Cron Job

`ansible -m cron -a "name=something hour=4 job=/path/to/script.sh"`

### Delete a Cron Job

`ansible -i inventory multi -b -m cron -a "name=something hour=4 job=/path/to/script.sh state=absent"`

[^1]

[^1]: https://youtu.be/WNmKjtWtqIc