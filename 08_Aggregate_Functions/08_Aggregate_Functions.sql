--TABLE
CREATE TABLE sales_orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    product VARCHAR(100) NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit_price DECIMAL(10,2) NOT NULL CHECK (unit_price > 0),
    order_status VARCHAR(20) NOT NULL
);

INSERT INTO sales_orders
    (order_id, customer_name, product, quantity, unit_price, order_status)
VALUES
    (1, 'Aarav', 'Keyboard', 2, 2500, 'Completed'),
    (2, 'Priya', 'Mouse', 3, 800, 'Completed'),
    (3, 'Rahul', 'Monitor', 1, 12000, 'Pending'),
    (4, 'Aarav', 'Mouse', 2, 800, 'Completed'),
    (5, 'Sneha', 'Keyboard', 1, 2500, 'Cancelled'),
    (6, 'Priya', 'Monitor', 2, 12000, 'Completed'),
    (7, 'Kiran', 'Mouse', 5, 800, 'Pending'),
    (8, 'Rahul', 'Keyboard', 1, 2500, 'Completed'),
    (9, 'Sneha', 'Mouse', 2, 800, 'Completed'),
    (10, 'Kiran', 'Monitor', 1, 12000, 'Cancelled');


--How many orders are recorded in this table?
SELECT COUNT(order_status)
FROM sales_orders


--What is the total revenue represented by all orders?
SELECT SUM(quantity*unit_price)
FROM sales_orders


--The manager wants the average unit price across all 10 order records.
SELECT AVG(unit_price)
FROM sales_orders


--What is the highest unit price among the recorded orders?
SELECT MAX(unit_price)
FROM sales_orders


--What is the lowest unit price among the recorded orders?
SELECT MIN(unit_price)
FROM sales_orders


--The finance team wants to know how many orders have already been completed.
SELECT COUNT(order_status)
FROM sales_orders
WHERE order_status = 'Completed'


--Among completed orders, what is the total value of the goods sold?
SELECT SUM(quantity*unit_price), order_status
FROM sales_orders
WHERE order_status = 'Completed'


--What is the average total value of a single order, considering only completed orders?
SELECT MAX(unit_price)-MIN(unit_price)
FROM sales_orders


--A manager wants to know the average number of units per order across the entire dataset.
SELECT AVG(quantity)
FROM sales_orders


--The sales manager wants to know the total value of completed orders placed by Priya.
SELECT SUM(quantity*unit_price)
FROM sales_orders
WHERE order_status = 'Completed'
	AND customer_name = 'Priya'


--The finance team wants to know the total value of orders that were not completed.
SELECT SUM(quantity*unit_price)
FROM sales_orders
WHERE order_status <> 'Completed'



--The manager wants to know the highest total value among completed orders.
SELECT MAX(quantity*unit_price)
FROM sales_orders
WHERE order_status = 'Completed';


--The finance team wants to know the average value of orders that were not cancelled.
SELECT AVG(quantity*unit_price)
FROM sales_orders
WHERE order_status <> 'Cancelled';



--The sales manager wants the total value of all orders placed by Kiran, regardless of status.
SELECT SUM(quantity*unit_price)
FROM sales_orders
WHERE customer_name = 'Kiran'


--The sales manager asks:
--“What is the lowest total order value among orders placed by customers whose names start with the letter S?”
SELECT MIN(quantity*unit_price)
FROM sales_orders
WHERE customer_name ILIKE 'S%';






