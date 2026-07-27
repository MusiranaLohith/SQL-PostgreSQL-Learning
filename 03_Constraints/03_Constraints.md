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