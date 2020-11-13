/**
  Name: Manu Mathew
  Class: S5-C
  Roll no: 37
  Reg no: CHN18CS079
 **/


USE sql_lab;

#1
CREATE TABLE employee (
   code VARCHAR(4) NOT NULL,
   name VARCHAR(10) NOT NULL,
   designation VARCHAR(30) NOT NULL,
   dob DATE NOT NULL,
   salary INT NOT NULL,
   PRIMARY KEY (code));
  
#2
INSERT INTO employee (code, name, designation, dob, salary)
VALUES ('1', 'Dave', 'Manager', '1990-11-7', '15000'),
       ('2', 'Aaron', 'Assistant Engineer', '1996-11-26', '6000');

#3
SELECT * FROM employee;

#4
UPDATE employee SET SALARY = 20000 WHERE code = 'e1';

#5
DELETE FROM employee
WHERE code = 'e2';
