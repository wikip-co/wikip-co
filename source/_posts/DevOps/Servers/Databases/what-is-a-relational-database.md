---
title: What is a Relational Database?
image: postgresql.png
tags:
- Relational Databases
---
## Codd's Rules for Relational Database Systems

Codd applied rigorous mathematical theories (primarily set theory) to the management of data, and he compiled a list of criteria a database must meet to be considered relational. At its core, the relational database concept centers around storing data in tables. This concept is now so common as to seem trivial; however, not long ago the goal of designing a system capable of sustaining the relational model was considered a long shot with limited usefulness.

Following are Codd's Twelve Principles of Relational Databases:

1. Information is represented logically in tables.

2. Data must be logically accessible by table, primary key, and column.

3. Null values must be uniformly treated as "missing information," not as empty strings, blanks, or zeros.

4. Metadata (data about the database) must be

stored in the database just as regular data is.

5. A single language must be able to define data, views, integrity constraints, authorization, transactions, and data manipulation.

6. Views must show the updates of their base

tables and vice versa. 7. A single operation must be available to do each

of the following operations: retrieve data, insert data, update data, or delete data.

8. Batch and end-user operations are logically  separate from physical storage and access methods.

9. Batch and end-user operations can change the database schema without having to recreate it or the applications built upon it.

10. Integrity constraints must be available and stored in the metadata, not in an application program.

11. The data manipulation language of the relational system should not care where or how the physical data is distributed and should not require alteration if the physical data is centralized or distributed.

12. Any row processing done in the system must obey the same integrity rules and constraints that set-processing operations do.

These principles continue to be the litmus test used to validate the "relational" characteristics of a database platform; a database that does not meet all of these rules is not fully relational. While these rules do not apply to applications development, they do determine whether the database engine itself can be considered truly "relational." Currently, most commercial RDBMS products pass Codd's test. All platforms discussed in the
