--INSERT
--first question:
create table students(
	student_ID int primary key,
	name varchar(10),
	age int,
	phone_number varchar(15)
);

insert into students
(student_ID,name,age,phone_number)
values
(101,'Rahul',20,'9876543210');

SELECT * FROM students;


--continuing the ques:

create table students(
	student_ID int primary key,
	name varchar(10),
	age int,
	phone_number varchar(15)
);

insert into students
(student_ID,name,age,phone_number)
values
(101,'Rahul',20,'9876543210');


insert into students
(student_ID,name,age,phone_number)
values
(102,'Priya',22,'9123456780');

insert into students
(student_ID,name,age,phone_number)
values
(103,'Arun',21,'9876543210'),
(104,'Kiran',23,'9123456780'),
(105,'Meera',20,'9988776655');

SELECT * FROM students;


--second question:

create table Department(
	deptID int primary key,
	deptName varchar(50) not null unique
);

create table Students(
	studID int primary key,
	studName varchar(10) not null,
	studEmail varchar(100) not null unique,
	studAge int
		check(studAge >= 18),
	studAccStatus varchar(10)
		default 'active',
		check(studAccStatus IN('active','inactive','blocked')),
	deptID int,
	foreign key (deptID) references Department(deptID)
);

insert into Department
(deptID,deptName)
values
(10,'Computer Science'),
(20,'Electronics'),
(30,'Mechanical');


insert into Students
(studID,studName,studEmail,studAge,studAccStatus,deptID)
values
(101,'Rahul','rahul@example.com',20,'active',10),
(102,'Priya','priya@example.com',22,default,10),
(103,'Arun','arun@example.com',19,'inactive',20),
(104,'Meera','meera@example.com',21,default,30);




--Update:
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    salary DECIMAL(10,2) CHECK (salary > 0),
    employment_status VARCHAR(15)
        DEFAULT 'active'
        CHECK (employment_status IN ('active', 'inactive', 'on_leave'))
);

INSERT INTO employees
(employee_id, employee_name, email, salary, employment_status)
VALUES
(201, 'Anil', 'anil@example.com', 45000.00, 'active'),
(202, 'Sneha', 'sneha@example.com', 52000.00, 'active'),
(203, 'Vikram', 'vikram@example.com', 48000.00, 'on_leave'),
(204, 'Divya', 'divya@example.com', 60000.00, 'active');

-- UPDATE Students
-- SET studaccstatus = 'active'
-- WHERE studid = 103;
UPDATE employees
SET salary = salary+2500.75
WHERE employee_id = 202

UPDATE employees
SET salary = salary + (salary*0.05)
where employment_status = 'active'

UPDATE employees
SET salary = salary + (salary*0.08)
where employee_id = 201

select * from employees


----DELETE CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    salary DECIMAL(10,2) CHECK (salary > 0),
    employment_status VARCHAR(15)
        DEFAULT 'active'
        CHECK (employment_status IN ('active', 'inactive', 'on_leave'))
);

INSERT INTO employees
(employee_id, employee_name, email, salary, employment_status)
VALUES
(201, 'Anil', 'anil@example.com', 45000.00, 'active'),
(202, 'Sneha', 'sneha@example.com', 52000.00, 'active'),
(203, 'Vikram', 'vikram@example.com', 48000.00, 'on_leave'),
(204, 'Divya', 'divya@example.com', 60000.00, 'active');

-- UPDATE Students
-- SET studaccstatus = 'active'
-- WHERE studid = 103;
UPDATE employees
SET salary = salary+2500.75
WHERE employee_id = 202

UPDATE employees
SET salary = salary + (salary*0.05)
where employment_status = 'active'

UPDATE employees
SET salary = salary + (salary*0.08)
where employee_id = 201

Select *
FROM employees
WHERE employee_id = 204;


DELETE FROM employees
where employee_id = 204

SELECT *
FROM employees
WHERE salary < 55000;

DELETE FROM employees
where salary < 55000;


select * from employees



