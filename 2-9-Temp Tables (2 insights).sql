-- Basic --
  
  CREATE Table #temp_employee (
    EmployeeID int,
    jobtitle varchar(100),
    Salary int 
    )
    
 -- Table created. No data -- 
 
 -- Select from temp table --
 
 SELECT *
 FROM #temp_employee; 
  
-- It didn't work on SQLite :/ the whole CREATE TABLE query must be selected -- 


-- Insert into temp_employee --
INSERT INTO #temp_employee VALUES 
(1001,'HR',45000)

 SELECT *
 FROM #temp_employee; 
 
-- Insert into from another table --
INSERT INTO #temp_employee 
SELECT *
FROM EmployeeSalary

 SELECT *
 FROM #temp_employee; 
 
 
 -- Insert into from joined tables --
 CREATE TABLE #temp_employee_2 (
   jobtitle varchar(50),
   EmployeePerJob int,
   AverageAge int,
   AverageSalary int)
   
 
 INSERT Into #temp_employee_2 
 SELECT jobtitle, count(jobtitle), Avg(Age), Avg(Salary)
 FROM EmployeeDemographics emp 
 JOIN EmployeeSalary sal 
 ON emp.employeeID = sal.EmployeeID 
 GROUP BY jobtitle
 
 SELECT *
 FROM #temp_employee_2 
  
  
 -- ISSUE --
 /* In SQLite, temp files don't work properly. You should select all the previous queries to get the result. What's the reason? 
 */ 
 
 
 
 -- Drop Table -- 

DROP TABLE IF EXISTS #temp_employee_2 
CREATE TABLE #temp_employee_2 (
   jobtitle varchar(50),
   EmployeePerJob int,
   AverageAge int,
   AverageSalary int)
   
 
 INSERT Into #temp_employee_2 
 SELECT jobtitle, count(jobtitle), Avg(Age), Avg(Salary)
 FROM EmployeeDemographics emp 
 JOIN EmployeeSalary sal 
 ON emp.employeeID = sal.EmployeeID 
 GROUP BY jobtitle
 
 SELECT *
 FROM #temp_employee_2 


/* By this query, if this table exists, this query will clear the table and work again. 
If doesn't exist, it will make another new similar one table */ 
