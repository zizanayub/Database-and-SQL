-- Subquery 101 --
-- 1 -- 
SELECT EmployeeID, Salary, (Select Avg(Salary) FROM EmployeeSalary) AS AllAvgSalary 
FROM EmployeeSalary; 
-- This will select EmployeeID, Salary of each employee, and overall Average of the salaries --


-- 2 --
-- WITH ISSUE -- 
-- At the same time, can we get the same thing by the following query? -- 
SELECT EmployeeID, Salary, AVG(salary) AS AllAvgSalary
FROM EmployeeSalary; 
-- No, it's giving error -- 
-- WHY? -- 


-- 3 -- 
-- Partition by vs subquery -- 
Select EmployeeID, Salary, Avg(Salary) OVER () AS AllAvgSalary 
FROM EmployeeSalary 
-- This will give the same result like 1 no query for 101 --
-- So using PARTITION BY is the solution -- 
-- they are showing exactly the SAME -- 


-- 4 -- 
-- Subquery in FROM -- 
SELECT *
FROM (SELECT EmployeeID, Salary, AVG(Salary) over () AS AllAvgSalary FROM EmployeeSalary) a
-- This will show all 3 variables mentioned --


-- 5 -- 
SELECT a.employeeid, AllAvgSalary
FROM (SELECT EmployeeID, Salary, AVG(Salary) over () AS AllAvgSalary FROM EmployeeSalary) a  
-- This will show 2 variables mentioned -- 
