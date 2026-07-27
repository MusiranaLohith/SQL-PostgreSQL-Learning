# 02 - Tables

## What is a Table?

### Simple Definition
A table is where data is actually stored in a database.

### Technical Definition
A table is a database object that stores related data in rows and columns.

---

## Why do we need Tables?

- A database is just a container.
- Tables organize related data.
- One table should represent one real-world entity.

Examples:
- Student
- Teacher
- Course
- Attendance

---

## CREATE TABLE Syntax

```sql
CREATE TABLE table_name(
    column_name data_type,
    column_name data_type
);
```

---

## Data Types Learned

### INT

- Stores whole numbers.
- Example:
  - student_id
  - age

Syntax:

```sql
INT
```

> PostgreSQL does NOT use `INT(10)` or `INT(15)`.

---

### VARCHAR(n)

- Stores text.
- `n` represents the maximum number of characters.

Example:

```sql
VARCHAR(100)
VARCHAR(15)
```

Examples of use:

- student_name → VARCHAR(100)
- phone_number → VARCHAR(15)

---

## Complete Example

```sql
CREATE TABLE student(
    student_id INT,
    student_name VARCHAR(100),
    age INT,
    phone_number VARCHAR(15)
);
```

---

## Things to Remember

- Every table has columns.
- Every column must have a data type.
- `INT` stores whole numbers.
- `VARCHAR` stores text.
- `VARCHAR(n)` means up to `n` characters.
- `INT` does not take a length in PostgreSQL.