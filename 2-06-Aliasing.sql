-- How we used AS so far -- 
SELECT FIrstName + ' ' + LastName AS FullName
FROM EmployeeDemographics; 


-- We can use AS for Tables --
SELECT Demo.employeeid
FROM EmployeeDemographics AS Demo; 


-- More examples with Joins 01 --

SELECT Demo.EmployeeID, Sal.salary
FROM EmployeeDemographics AS demo
Join EmployeeSalary AS Sal 
ON Demo.EmployeeID = Sal.EmployeeID; 


-- More examples with Joins 02 --

SELECT Demo.EmployeeID, Demo.FirstName, Demo.LastName, Sal.jobtitle, War.age
From EmployeeDemographics AS Demo
LEFT JOIN EmployeeSalary AS Sal
ON Demo.EmployeeID = Sal.EmployeeID 
LEFT JOIN WarehouseEmployeeDemographics AS War 
ON Demo.EmployeeID = War.EmployeeID; 
