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

-- let's see if we can find staff by department

select * from EmployeeNew WHERE Department = 'Royalty' and salary > 500000

-- now we want to find 3 conditions (Dept, salary, location)

select * from EmployeeNew WHERE Department = 'Royalty' and salary > 500000 AND address = 'London, UK'

-- I want to update the departments to make multiple hits on various search

CREATE TABLE EmployeeTwo(EmpNo int(4), Name char(20), Department char(20), Salary numeric(8,2), Address char(40))

-- populate the table 
INSERT into EmployeeTwo values(1001, 'Shafeeq', 'IT', 63000.00, 'London, UK'),
(1001, 'Peter', 'HR', 35000.00, 'London, UK'),
(2054, 'David', 'IT', 65000.00, 'London, UK'),
(3001, 'The King', 'C-Suite', 98000.00, 'London, UK'),
(3004, 'Harry', 'C-Suite', 58000.00, 'Somewhere, US'),
(1024, 'Puppy Face', 'Accounts', 87500.00, 'Moscow, RU'),
(4096, 'Kwarteng', 'Accounts', 49000.00, 'London, UK'),
(8112, 'Major Tom', 'HR', 53000.00, 'Huston, US')

-- more complicated search, [(X AND Y) AND (W OR Z)]

select * from EmployeeTwo where (salary > 38000 and salary <= 75000) and (department = 'HR' OR 'IT')

-- who has highest salary? 

SELECT name,max(salary) from EmployeeTwo

-- alternative, using subquery 
-- we can use this concept of subqueries to solve very complex problems 

select * from EmployeeTwo where salary=(select max(salary) from EmployeeTwo)

-- now we only want to see name using subquery 

SELECT name, salary FROM EmployeeTwo WHERE max = (SELECT max(salary) FROM EmployeeTwo)

-- can we find highest salary for the  persons in IT dept (below query did not work) 
SELECT name, salary FROM EmployeeTwo WHERE max = (SELECT max(salary) FROM EmployeeTwo) and department is 'IT'