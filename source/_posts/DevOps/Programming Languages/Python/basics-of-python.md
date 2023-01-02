---
title: Basics of Python
image: python
tags:
- Educational
---
## Installing & Running Python

### Using the Python Interpreter [^2]

#### Invoking the Interpreter

The Python interpreter is usually installed as /usr/local/bin/python3.10 on those machines where it is available; putting /usr/local/bin in your Unix shell’s search path makes it possible to start it by typing the command:

`python3.10`

## Execution Control[^1]

Python has many constructs to control the flow of statement execution. You can group statements you wish to run together as a block of code. These blocks can be run multiple times using for and while loops or only run under certain conditions using if statements, while loops, or try-except blocks.

Using these constructs is the first step to taking advantage of the power of programming.

Different languages demarcate blocks of code using different conventions. Many languages with syntax similar to the C language (a very influential language used in writing Unix) use curly brackets around a group of statements to define a block.

In Python, indentation is used to indicate a block. Statements are grouped by indentation into blocks that execute as a unit.

> NOTE
> The Python interpreter does not care if you use tabs or spaces to indent, as long as you are consistent. The Python style guide, PEP-8, however, recommends using four whitespaces for each level of indentation.

## Reserved Keywords in Python

Reserved words (also called keywords) are defined with predefined meaning and syntax in the language. These keywords have to be used to develop programming instructions. Reserved words can't be used as identifiers for other programming elements like name of variable, function, etc.

- and
- as
- assert
- break
- class
- continue
- def
- del
- elif
- else
- except
- false
- finally
- for
- from
- global
- if
- import
- in
- is
- lambda
- None
- nonlocal
- not
- or
- pass
- raise
- return
- True
- try
- while
- with
- yield

## Variables

### Dynamically Typed

When creating variables, the syntax is very simple.  You just need the variable name and the value.

Example:

`my_variable_name = value`

Python does NOT require data type definitions like this:

`String my_variable_name = value`

### Naming Conventions

The generally agreed upon naming convention is to use lowercase with words seperated by underscores.

`this_is_my_variable`

`butThisWorksToo`

### Scope

A variable is only available from inside the region it is created.

#### Global Scopoe

Variables available from within any scope.

#### Local Scope

Variable created inside function can only be used inside that function.

## Functions

A function is a mechanism for encapsulating a block of code. You can repeat the behavior of this block in multiple spots without having to duplicate the code. Your code will be better organized, more testable, maintainable, and easier to understand.


## User input

`()input` is a built-in function provided by Python.

Python stops executing when it comes to the input() in your script.

`input()` return values are always treated as strings by default.

### Casting

Turning one data type into another.

`int()` is a built-in Python function that converts the specified value into an integer number.  The integer number is returned by the function.

### Sets & Lists

set()

filters out duplicates and converts 

## Sources

[^1] [^2] [^3] [^4]

[^1]: https://www.tutorialspoint.com/What-are-Reserved-Keywords-in-Python
[^2]: https://www.youtube.com/watch?v=t8pPdKYpowI
[^3]: https://www.oreilly.com/library/view/python-for-devops/9781492057680/
[^4]: https://docs.python.org/3/tutorial/interpreter.html