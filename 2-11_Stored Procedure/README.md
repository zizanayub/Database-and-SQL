
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



## 💡 03. Advantages of Stored Procedure.


1. Improved Performance.





## 💡 04. Example of an advantage of `Stored Procedure' "Improved Performance"


**Metaphor**: Let's say, a chef has all the ingredients or recipe readily available to cook the dish efficiently. Similarly, stored procedure helps to save the complex queries and make them available over and over again. We need not write the same SQL query again. We can execute the stored procedure just and it will be executed properly.


**Example**: 

Let's say you have a web application that needs to retrieve customer orders along with their details. Instead of executing multiple SQL statements individually each time the request is made, you can create a stored procedure that encapsulates the necessary SQL queries and joins.






