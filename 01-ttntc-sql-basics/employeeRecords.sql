-- create a table
-- structure = [EmpNo | Name | Department | Salary | Address ]

CREATE TABLE Employee(EmpNo int(4), Name char(20), Department char(20), Salary int(6), Address char(40))

-- populate the table 
INSERT into Employee values(1001, 'Shafeeq', 'Teaching Staff', 85000, 'London, UK'),
(1001, 'Peter', 'Office Manager', 35000, 'London, UK'),
(2054, 'David', 'IT', 65000, 'London, UK'),
(3001, 'The King', 'Royalty', 985000, 'London, UK'),
(3004, 'Harry', 'Ex-Royalty', 585000, 'Somewhere, US'),
(1024, 'Putin', 'Tyrant', 999999, 'Moscow, RU'),
(4096, 'Kwarteng', 'Trainee Chancelor', 495000, 'London, UK'),
(8112, 'Major Tom', 'Astronaut', 785000, 'Huston, US')

-- produce some reports
-- 1. Name & Department

SELECT name, Department from Employee

--2. Name, Salary, Tax

SELECT name, salary, salary*0.21 AS Tax from Employee

-- 3. Name, Salary, Tax, Net Salary 

SELECT name, salary AS 'Gross Salary', salary*0.21 AS Tax, salary*0.79 AS 'Net Salary' from Employee

