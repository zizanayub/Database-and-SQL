-- Updating 01 --

UPDATE EmployeeDemographics
SET EmployeeID = 1012 
WHERE FIrstName = 'Holly' AND LastName = 'Flax' ; 


-- Updating 02 -- 
Update EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE EmployeeID = 1012; 


-- Delete --
DELETE FROM EmployeeDemographics
Where EmployeeID = 1005; 


-- To be careful, the column which will be deleted can be selected first -- 
