# Topic 6 — Sorting & Pagination

## What was this topic for?

Control **the order of results** and **how many rows I get**.

## 1. ORDER BY — sorting

- `ASC` → low to high, A to Z, oldest to newest.
- `DESC` → high to low, Z to A, newest to oldest.
- No direction specified → `ASC` by default.

**Think:** What should appear first?

## 2. Sorting by multiple columns

One `ORDER BY`, with columns separated by commas.

- First column = main sorting priority.
- Second column = breaks ties in the first.
- Third column = breaks remaining ties.

**Example in my head:** Highest salary first; if salaries tie, earliest joining date first; if dates tie, name A to Z.

**Common mistake:** Writing two `ORDER BY` clauses instead of one clause with comma-separated columns.

## 3. LIMIT — how many rows?

`LIMIT` sets the maximum number of rows returned.

**Think:** How many results do I want?

It does not guarantee that many rows will exist. If fewer rows match, fewer are returned.

## 4. OFFSET — how many rows to skip?

`OFFSET` skips rows before PostgreSQL returns the results.

**Think:** How many rows come before the page I want?

For 5 employees per page:

- Page 1 → skip 0, take 5.
- Page 2 → skip 5, take 5.
- Page 3 → skip 10, take 5.
- Page 4 → skip 15, take 5.

If only 12 employees exist, page 3 returns the last 2; page 4 returns nothing.

**Remember:** Page number is not the offset.

For page numbers starting at 1:

Offset = (page number − 1) × page size

## 5. Filtering + sorting + pagination

Typical order when building the query:

1. Choose the columns to display.
2. Filter rows using `WHERE`.
3. Sort the matching rows using `ORDER BY`.
4. Skip rows using `OFFSET`.
5. Return up to the requested number using `LIMIT`.

**Think:** Filter first conceptually, then decide the order, then take the required slice.

## 6. Predictable ordering

If multiple rows have the same sorting value, their relative order isn't guaranteed unless you specify another sort column.

Add a tie-breaker. A unique column such as the primary key makes the ordering deterministic.

**Why care?** Without predictable ordering, rows can shift between pages. Changes to the underlying data can still affect offset-based pagination.

## Common mistakes to watch for

- Sorting in the wrong direction.
- Putting the secondary sort column first.
- Using multiple `ORDER BY` clauses.
- Confusing page number with the number of rows to skip.
- Forgetting that `LIMIT` is a maximum, not a guarantee.
- Assuming `LIMIT` automatically includes everyone tied at the cutoff.

