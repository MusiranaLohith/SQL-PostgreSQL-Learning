# Topic 7 — DISTINCT & Aliases

## DISTINCT
- Removes duplicate rows from the result.
- One column → unique values.
- Multiple columns → unique combinations.
- Doesn't change the actual table.

**Remember:** Unique combinations, not unique values in each column separately.

## Aliases (`AS`)
- Column alias → changes the name shown in the output.
- Table alias → gives a table a short name for the query.
- Alias is temporary; the real table/column name stays the same.
- Spaces in an alias? Use double quotes: `"Office Location"`.

## Common mistakes
- Using `DISTINCT` when you don't need it.
- Thinking two selected columns become individually unique.
- Thinking an alias renames the real column.
- Single quotes `' '` → text values.
- Double quotes `" "` → identifiers, such as aliases with spaces.

## Quick revision
- Need each value once? → `DISTINCT`.
- Need each column combination once? → `DISTINCT` on both columns.
- Need a better output name? → Column alias.
- Need a short table name? → Table alias.
- Does `DISTINCT` modify stored data? → No.
