---
title: Python Modules
image: python
tags:
---
## Description

A module can be considered to be the same as a code library.

It is a file containing a set of functions you want to include in your application.

To create a module just save the code you want in a file with the file extension `.py`.

## Example [^1]

### Create a Module

Save the following code in a file named `mymodule.py`.

```
def greeting(name):
  print("Hello, " + name)
```

### Use a Module

In order to use the module we just created, we must use the `import` statement:

Import the module named `mymodule`, and call the `greeting` function:

```
import mymodule

mymodule.greeting("Jonathan")
```

When using a function from a module, use the syntax: module_name.function_name.

[^1]: https://www.w3schools.com/python/python_modules.asp