-- Common Table Expression --

WITH CTE_Employee AS
(
  SELECT FirstName, LastName, gender, salary,
  COUNT(gender) OVER (PARTITION BY gender) AS TotalGender,
  Avg(Salary) OVER (PARTITION BY gender) AS AverageSalary
  FROM EmployeeDemographics dem
  JOIN EmployeeSalary sal
  ON dem.EmployeeID = sal.EmployeeID
  WHERE Salary > 45000
  )
  
  SELECT *
  FROM CTE_Employee
  
  
/* 
It will result 4 columns, 1 female and 3 male. The avg. will be shown within 3 male and 1 female. The 
count of genders is shown at the same way.
*/ 
