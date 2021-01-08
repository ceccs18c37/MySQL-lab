--   Name: Manu Mathew
--   Class: S5-C
--   Roll no: 37
--   Reg no: CHN18CS079

-- Implementation of various aggregate functions in SQL

-- #1 Create a table Employee with following specifications.Code, name, DOB, designation, salary
CREATE TABLE Employee(
    code VARCHAR(5) PRIMARY KEY,
    name VARCHAR(15),
    dob date,
    designation VARCHAR(30),
    salary FLOAT
);

-- #2 Insert values into the table
INSERT INTO Employee VALUES
('e1','David','1990-11-07','General Manager',70000),
('e2','Eric','1994-04-12','Assistant Manager',45000),
('e3','Victor','1994-07-17','Clerk',15000),
('e4','Luke','1995-01-12','Clerk',15000);

-- #3 Display sum of salaries from the table employee where designation is clerk.
SELECT SUM(salary) FROM Employee WHERE designation='Clerk';

-- #4 Describe the maximum salary value from the table employee.
SELECT MAX(salary) FROM Employee;

-- #5 Display average salary of employees
SELECT AVG(salary) FROM Employee;

-- #6 Describe the minimum salary value from the table.
SELECT MIN(salary) FROM Employee;

-- #7 Display the total number of employees.
SELECT COUNT(*) FROM Employee;