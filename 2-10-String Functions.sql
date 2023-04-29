-- String Functions -- 

-- Create Table for EmployeeErrors -- 

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')


Select * 
FROM EmployeeErrors; 


-- TRIM --
SELECT EmployeeID, TRIM(EmployeeID) as TrimmedID 
FROM EmployeeErrors; 
-- All the blanks in the variables will be trimmed -- 


-- Left TRIM --
SELECT EmployeeID, LTRIM(EmployeeID) AS LeftTrimmed 
FROM EmployeeErrors;
-- All the spaces on left will be removed -- 


-- Right Trim -- 
SELECT EmployeeID, RTRIM(EmployeeID) AS RightTrimmed 
FROM EmployeeErrors; 
-- All the spaces on right will be removed by this query -- 
