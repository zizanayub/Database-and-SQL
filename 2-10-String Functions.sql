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

-- Trim, Left Trim, RIght Trim, Replace, Upper and Lower, Substring -- 


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


-- Replace --
SELECT LastName, REPLACE(LastName,'- Fired','')
FROM EmployeeErrors; 
-- This will replace the existing thing in any variable --


-- Substring --
-- Substring means taking a portion of a variable --
SELECT Substring(FirstName,1,3)
FROM EmployeeErrors; 
-- This will show e.g.'Hal' from 'Halpert' -- 


-- Without Substring -- 
SELECT err.FirstName, dem.FirstName
FROM EmployeeErrors err 
JOIN EmployeeDemographics dem
ON err.firstname = dem.firstname
-- This will not show any output. Because nobody matched -- 


-- With Substring -- 
SELECT SUBSTRING(err.FirstName,1,3), SUBSTRING(dem.FirstName,1,3) 
FROM EmployeeErrors err 
JOIN EmployeeDemographics dem 
ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3); 
-- two answers came. Jim and Pam -- 


-- Original vs. using substring -- 
SELECT err.firstname,SUBSTRING(err.FirstName,1,3),dem.firstname,SUBSTRING(dem.FirstName,1,3) 
FROM EmployeeErrors err 
JOIN EmployeeDemographics dem 
ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3);
-- We will see the difference :) -- 


-- UPPER and LOWER -- 
SELECT FirstName, UPPER(FirstName) 
FROM EmployeeErrors; 


SELECT FirstName, LOWER(FirstName) 
FROM EmployeeErrors; 
-- they are self-explanatory -- 
