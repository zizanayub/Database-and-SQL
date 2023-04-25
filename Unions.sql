-- Insert into EmployeeDemographics Table --
Insert into EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male')


-- Create WarehouseEmployeeDemographics table --

CREATE TABLE WarehouseEmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)


-- Insert the VALUES into WarehouseEmployeeDemographics Table --
Insert into WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')


-- Union --
SELECT *
FROM EmployeeDemographics
UNION 
SELECT *
FROM WarehouseEmployeeDemographics


-- Union All -- 
SELECT *
FROM EmployeeDemographics
UNION ALL 
SELECT *
FROM WarehouseEmployeeDemographics


-- Union with EmployeeSalary --
SELECT EmployeeID, firstname, age
FROM EmployeeDemographics
UNION 
SELECT Employeeid, jobtitle, salary
FROM EmployeeSalary
ORDER BY EmployeeID

