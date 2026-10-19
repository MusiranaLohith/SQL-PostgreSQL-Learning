# 04 - INSERT, SELECT, UPDATE, DELETE

## Overview

SQL provides commands to add, retrieve, modify, and remove rows in a table.

These operations are commonly called CRUD:

- Create — INSERT
- Read — SELECT
- Update — UPDATE
- Delete — DELETE

## INSERT

### Simple Definition

INSERT adds new rows to an existing table.

### Technical Definition

INSERT is a Data Manipulation Language (DML) command that adds records to a table.

### Important Points

- Values correspond to the columns in the specified order.
- Explicitly listing columns makes the statement clearer and safer.
- Multiple rows can be inserted in one statement.
- An omitted column may receive its DEFAULT value or NULL, depending on its definition and constraints.
- Table constraints are enforced during insertion.

## SELECT

### Simple Definition

SELECT retrieves data from a table.

### Technical Definition

SELECT is a SQL query command that retrieves specified columns and rows from one or more tables.

### Important Points

- The selected columns determine which columns appear in the result.
- The order of selected columns determines their output order.
- SELECT * retrieves all columns.
- SELECT does not modify stored data.
- The result shows the current stored values, including changes made by earlier UPDATE statements.

## UPDATE

### Simple Definition

UPDATE modifies existing rows.

### Technical Definition

UPDATE is a DML command that changes column values in rows of an existing table.

### Important Points

- SET specifies the columns and their new values.
- WHERE identifies the rows to modify.
- Without WHERE, every row in the table is updated.
- Existing values can be used in calculations.
- Multiple columns can be updated in one statement.
- UPDATE must satisfy the table's constraints.
- A failed constraint check causes the update to be rejected.
- Repeating a calculation-based update can change the value again.

## DELETE

### Simple Definition

DELETE removes existing rows from a table.

### Technical Definition

DELETE is a DML command that removes rows matching a specified condition.

### Important Points

- WHERE identifies the rows to delete.
- Without WHERE, every row in the table is deleted.
- DELETE removes rows, not the table structure.
- Foreign-key constraints can prevent deletion of referenced records.
- ON DELETE behavior determines what happens to dependent rows when a referenced row is deleted.

## WHERE in Data Modification

WHERE identifies which rows should be affected by UPDATE or DELETE.

A condition may target one row using an identifier or multiple rows using a condition on their values.

Using an overly broad or incorrect condition can modify or delete unintended records.

## Constraints and Data Modification

Constraints are enforced during both INSERT and UPDATE.

Foreign-key rules also affect DELETE operations when other rows reference the record being deleted.

## Safe Working Habits

- Preview target rows with SELECT before a broad UPDATE or DELETE.
- Use a suitable condition to identify the intended rows.
- Verify the results after modifying data.
- Remember that each executed statement changes the database's current state.
