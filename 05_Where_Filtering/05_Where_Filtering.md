# WHERE & Filtering

## 1. Purpose of WHERE

**Simple definition:** `WHERE` filters rows based on a condition.

**Technical definition:** `WHERE` evaluates a Boolean condition for each row. Rows are retained only when the condition evaluates to `TRUE`. Rows evaluating to `FALSE` or `UNKNOWN` are excluded.

## 2. Comparison Operators

- `=` — equal to
- `<>` — not equal to
- `>` — greater than
- `<` — less than
- `>=` — greater than or equal to
- `<=` — less than or equal to

Numeric literals should not contain thousands separators.

## 3. Logical Operators

### AND
All combined conditions must be true.

### OR
At least one combined condition must be true.

### NOT
Negates a condition.

### Parentheses
Parentheses group conditions and make the intended logic explicit. In SQL, `AND` has higher precedence than `OR`.

## 4. BETWEEN

Checks whether a value falls within an inclusive range. Both endpoints are included.

## 5. IN

Checks whether a value matches any value in a specified list. It can replace multiple equality comparisons joined by `OR`.

## 6. LIKE and ILIKE

These operators match text against a pattern.

- `LIKE` performs case-sensitive pattern matching in PostgreSQL.
- `ILIKE` performs case-insensitive pattern matching in PostgreSQL.

### Wildcards

- `%` matches zero or more characters.
- `_` matches exactly one character.

Wildcard position determines whether the pattern matches text at the beginning, end, or anywhere within a value.

Without `%`, the pattern must match the entire string, subject to any `_` wildcards.

## 7. NOT LIKE and NOT ILIKE

These operators exclude values matching a pattern.

- `NOT LIKE` excludes case-sensitive matches.
- `NOT ILIKE` excludes case-insensitive matches.

A comparison using `<>` checks whether an entire value differs from a specified value; it does not search for a substring.

## 8. NULL

`NULL` represents a missing, unknown, or unavailable value. It is different from zero, an empty string, and `FALSE`.

### Checking for missing values

- `IS NULL` identifies missing values.
- `IS NOT NULL` identifies non-NULL values.

Ordinary comparisons with `NULL` do not evaluate to `TRUE` or `FALSE`; they generally produce `UNKNOWN`.

### Three-valued logic

SQL conditions can evaluate to:

- `TRUE`
- `FALSE`
- `UNKNOWN`

A `WHERE` clause retains only rows where the condition is `TRUE`.

For logical expressions:

- `FALSE AND UNKNOWN` evaluates to `FALSE`.
- `TRUE AND UNKNOWN` evaluates to `UNKNOWN`.
- `TRUE OR UNKNOWN` evaluates to `TRUE`.
- `FALSE OR UNKNOWN` evaluates to `UNKNOWN`.

## 9. Selecting Columns and Filtering Rows

`SELECT` determines which columns appear in the output.

`WHERE` determines which rows appear in the output.

Selecting specific columns does not remove or modify other columns in the underlying table.

## 10. Filtering Checklist

Before writing a filtering query:

1. Identify which columns must appear in the result.
2. Translate each business requirement into a condition.
3. Decide whether conditions must all be true (`AND`) or whether alternatives are allowed (`OR`).
4. Group mixed `AND` and `OR` conditions using parentheses where needed.
5. Check range boundaries and wildcard positions carefully.
6. Handle missing values using `IS NULL` or `IS NOT NULL`.
7. Verify that the query matches the full requirement, not merely a subset of it.