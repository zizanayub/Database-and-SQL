## 💡 01. What is CTE?

It's a named temporary result which is used to manipulate complex subqueries data. Full name is, Common Table Expression. CTE is created in a memory rather than temp table.



## 💡 02. Example.


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




## 💡 03. Why will CTE_Employee not work while running only 2nd part (After select)?


Because CTE is active within the context of query execution. When the CTE will be executed, only then it will work. 




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
); 

SELECT *
FROM CTE_Employee;
```



Result:

```Error
Error Code: 1064. You have an error in your SQL syntax;
check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 9
```




## 💡 04. Metaphor





![image](https://github.com/zizanayub/SQL-101/assets/65456659/d6060d20-1de0-43ec-acf1-fbc403a266d7)




![image](https://github.com/zizanayub/SQL-101/assets/65456659/055cc58a-6098-41a7-a402-2110e68a8d62)







## 💡 05. Where are the results stored. when we execute CTE?

The results of CTE are temporarily generated, and held in the memory within the context of query execution. 
