---
title: Securely Setup SSH Keys on Ubuntu
image: ssh
tags:
-
---
## Description

This article explains how to setup SSH for public-key based authentication. 

Authentication using a public key is based on the use of digital signatures, and it is more secure than password authentication.

## Steps

### Create SSH keys

You may already have an SSH key pair on your client machine.

If you generate a new key pair, the old ones may be overwritten.

To check whether the key files exist, run the following command:

`ls -l ~/.ssh/id_*.pub`

Use the following command to generate a new SSH key pair,

`ssh-keygen -t rsa -b 4096 -C "your_email@domain.com"`

In the above example we are specifying RSA encryption with 4096 bits and using our email as a comment.

Once executed, you will be prompted to specify a file name:

The default `(~/.ssh/id_rsa)` should be fine for most users.

Press Enter to accept and continue.

Next, you’ll be asked to type a secure passphrase.

A passphrase adds an extra layer of security.

If you set a passphrase, you’ll be prompted to enter it each time you use the key to login to the remote machine.

If you don’t want to set a passphrase, press Enter.

### Copy the Public Key to the Remote Server

Now that you have an SSH key pair, the next step is to copy the public key to the remote server you want to manage.

The easiest and the recommended way to copy the public key to the server is to use the ssh-copy-id tool. On your local machine type:

`ssh-copy-id remote_username@server_ip_address`

You will be prompted to enter the remote user password.

Once the user is authenticated, the public key ~/.ssh/id_rsa.pub will be appended to the remote user ~/.ssh/authorized_keys file, and the connection will be closed.

Now try logging into the machine, with:   "ssh 'username@server_ip_address'"

If by some reason the ssh-copy-id utility is not available on your local computer, use the following command to copy the public key:

`cat ~/.ssh/id_rsa.pub | ssh remote_username@server_ip_address "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"`

### Login to your server using SSH keys

After completing the steps above, you should be able to log in to the remote server without being prompted for a password.

To test it, try to login to your server via SSH:

ssh remote_username@server_ip_address

If you haven’t set a passphrase for the private key, you will be logged in immediately. Otherwise, you will be prompted to enter the passphrase.

### Disabling SSH Password Authentication

Disabling the password authentication adds an extra layer of security to your server.

Before disabling SSH password authentication, make sure you can log in to your server without a password, and the user you are logging in with has sudo privileges.

Log into your remote server.

`ssh sudo_user@server_ip_address`

Open the SSH configuration file with your text editor.

`sudo nano /etc/ssh/sshd_config`

Search for the following directives and modify as it follows:

```
/etc/ssh/sshd_config
PasswordAuthentication no
ChallengeResponseAuthentication no
UsePAM no
```
Once done, save the file and restart the SSH service by typing,

`sudo systemctl restart ssh`

At this point, the password-based authentication is disabled.

### Additional Security

By default, SSH listens on port 22.

Changing the default SSH port reduces the risk of automated attacks.

To simplify your workflow, use the SSH config file to define all your SSH connections.

[See Here](/ssh-config-file-settings/)

[^1] [^2] [^3]

[^1]: https://linuxize.com/post/how-to-set-up-ssh-keys-on-ubuntu-20-04/
[^2]: https://wiki.osuosl.org/howtos/ssh_key_tutorial.html
[^3]: https://askubuntu.com/questions/801997/purpose-of-email-at-the-end-of-ssh-public-key