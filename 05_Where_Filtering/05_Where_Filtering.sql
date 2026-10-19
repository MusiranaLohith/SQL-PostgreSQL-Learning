--Requirement: Retrieve every column for employees earning ₹55,000 or more.

SELECT *
FROM employees
WHERE employee_salary >= 55,000



--combine two conditions with AND
--table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) CHECK (price > 0),
    stock INT CHECK (stock >= 0),
    product_status VARCHAR(15) DEFAULT 'available'
        CHECK (product_status IN ('available', 'unavailable'))
);

INSERT INTO products
    (product_id, product_name, category, price, stock, product_status)
VALUES
    (1, 'Wireless Mouse', 'Electronics', 799.00, 25, 'available'),
    (2, 'Mechanical Keyboard', 'Electronics', 2499.00, 12, 'available'),
    (3, 'Office Chair', 'Furniture', 5499.00, 0, 'unavailable'),
    (4, 'Notebook Pack', 'Stationery', 199.00, 50, 'available'),
    (5, 'Desk Lamp', 'Electronics', 1299.00, 8, 'available'),
    (6, 'Study Desk', 'Furniture', 3999.00, 5, 'available'),
    (7, 'Pen Set', 'Stationery', 149.00, 0, 'unavailable'),
    (8, 'USB Hub', 'Electronics', 999.00, 15, 'available');



--Find products that cost more than ₹1,000 and have at least 5 units in stock.
SELECT *
FROM products
WHERE price > 1000
	AND stock >= 5

--Find products that are in the Electronics category and either cost less than ₹1,000 or have at least 15 units in stock.

SELECT *
FROM products
WHERE category = 'Electronics'
	AND (price < 1000 OR stock >= 15);




--NOT reverses a condition.
--The store wants to find products that are not in the Furniture category.Write a query that returns all columns from products.
SELECT *
FROM products
WHERE NOT category = 'Furniture';

--The store wants to find products that are not in the Electronics category.
SELECT *
FROM products
WHERE category <> 'Electronics'
--<> means "not equal to."




--BETWEEN
--The store wants to find products with stock levels from 5 through 15, including both 5 and 15.
SELECT *
FROM products
WHERE stock BETWEEN 5 AND 15;



--IN
--The store wants products whose product_id is 1, 4, or 8.
SELECT *
FROM products
WHERE product_id IN (1,4,8);



--LIKE and ILIKE
--The store wants to find all products whose names contain the word Desk anywhere in the name, regardless of what comes before or after it.
SELECT *
FROM products
WHERE product_name ILIKE '%Desk%';


--Return products whose names contain `desk` anywhere, whether the name contains `Desk`, `desk`, or `DESK`.
SELECT *
FROM products
WHERE product_name ILIKE '%desk%'

--Return products whose names end with `Set`. The match must be case-sensitive.
SELECT *
FROM products
WHERE product_name ILIKE '%Set';


--Return products whose names begin with `P`, followed by exactly two characters, followed by ` Set`. For example, the pattern must enforce the character positions, not merely search for the word `Set`.
SELECT *
FROM products
WHERE product_name LIKE 'P__ Set';


--Return products whose names contain `USB` regardless of case, and whose stock is at least 10.
SELECT *
FROM products
WHERE product_name ILIKE '%USB%'
  AND stock >= 10;

--Write a query to return products whose names:
--- End with Hub, regardless of case.
--- Have a stock level strictly greater than 10.
SELECT *
FROM products
WHERE product_name ILIKE '%Hub'
	AND stock > 10;


--Write one query that returns products satisfying both requirements:
--1. The product name must not start with P, followed by exactly two characters, followed by a space and Set — regardless of case.
--2. The product price must be less than ₹2,000.
SELECT *
FROM products
WHERE product_name NOT ILIKE 'P__ Set%'
	AND price < 2000;


--A store wants to find product names that:
--- Start with U.
--- Have exactly one character between U and B.
--- End with B, with nothing after it.
--- Match must be case-insensitive.
--- Price must be below ₹2,000.
SELECT *
FROM products
WHERE product_name ILIKE 'U_B'
	AND price < 2000;



--A store wants to find products whose names contain exactly the text book somewhere, regardless of case, but whose names do not end with pack, also regardless of case. Their price must be below ₹1,000.
SELECT *
FROM products
WHERE product_name ILIKE '%book%'
	AND product_name NOT ILIKE '%pack'
	AND price < 1000;


-- IS NULL & IS NOT NULL
--The store manager asks:
--Find every product whose stock level has not been recorded. Return only its product ID, product name and stock.
SELECT product_id,product_name,stock
FROM products
WHERE stock is NULL


--Your store manager gives you this requirement:
--Find products that cost less than ₹2,000 and satisfy at least one of these conditions:
--- Their name contains desk, regardless of case.
--- Their stock level has not been recorded.
--Return only product_id, product_name, price, and stock.
SELECT product_id,product_name,stock
FROM products
WHERE price < 2000
	AND
	(product_name ILIKE '%desk%'
	OR stock IS NULL);


--Store inventory report
--The store manager wants a list of products that meet these requirements:
--- The price is between ₹500 and ₹3,000, inclusive.
--- The product name does not contain desk, regardless of case.
--- The stock is either greater than 10 or has not been recorded.
--- Return only product_name, category, price, and stock.

SELECT product_name,category,price,stock
FROM products
WHERE price BETWEEN 500 and 3000
	AND product_name NOT ILIKE '%desk%'
	AND (stock > 10 OR stock IS NULL);



