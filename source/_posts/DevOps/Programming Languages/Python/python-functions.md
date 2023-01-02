---
title: Python Functions
image: function.png
tags:
-
---
## Description

A function is a mechanism for encapsulating a block of code. You can repeat the behavior of this block in multiple spots without having to duplicate the code. Your code will be better organized, more testable, maintainable, and easier to understand.

### Anatomy of a Function

#### Defining a Function

The first line of a function definition starts with the keyword def, followed by the function name, function parameters enclosed in parentheses, and then :. The rest of the function is a code block and is indented:

```
def <FUNCTION NAME>(<PARAMETERS>):
    <CODE BLOCK>
```

If a string using multiline syntax is provided first in the indented block, it acts as documentation. Use these to describe what your function does, how parameters work, and what it can be expected to return. You will find these docstrings are invaluable for communicating with future users of your code. Various programs and services also use them to create documentation. Providing docstrings is considered a best practice and is highly recommended:

Function arguments occur in the parentheses following the function name. They can be either positional or keyword. Positional arguments use the order of the arguments to assign value:

With keyword arguments, assign each argument a default value:

The default values are used when no values are passed during function invocation. The keyword parameters can be called by name during function invocation, in which case the order will not matter.


```
# This is a sample Python script with two variables and one function

calculation_to_units = 24
name_of_unit = "hours"

def days_to_units():
    print(f"20 days are {20 * calculation_to_units} {name_of_unit}")
    print("All Good!")
```

### Call / Execute Your Function

A function is a Block of code that only runs when it is called.

Calling a function = executing the function.

```
def days_to_units():
    print(f"20 days are {20 * calculation_to_units} {name_of_unit}")
    print("All Good!")

days_to_units()

Output:

20 days are 480 hours
```

### Add Parameters to your function

Information can bee passed into functions as parameters.

Parameters are also called arguments.

```
# This is a sample Python script

calculation_to_units = 24
name_of_unit = "hours"

def days_to_units(num_of_days):
    print(f"{num_of_days} days are {num_of_days * calculation_to_units} {name_of_unit}")

days_to_units(20)

Output:

20 days are 480 hours
```

### Passing Multiple Parameters to a Function

```
# This is a sample Python script

calculation_to_units = 24
name_of_unit = "hours"

def days_to_units(num_of_days, custom_message):
    print(f"{num_of_days} days are {num_of_days * calculation_to_units} {name_of_unit}")
    print(custom_message)

days_to_units(20, "Awesome!")
days_to_units(35, "Looks Good!")
days_to_units(40, "Wonderful!")
days_to_units(50, "Perfect")
days_to_units(110, "")

Output:

20 days are 480 hours
Awesome!
35 days are 840 hours
Looks Good!
40 days are 960 hours
Wonderful!
50 days are 1200 hours
Perfect
110 days are 2640 hours

```

### Adding Comments to your functions

Comments should have a maximum length of 72 characters. They should describe what the function does, what parameters work, and what the function returns.

```
# This is a sample Python script

calculation_to_units = 24
name_of_unit = "hours"

def days_to_units(num_of_days, custom_message):
    # This is a sample function
    # This Function requires two input parameters or arguments
    # number of days to be calculated for and a text string.
    print(f"{num_of_days} days are {num_of_days * calculation_to_units} {name_of_unit}")
    print(custom_message)

days_to_units(20, "Awesome!")
```

### Functions as Objects

Functions are objects. They can be passed around, or stored in data structures. You can define two functions, put them in a list, and then iterate through the list to invoke them.


### Nested Function Execution


## Sources

[^1] [^2] [^3]

[^1]: https://www.youtube.com/watch?v=t8pPdKYpowI
[^2]: https://www.oreilly.com/library/view/python-for-devops/9781492057680/
[^3]: https://docs.python.org/3/tutorial/interpreter.html