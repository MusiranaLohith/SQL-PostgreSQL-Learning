--TABLE
CREATE TABLE employees_sorting (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL CHECK (salary > 0),
    joining_date DATE NOT NULL,
    city VARCHAR(50) NOT NULL
);

INSERT INTO employees_sorting
    (employee_id, employee_name, department, salary, joining_date, city)
VALUES
    (1, 'Ananya Rao', 'Engineering', 75000, '2023-04-12', 'Hyderabad'),
    (2, 'Rahul Verma', 'Data Science', 85000, '2022-08-20', 'Bengaluru'),
    (3, 'Meera Shah', 'Engineering', 75000, '2024-01-15', 'Hyderabad'),
    (4, 'Arjun Reddy', 'Analytics', 65000, '2023-11-05', 'Chennai'),
    (5, 'Sneha Iyer', 'Data Science', 95000, '2021-06-10', 'Hyderabad'),
    (6, 'Karthik Nair', 'Engineering', 60000, '2024-03-22', 'Bengaluru'),
    (7, 'Priya Das', 'Analytics', 85000, '2022-02-18', 'Hyderabad'),
    (8, 'Vikram Singh', 'Engineering', 95000, '2021-09-30', 'Chennai'),
    (9, 'Divya Menon', 'Data Science', 70000, '2023-07-08', 'Bengaluru'),
    (10, 'Aarav Gupta', 'Analytics', 60000, '2024-05-14', 'Hyderabad'),
    (11, 'Ishita Bose', 'Engineering', 85000, '2022-12-01', 'Chennai'),
    (12, 'Rohan Kulkarni', 'Data Science', 70000, '2023-02-25', 'Hyderabad');


--The HR manager asks:
--Show the three highest-paid employees. Display only their names, departments, and salaries, with the highest salary first.
SELECT employee_name, department, salary
FROM employees_sorting
ORDER BY salary DESC
LIMIT 3;



--The HR manager now asks:
--List all employees from highest salary to lowest. If multiple employees have the same salary, display their names in alphabetical order.
SELECT employee_name,salary
FROM employees_sorting
ORDER BY salary DESC, employee_name ASC;



--The HR manager wants to see employees from the earliest joining date to the latest.
SELECT employee_name,joining_date
FROM employees_sorting
ORDER BY joining_date ASC;


--The dashboard now displays 5 employees per page. The HR manager wants page 3.
SELECT employee_name, department, salary
FROM employees_sorting
ORDER BY salary DESC, employee_name ASC
LIMIT 5 OFFSET 10;


--The HR manager wants a report of all employees, showing employee_name, department, salary, and joining_date.
--Requirements:
--- Highest salary first.
--- For equal salaries, earliest joining date first.
--- If both salary and joining date are equal, employee name alphabetically.
SELECT employee_name,department,salary,joining_date
FROM employees_sorting
ORDER BY salary DESC, joining_date ASC, employee_name ASC;


--Now the HR dashboard displays 3 employees per page.
--The manager wants page 2, with employees ordered by:
--- Salary, highest to lowest.
--- Employee name, A to Z when salaries tie.
--Return only employee_name, salary, and department.
SELECT employee_name,salary,department
FROM employees_sorting
ORDER BY salary DESC, employee_name ASC
LIMIT 3 OFFSET 3;



--The HR manager asks:
--Find the two earliest-joining employees in the Engineering department. If employees joined on the same date, show their names alphabetically.
--Return employee_name, joining_date, and salary.
SELECT employee_name,joining_date,salary
FROM employees_sorting
WHERE department = 'Engineering'
ORDER BY joining_date ASC,employee_name ASC
LIMIT 2;


--HR employee report
--Using your employees_sorting table, the HR manager asks:
--Find employees in the Data Science department who earn at least ₹70,000. Display their names, salaries, and joining dates.
--Sort by salary from highest to lowest. If salaries tie, sort by joining date from earliest to latest.
--Return only the first 2 employees.
SELECT employee_name,salary,joining_date
FROM employees_sorting
WHERE department = 'Data Science'
	AND salary >= 70000
ORDER BY salary DESC, joining_date ASC
LIMIT 2