---
title: Setup a Python Virtual Environment
image: python
tags:
-
---
## Description

This article demonstrates how to create and launch a virtual python programming environment.

Virtual environments provide an isolated space on your system for working on Python projects, each with its own set of dependencies.

Creating a virtual environment basically generates a folder that contains a copy of the version of python and pip used to execute the command and a few scripts to make it act as an isolated environment.

## Requirements

You should have a non-root user with sudo privileges.

## Steps

Complete the following steps.

### Setup Python

Most versions of Debian Linux should come with Python 3 pre-isntalled.

Perform a system upgrade to ensure we are using the most up-to-date version:

`sudo apt update && sudo apt upgrade -y`

Check the version of Python 3 currently installed:

`python3 -V`

Install pip (if not already installed):

`sudo apt install -y python3-pip`

Install development tools;

`sudo apt install -y build-essential libssl-dev libffi-dev python3-dev`

### Setup Virtual Environment 

#### Install `venv`

The `venv` tool is part of the standard Python 3 library, install it by typing:

`sudo apt install -y python-venv`

### Create a New Virtual environment

```
$ mkdir python-project
$ cd python-project
$ python3 -m venv .venv
```
This will create a `.venv` folder at the root of your project.

### Activate the Virtual environment

Use the `source` command to execute the `activate` script located in the `.venv` folder:

`$ source my_virtual_environment/bin/activate`

You should now see `(.venv)` prefixed to your command prompt,

`(.venv) user@host:~/python-project$`

### Test the Virtual Environment

Note: Within the virtual environment, you can use the command `python` instead of `python3`, and `pip` instead of `pip3`.

Try starting the python interpreter:

`(.venv) user@host:~/Dev/python$ python`

### Deactive the Virtual Environment

Use the following command to deactivate the environment:

`(.venv) user@host:~/Dev/python$ deactivate`

### Install Project Dependencies

```
pip3 install flask
pip3 install flask-sqlalchemy
```

### Save Project Dependencies

`pip3 freeze > requirements.txt`


[^1] [^2] [^3] [^4] [^5]

[^1]: https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-programming-environment-on-ubuntu-20-04-quickstart
[^2]: https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-programming-environment-on-an-ubuntu-20-04-server
[^3]: https://docs.python.org/3/library/venv.html
[^4]: https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/
[^5]: https://www.youtube.com/watch?v=qbLc5a9jdXo