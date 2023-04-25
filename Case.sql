-- Case Statement Example-1 --
SELECT FirstName, LastName, age, 
CASE 
WHEN Age > 30 THEN 'Old'
ELSE 'Young'
END
FROM EmployeeDemographics
WHERE Age IS NOT NULL 
Order BY Age DESC;


-- Case Statement Example-2 -- 
SELECT firstname,lastname, age,
CASE 
WHEN Age > 30 THEN 'Old'
WHEN AGE between 25 AND 30 THEN 'Young'
ELSE 'Baby'
END 
FROM EmployeeDemographics
WHERE Age is not null
ORDER BY Age; 
