CREATE TABLE student(
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    age INT,
    phone_number VARCHAR(15)
);


CREATE TABLE product(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(20) NOT NULL,
    price INT CHECK(price > 0),
    quantity INT CHECK(quantity >= 0)
);


CREATE TABLE hotel_booking(
    booking_id INT PRIMARY KEY,
    guest_name VARCHAR(50) NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    num_of_guests INT CHECK (num_of_guests >= 1),
    CHECK (check_out_date >= check_in_date)
);


create table userAccount(
	AccountID int primary key,
	Username varchar(50) unique,
	status varchar(15) check(status IN('active','inactive','suspended'))
)


create table employee(
	employeeID int primary key,
	employeeName varchar(50) not null,
	employeeSalary int not null,
	check(employeeSalary > 0),
	employeeExperience int,
	check(employeeExperience >= 0),
	employmentType varchar(15) check(employmentType IN('full_time','part_time','contract'))
);



create table course(
	courseID int primary key,
	courseName varchar(50) not null,
	courseDuration int check(courseDuration >= 1),
	coursePrice int not null check(coursePrice >= 0),
	courseMaxStud int,
	courseMinStud int,
	check(courseMaxStud >= courseMinStud),
	courseLevel varchar(20) check(courseLevel IN('beginner','intermediate','advanced'))
);



create table Department(
	deptID int primary key,
	deptName varchar(15) not null
);

create table Student(
	studID int primary key,
	studName varchar(20),
	deptID int,
	forgien key (deptID) references Depratment(deptID)
)



create table Employee(
	empID int primary key,
	empName varchar(20) not null
);


create table Project(
	projectID int primary Key,
	projectName varchar(50),
	empID int,
	foreign key (empID) references Employee(empID)
	on delete cascade
);



create table Customer(
	custoID int primary key,
	custoName varchar(15) not null,
	custoEmail varchar(20) not null unique,
	custoAccStatus varchar(10)
		default 'active'
		check(custoAccStatus IN('active','inactive','blocked'))

);

create table Orders(
	orderID int primary key,
	custoID int,
	orderAmount int check(orderAmount > 0),
	foreign key (custoID)
		references Customer(custoID)
		on delete set null
);



--Combined constraints example question:

create table Patient(
	patientID int primary key,
	patientName varchar(15) not null,
	patientEmail varchar(20) not null unique,
	patientAccStatus varchar(10)
		default 'active'
		check(patientAccStatus IN('active','inactive','blocked'))
);


create table Doctor(
	docID int primary key,
	docName varchar(15) not null,
	docConsultationFee int
		check(docConsultationFee > 0)
);


create table appointment(
	apptID int primary key,
	patientID int,
	foreign key(patientID)
		references Patient(patientID)
		on delete set null,
	docID int,
	foreign key(docID)
		references Doctor(docID)
		on delete cascade,
	apptStatus varchar(10)
		default 'scheduled'
		check(apptStatus IN('scheduled','completed','cancelled')),
	apptFee int,
	check(apptFee >= 0)
);

