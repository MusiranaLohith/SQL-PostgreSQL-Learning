# Data

## Simple Definition
Data is any piece of information.

## Technical Definition
Data is raw facts, values, or information that can be stored and processed.

---

# Database

## Simple Definition
A database is a container that stores related data in an organized way.

## Technical Definition
A database is an organized collection of related data.

---

# SQL

## Simple Definition
SQL is the language used to communicate with a database.

## Technical Definition
SQL (Structured Query Language) is the standard language used to create, retrieve, update, and manage relational databases.

---

# PostgreSQL

## Simple Definition
PostgreSQL is software that manages databases.

## Technical Definition
PostgreSQL is an open-source Relational Database Management System (RDBMS) that uses SQL to manage databases.

---

# RDBMS

## Simple Definition
RDBMS is software that stores data in related tables.

## Technical Definition
RDBMS (Relational Database Management System) is software that stores and manages related data in tables using SQL.

## Examples
- PostgreSQL
- MySQL
- Oracle Database
- SQL Server
- SQLite

---

# PostgreSQL Architecture

PostgreSQL Server
    ↓
Database
    ↓
Schema
    ↓
Table
    ↓
Rows
    ↓
Columns

## PostgreSQL Server
Software that manages databases.

## Database
A collection of related data.

## Schema
A container that organizes database objects within a database.

## Table
Stores one type of data.

## Row
One complete record.

## Column
One attribute of all records.

---

### SQL Commands are grouped into categories

| Category | Purpose                           | Example                      |
| -------- | --------------------------------- | ---------------------------- |
| DDL      | Create or modify database objects | `CREATE`, `ALTER`, `DROP`    |
| DML      | Work with the data                | `INSERT`, `UPDATE`, `DELETE` |
| DQL      | Read data                         | `SELECT`                     |
| DCL      | Permissions                       | `GRANT`, `REVOKE`            |
| TCL      | Transactions                      | `COMMIT`, `ROLLBACK`         |

---

# CREATE DATABASE

## Syntax

CREATE DATABASE database_name;

## Example

CREATE DATABASE college_db;

## Explanation

CREATE → create something

DATABASE → the object to create

database_name → name of the database

; → end of the SQL statement

---
    