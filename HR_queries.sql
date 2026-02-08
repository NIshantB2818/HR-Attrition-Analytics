create database HR_Project

use HR_Project

CREATE TABLE employees (
    EmployeeID INT PRIMARY KEY,
    Department VARCHAR(50),
    JobRole VARCHAR(50),
    ExperienceYears INT,
    MonthlyIncome INT,
    WorkHoursPerWeek INT,
    Attrition VARCHAR(10)
);

INSERT INTO employees 
(EmployeeID, Department, JobRole, ExperienceYears, MonthlyIncome, WorkHoursPerWeek, Attrition)
VALUES
(201,'IT','Developer',2,45000,40,'No'),
(202,'HR','Recruiter',5,38000,45,'Yes'),
(203,'Finance','Analyst',3,42000,42,'No'),
(204,'IT','Developer',4,47000,38,'No'),
(205,'Sales','Executive',6,50000,50,'Yes'),
(206,'HR','Manager',8,60000,48,'No'),
(207,'Finance','Analyst',2,41000,41,'Yes'),
(208,'Sales','Executive',7,52000,52,'No'),
(209,'IT','Tester',1,30000,36,'Yes'),
(210,'HR','Recruiter',4,39000,44,'No'),
(211,'Finance','Analyst',5,43000,43,'No'),
(212,'IT','Developer',3,48000,39,'Yes'),
(213,'Sales','Executive',6,51000,51,'No'),
(214,'HR','Recruiter',2,37000,46,'No'),
(215,'IT','Tester',1,32000,37,'Yes'),
(216,'Finance','Analyst',4,44000,40,'No'),
(217,'Sales','Executive',7,53000,53,'Yes'),
(218,'HR','Manager',9,61000,49,'No'),
(219,'IT','Developer',3,46000,41,'No'),
(220,'Finance','Analyst',5,42500,42,'Yes'),
(221,'Sales','Executive',6,50500,50,'No'),
(222,'HR','Recruiter',2,39500,47,'Yes'),
(223,'IT','Tester',4,33500,38,'No'),
(224,'Finance','Analyst',3,41500,40,'No'),
(225,'Sales','Executive',8,54500,54,'Yes'),
(226,'HR','Manager',7,62500,48,'No'),
(227,'IT','Developer',2,45500,39,'Yes'),
(228,'Finance','Analyst',5,43500,41,'No'),
(229,'Sales','Executive',6,51500,52,'No'),
(230,'HR','Recruiter',4,40500,45,'Yes');


-- View Data
SELECT * FROM employees;

-- Attrition Summary
SELECT Attrition, COUNT(*) AS TotalEmployees
FROM employees
GROUP BY Attrition;

-- Attrition by Department
SELECT Department, COUNT(*) AS AttritionCount
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Department;

-- Average Salary
SELECT Department, AVG(MonthlyIncome) AS AvgSalary
FROM employees
GROUP BY Department;

-- High Workload Employees
SELECT *
FROM employees
WHERE WorkHoursPerWeek > 45;

-- Experience vs Attrition
SELECT ExperienceYears, COUNT(*) AS EmployeeCount
FROM employees
GROUP BY ExperienceYears;
