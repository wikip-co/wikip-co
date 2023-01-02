---
title: Running Flask
image: flask
tags:
-
---
## Description

This document describes how to include flask in your project.

## Steps

```
$ mkdir python-project
$ cd python-project
$ python3 -m venv .venv
$ source .venv/bin/activate
$ pip3 install flask
$ pip3 install flask-sqlalchemy
$ pip3 freeze > requirements.txt
$ touch application.py
$ export FLASK_APP=application.py
$ export FLASK_ENV=development
```

Example `application.py` contents:

```
from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return "Hello!"
```

Run flask

```
flask run
```