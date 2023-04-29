-- Create Procedure -- 
CREATE PROCEDURE TEST 
AS 
Select *
FROM EmployeeDemographics; 

EXEC TEST 

-- A whole procedure has been included into a single word TEST xD -- 



-- Temp table in a PROCEDURE -- 
CREATE PROCEDURE Temp_Employee 
AS 
CREATE TABLE #temp_employee 
(jobtitle varchar(50),
 EmployeePerJob int, 
 AvgAge int,
 AvgSalary int); 
 
 INSERT INTO #temp_employee
 SELECT jobtitle,COUNT(jobtitle), Avg(Age), Avg(Salary) 
 FROM EmployeeDemographics dem 
 JOIN EmployeeSalary sal 
 ON dem.EmployeeID = sal.EmployeeID 
 GROUP BY jobtitle; 
 
 SELECT *
 FROM #temp_employee 
 

-- The whole this in one word Temp_Employee -- 

EXEC Temp_Employee 


-- The code is Ok. But it is showing error -- 
-- Error: Maximum Stored Procedure, function, trigger or view nesting level exceeded -- 


-- Alter Procedure -- 
ALTER PROCEDURE Temp_Employee 
@JobTitle nvarchar(100) 

-- What is nvarchar and varchar --
/* varchar is stored as regular 8-bit (1 byte per character) data 
and nvarchar is stored as 2 bytes per character data. nvarchar can hold upto 
4000 characters, taking double the space of varchar
*/ 

AS 
CREATE TABLE #temp_employee 
(JobTitle varchar(100),
 EmployeePerJob int, 
 AvgAge int,
 AvgSalary int) 
 

INSERT INTO #temp_employee 
SELECT jobtitle,COUNT(jobtitle),avg(Age),avg(Salary) 
FROM EmployeeDemographics dem 
JOIN EmployeeSalary sal 
ON dem.EmployeeID = sal.EmployeeID 
WHERE jobtitle = @jobtitle 
GROUP BY jobtitle; 


EXEC Temp_Employee @Jobtitle = 'Salesman'; 
