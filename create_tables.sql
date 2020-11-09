create table Parent (
parent_ID INT AUTO_INCREMENT PRIMARY KEY,
father_first_name varchar(35),
father_last_name varchar(35),
father_CNIC  varchar(15) UNIQUE,
father_mobile VARCHAR(11) UNIQUE,
father_address varchar(100),
mother_first_name varchar(35),
mother_last_name varchar(35),
mother_CNIC varchar(15) UNIQUE,
mother_mobile VARCHAR(11) UNIQUE,
mother_address varchar(100)
);

CREATE TABLE ParentAccount(
 account_ID INT AUTO_INCREMENT PRIMARY KEY,
 f_username varchar(50),
 f_password varchar(20),
 m_username varchar(50),
 m_password varchar(20),
 parent_ID int,
 foreign key (parent_ID) REFERENCES  Parent(parent_ID)
);

CREATE TABLE Child(
child_id INT AUTO_INCREMENT PRIMARY KEY,
child_name varchar(60),
date_of_birth date,
 parent_ID int,
 foreign key (parent_ID) REFERENCES  Parent(parent_ID),
 Token varchar (100)
);

CREATE TABLE OfficeLocation(
	office_ID INT AUTO_INCREMENT PRIMARY KEY,
    address varchar (500),
	latitude FLOAT,
    longitude FLOAT
);

CREATE TABLE Employee(
	employee_ID INT AUTO_INCREMENT PRIMARY KEY,
    employee_CNIC varchar(15),
    first_name varchar(35),
    last_name varchar (35),
    email varchar (50),
    passcode varchar(20),
    contact_number VARCHAR(11),
    foreign key (office_ID) REFERENCES  OfficeLocation(office_ID),
	office_ID int
);

CREATE TABLE Locations(
	locations_ID INT AUTO_INCREMENT PRIMARY KEY,
	location varchar (500),
    employee_ID int,
    foreign key (employee_ID) REFERENCES  Employee(employee_ID)
);

CREATE TABLE Attendance(
	attendance_ID INT AUTO_INCREMENT PRIMARY KEY,
    attendance_date date,
    attendance_time time,
    employee_ID int,
    foreign key (employee_ID) REFERENCES  Employee(employee_ID)
);

CREATE TABLE VaccineRecord(
	vaccine_ID INT AUTO_INCREMENT PRIMARY KEY,
    vaccine_name varchar(50),
    date_of_administration date,
    readministration_date date,
    time_of_administration time,
    employee_ID int,
    foreign key (employee_ID) REFERENCES  Employee(employee_ID),
	child_id int,
	foreign key (child_id) REFERENCES  Child(child_id)
);

CREATE TABLE VaccineNames(
	vaccine_name_ID INT AUTO_INCREMENT PRIMARY KEY,
    vaccine_name VARCHAR(100)
);

SELECT * FROM Employee
