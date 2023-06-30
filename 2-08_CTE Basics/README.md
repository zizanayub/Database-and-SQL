## 💡 What is CTE?

It's a named temporary result which is used to manipulate complex subqueries data. Full name is, Common Table Expression. CTE is created in a memory rather than temp table.



## 💡 Example.


```SQL
-- CTE (Common Table Expression)
WITH CTE_Employee AS
(SELECT FirstName,LastName,Gender,Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS CountGender,
AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary
FROM EmployeeDemographics ed 
JOIN EmployeeSalary es 
     ON ed.EmployeeID = es.EmployeeID 
WHERE Salary > 45000
)

SELECT *
FROM CTE_Employee;
```




Result:


| FirstName | LastName  | Gender | Salary | CountGender | AvgSalary   |
|-----------|-----------|--------|--------|-------------|-------------|
| Angela    | Martin    | Female | 47000  | 1           | 47000.0000 |
| Dwight    | Schrute   | Male   | 63000  | 4           | 56500.0000 |
| Toby      | Flenderson| Male   | 50000  | 4           | 56500.0000 |
| Michael   | Scott     | Male   | 65000  | 4           | 56500.0000 |
| Stanley   | Hudson    | Male   | 48000  | 4           | 56500.0000 |
