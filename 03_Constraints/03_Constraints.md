# 03 - Constraints

## What is a Constraint?

### Simple Definition

A constraint is a rule that controls what data is allowed inside a table.

### Technical Definition

A constraint is a rule enforced by PostgreSQL to maintain the accuracy, consistency, and integrity of data.

---

# Constraints Learned

- PRIMARY KEY
- NOT NULL
- UNIQUE

---

# PRIMARY KEY

## Definition

A PRIMARY KEY uniquely identifies every row in a table.

## Rules

- Must be UNIQUE.
- Cannot be NULL.

## Notes

- Every table should have one PRIMARY KEY.
- PRIMARY KEY automatically includes:
  - UNIQUE
  - NOT NULL

---

# NOT NULL

## Definition

NOT NULL ensures a column must always contain a value.

## Notes

- Used for mandatory fields.
- Prevents NULL values.

---

# UNIQUE

## Definition

UNIQUE ensures duplicate values are not allowed.

## Notes

- Prevents duplicate values.
- Can be combined with NOT NULL.



---

# DEFAULT

## Definition

DEFAULT specifies a value that PostgreSQL automatically uses when no value is provided for a column.

## Notes

- Acts as a fallback value.
- It is used when a value is not provided.
- If a value is explicitly provided, PostgreSQL uses the provided value instead.
- DEFAULT does not force a column to always contain the default value.

---

# CHECK

## Definition

CHECK ensures that a value satisfies a specified condition before PostgreSQL accepts it.

## Notes

- Used to enforce business rules and valid value ranges.
- A CHECK condition can apply to a single column.
- A CHECK condition can contain multiple conditions.
- A CHECK condition can compare values from multiple columns.
- CHECK can restrict a column to a specific set of allowed values.
- The condition must be satisfied for the data to be accepted.
- When designing a CHECK constraint, consider the exact business rule and valid boundary values.

## Common Uses

- Restricting numeric values to a valid range.
- Preventing negative or invalid values.
- Comparing related values between columns.
- Restricting a value to a defined set of choices.

---

# FOREIGN KEY

## Definition

A FOREIGN KEY is a constraint that creates a relationship between a column in one table and a key in another table.

## Technical Definition

A FOREIGN KEY enforces referential integrity by ensuring that a value in the referencing table corresponds to an existing key in the referenced table.

## Notes

- The table being referenced is commonly called the parent table.
- The table containing the foreign key is commonly called the child table.
- The foreign key usually references a PRIMARY KEY or UNIQUE key in the parent table.
- A foreign key prevents references to non-existing records.
- Foreign keys are used to establish relationships between tables.

## Parent and Child

- Parent table → contains the referenced key.
- Child table → contains the foreign key that references the parent.

---

# FOREIGN KEY DELETE BEHAVIOR

When a referenced parent row is deleted, the foreign key can define what happens to the related child rows.

## RESTRICT

Prevents deletion of the parent while related child rows still reference it.

## CASCADE

Deletes the related child rows when the referenced parent row is deleted.

## SET NULL

Keeps the child rows but removes their reference to the deleted parent by setting the foreign key value to NULL.

## Choosing DELETE Behavior

The appropriate behavior depends on the meaning of the relationship and what should happen to the child data when the parent is deleted.

- Use CASCADE when the child data should not exist without the parent.
- Use SET NULL when the child data should remain but the relationship can be removed.
- Use RESTRICT when the parent should not be deleted while dependent child records exist.

---

# CONSTRAINT SUMMARY

- PRIMARY KEY → uniquely identifies a row.
- NOT NULL → makes a value mandatory.
- UNIQUE → prevents duplicate values.
- DEFAULT → provides a value when none is supplied.
- CHECK → enforces a condition or business rule.
- FOREIGN KEY → establishes a valid relationship between tables.

---

# Important Design Thinking

When designing a table, constraints should be chosen based on the meaning and rules of the real-world data.

Consider:

- What uniquely identifies the record?
- Which values are mandatory?
- Which values must be unique?
- Which values need a default?
- Which values must satisfy a specific rule?
- Does the table need to reference another table?
- What should happen to related records if a referenced record is deleted?