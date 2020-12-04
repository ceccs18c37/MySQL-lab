
--   Name: Manu Mathew
--   Class: S5-C
--   Roll no: 37
--   Reg no: CHN18CS079

-- 1. Create table employeedetails with empid references to the empid in employee table
-- 2. Display the details of employee table where empid in employeedetails table
-- 3. Display the details of employee table where empid not in employeedetails table

USE sql_lab;

#1
CREATE TABLE employee (
	empid VARCHAR(4) NOT NULL,
	name VARCHAR(10) NOT NULL,
	datejoined DATE,
	salary INT NOT NULL,
	PRIMARY KEY (empid)
);

CREATE TABLE employeedetails (
	empid VARCHAR(4) NOT NULL,
	departmentid int,
	FOREIGN KEY (empid)
	REFERENCES employee(empid)
);

INSERT INTO employee VALUES('e1', 'Dave', '2018-11-7', '15000'),
('e2', 'Ryan', '2019-05-6', '9000'),
('e3', 'Matt', '2016-01-21', '30000'),
('e4', 'Brandon', '2015-01-11', '40000');

INSERT INTO employeedetails VALUES('e1', '3'), ('e3', '2'),
('e4', '1');

#2
SELECT * FROM employee
WHERE empid in(SELECT empid FROM employeedetails);

#3
SELECT * FROM employee
WHERE empid NOT IN(SELECT empid FROM employeedetails);
