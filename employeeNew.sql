-- create a table
-- structure = [EmpNo | Name | Department | Salary | Address ]

CREATE TABLE EmployeeNew(EmpNo int(4), Name char(20), Department char(20), Salary numeric(8,2), Address char(40))

-- populate the table 
INSERT into EmployeeNew values(1001, 'Shafeeq', 'Teaching Staff', 85000.00, 'London, UK'),
(1001, 'Peter', 'Office Manager', 35000.00, 'London, UK'),
(2054, 'David', 'IT', 65000.00, 'London, UK'),
(3001, 'The King', 'Royalty', 985000.00, 'London, UK'),
(3004, 'Harry', 'Ex-Royalty', 585000.00, 'Somewhere, US'),
(1024, 'Putin', 'Tyrant', 999999.00, 'Moscow, RU'),
(4096, 'Kwarteng', 'Trainee Chancelor', 495000.00, 'London, UK'),
(8112, 'Major Tom', 'Astronaut', 785000.00, 'Huston, US')

-- produce some reports
-- 1. Name & Department

SELECT name, Department from EmployeeNew

--2. Name, Salary, Tax

SELECT name, salary, salary*0.21 AS Tax from EmployeeNew

-- 3. Name, Salary, Tax, Net Salary 

SELECT name, salary AS 'Gross Salary', salary*0.21 AS Tax, salary*0.79 AS 'Net Salary' from EmployeeNew

-- NEW WORK 2022-10-04

-- we're going to give our staff a 10% payrise

UPDATE EmployeeNew set salary = salary+salary*0.1

-- we only want to give the IT folks a payrise this time 

UPDATE EmployeeNew set salary = salary+salary*0.03 where Department = 'IT'

-- maybe a payrise to only bottom earners 

update EmployeeNew set salary = salary+salary*0.09 where salary < 65000