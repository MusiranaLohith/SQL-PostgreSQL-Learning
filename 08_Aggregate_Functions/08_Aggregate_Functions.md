# Topic 8 — Aggregate Functions

## The 5 functions
- `COUNT()` → count rows or non-NULL values.
- `SUM()` → add values.
- `AVG()` → average of non-NULL values.
- `MAX()` → highest value.
- `MIN()` → lowest value.

## How to think
- Count orders ≠ count units.
- Total units → add quantities.
- Total order value → quantity × unit price, then add.
- Average order value → calculate each order's value, then average.
- Highest/lowest order value → calculate each order's value, then find max/min.

## WHERE + aggregates
- `WHERE` filters rows before the aggregate is calculated.
- Want completed orders only? Filter by status.
- Want everything except completed? Use `<>`.
- Need multiple possible matches? Think about `OR`.
- Don't add an ordinary column beside an aggregate unless the query groups it or aggregates it too.

## Remember
- `COUNT(*)` → all matching rows.
- `COUNT(column)` → matching rows where that column isn't NULL.
- `SUM()` and `AVG()` ignore NULL inputs.
- An aggregate without `GROUP BY` normally returns one result row.
- `MAX(a) - MIN(a)` → difference between highest and lowest.
- `DISTINCT` removes duplicate result rows; it isn't an aggregate function.

## Common mistakes
- Adding unit prices without multiplying by quantity.
- Filtering the wrong customer or status.
- Using `quantity` when the question asks for money.
- Giving an expected answer without checking the arithmetic.

## Quick recall
Before writing SQL, ask:
1. Which rows qualify?
2. What value does each row represent?
3. Do I need a count, total, average, maximum or minimum?
4. Am I calculating across the whole filtered dataset, or separately for groups? (Groups come next.)
