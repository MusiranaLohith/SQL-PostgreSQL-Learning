--TABLE
CREATE TABLE sales_employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    employment_type VARCHAR(30) NOT NULL
);

INSERT INTO sales_employees
    (employee_id, employee_name, department, city, salary, employment_type)
VALUES
    (1, 'Aarav', 'Sales', 'Hyderabad', 45000, 'Full-time'),
    (2, 'Priya', 'Engineering', 'Bengaluru', 75000, 'Full-time'),
    (3, 'Rahul', 'Sales', 'Hyderabad', 52000, 'Contract'),
    (4, 'Sneha', 'HR', 'Chennai', 48000, 'Full-time'),
    (5, 'Kiran', 'Engineering', 'Hyderabad', 80000, 'Full-time'),
    (6, 'Divya', 'Sales', 'Bengaluru', 50000, 'Full-time'),
    (7, 'Arjun', 'HR', 'Chennai', 46000, 'Contract'),
    (8, 'Meera', 'Engineering', 'Bengaluru', 72000, 'Contract'),
    (9, 'Vikram', 'Sales', 'Hyderabad', 55000, 'Full-time'),
    (10, 'Ishita', 'HR', 'Hyderabad', 49000, 'Full-time');


--A manager wants a list of all departments in the company, with each department appearing only once. The output column must be named Department.
SELECT DISTINCT department
FROM sales_employees;



--The manager now wants a list of unique cities, with the output column labelled Office Location.
--
--Write a query that:
--- Returns only the city column.
--- Removes duplicate cities.
--- Labels the output column Office Location.
SELECT DISTINCT city AS "Office Location"
FROM sales_employees;



--Now the manager wants a list of unique department and city combinations to understand where each department operates.
--For example, Sales in Hyderabad and Sales in Bengaluru must appear as separate combinations.
SELECT DISTINCT department, city
FROM sales_employees


--A realistic reporting query
--The HR team wants a report showing each unique department and employment type combination.
--For example, Sales + Full-time and Sales + Contract should be separate rows.
--
--Return these columns:
--- department, labelled Department
--- employment_type, labelled Employment Type
SELECT DISTINCT
    department AS "Department",
    employment_type AS "Employment Type"
FROM sales_employees;



--A manager asks for the unique salary values in the company, sorted from highest to lowest.
--Return one column labelled Salary.
SELECT DISTINCT salary AS "Salary"
FROM sales_employees
ORDER BY salary DESC;


--Your task: Display employee_name and department for all employees, using se as the table alias. No filtering or sorting is required.
SELECT DISTINCT employee_name, department
FROM sales_employees AS "se"
