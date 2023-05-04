-- Having Clause --

SELECT jobtitle, Count(jobtitle)
FROM EmployeeDemographics
Join EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE Count(Jobtitle) > 1
GROUP BY jobtitle; 

-- It won't work because WHERE doesn't allow aggregate functions --

-- Insering Having Clause instead of WHERE -- 
SELECT jobtitle,COUNt(jobtitle)
FROM EmployeeDemographics
JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
HAVING COUNT(jobtitle) > 1
GROUP BY jobtitle; 

-- This also won't work. Because HAVING is depended on GROUP BY. So, GROUP BY should come first--

-- Final Correct Code -- 
SELECT jobtitle,COUNt(jobtitle)
FROM EmployeeDemographics
JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY jobtitle
