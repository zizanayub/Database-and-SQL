
## 💡 01. What is Stored Procedure?

A stored procedure is a named collection of SQL statements that are stored in a database and can be executed as a single unit.



## 💡 02. Basic Syntax 


```SQL
-- CREATING PROCEDURE
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Employees`()
BEGIN
SELECT * FROM EmployeeDemographics; 
END


-- Calling Stored Procedures
CALL Get_Employees;
```

