-- Partition By --

SELECT FirstName, lastname, gender, Salary,
COUNT(Gender) OVER (Partition By Gender) AS TotalGender
FROM EmployeeDemographics Demo 
JOIN EmployeeSalary Sal 
ON Demo.EmployeeID = Sal.EmployeeID; 



-- Group by vs Partition By -- 

SELECT FIrstName, lastname, gender, salary, count(salary)
FROM EmployeeDemographics demo 
JOIN EmployeeSalary Sal 
ON Demo.EmployeeID = Sal.EmployeeID 
GROUP BY firstname,lastname,gender,salary; 


-- Clean Code with Group By -- 

SELECT gender, COUNT(gender)
FROM EmployeeDemographics demo 
JOIN EmployeeSalary Sal 
ON Demo.EmployeeID = Sal.EmployeeID 
GROUP BY gender; 
