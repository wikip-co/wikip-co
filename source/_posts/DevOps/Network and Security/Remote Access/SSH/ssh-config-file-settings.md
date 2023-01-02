---
title: SSH Config File Settings
image: ssh
tags:
-
---
## Description

The SSH config file allows each user to define specific SSH options for connecting to multiple different remote hosts.

## Instructions

### Files

#### `~/.ssh/config`

This is the per-user configuration file. This file is used by the SSH client. Because of the potential for abuse, this file must have strict permissions: read/write for the user, and not writable by others.

#### `/etc/ssh/ssh_config`

Systemwide configuration file. This file provides defaults for those values that are not specified in the user's configuration file, and for those users who do not have a configuration file. This file must be world-readable.

If these files don't exist, you may need to create them first.

If the config file is new, you might need to set the following permissions:

```
$ chmod 600 ~/.ssh/config
```

This ensures that ONLY your user has access to edit this file.

### Example 1: Basic Usage

The following example can be used to setup pre-defined connections to hosts on your local network.

`~/.ssh/config`

```
Host my-ssh-host
  HostName 10.0.0.5
  Port 22
  ForwardX11 no
  User anthony
  Compression no
  IdentityFile ~/.ssh/id_rsa
  IdentitiesOnly yes
```

Sample connection:

```
$ ssh my-ssh-host
```

### Example 2: Connecting to GitHub.com

The following example allows you to connect to multiple github.com accounts using seperate keys for each connection.  Since GitHub.com does **not** allow the use of the same SSH key accross multiple accounts.

```
Host podcast
    HostName github.com
    IdentityFile ~/.ssh/podcast
Host example.com
    HostName github.com
    IdentityFile ~/.ssh/example.com
Host radio
    HostName github.com
    IdentityFile ~/.ssh/radio
```

In the above example three host entries are defined; `podcast`, `example.com`, and `radio`.

The `HostName` for each `Host` entry points to `github.com`

A unique `IdentityFile` is specified for each `Host` entry.

Verify that the permissions of each IdentityFile are 400.

```
$ chmod 400 ~/.ssh/id_rsa_github
```

This verifies that the file is read-only and accessible only by your user.

The following example shows how to reference each git repo based on the above config file:

```
$ git clone git@{HOST}:{ORG_NAME}/{REPO_NAME}.git
```

```
git@podcast:username/podcast.git
git@example.com:username/example.com.git
git@radio:username/radio.git
```

## Sources

[^1] [^2] [^3] [^4] [^5] [^6] [^7] [^8] [^9] [^10] [^11] [^12]

[^1]: https://dev.to/arnellebalane/setting-up-multiple-github-accounts-the-nicer-way-1m5m#:~:text=GitHub%20does%20not%20allow%20us,~%2F.
[^2]: https://futurestud.io/tutorials/simplify-your-ssh-connections-with-ssh-config-file
[^3]: https://www.cloudsavvyit.com/4274/how-to-manage-an-ssh-config-file-in-windows-linux/
[^4]: https://linuxize.com/post/using-the-ssh-config-file/
[^5]: https://linuxhint.com/ssh-config-file/
[^6]: https://man.openbsd.org/ssh_config
[^7]: https://superuser.com/questions/772660/howto-force-ssh-to-use-a-specific-private-key
[^8]: https://superuser.com/questions/268776/how-do-i-configure-ssh-so-it-doesnt-try-all-the-identity-files-automatically
[^9]: https://www.ssh.com/academy/ssh/sshd_config
[^10]: https://www.cyberciti.biz/faq/create-ssh-config-file-on-linux-unix/
[^11]: https://unix.stackexchange.com/questions/606832/ssh-config-global-settings-vs-host
[^12]: https://superuser.com/questions/232373/how-to-tell-git-which-private-key-to-use