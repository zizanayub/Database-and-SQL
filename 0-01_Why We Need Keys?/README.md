
Suppose, there is a table named `Employees`. In the `Employees` table, there are the columns named:


- Employee ID
- Employee Name
- Social Security Number
- Salary
- Phone number
- Email number


Like this: 


| Employee_ID |      Name      |        SSN        |       Salary       |           Phone          |        Email       | 
| -----------|----------------|-------------------|--------------------|--------------------------|--------------------|
|  101       |      John     |        AA       |       50000       |           0111890     |        johnaa@abcd.com     | 
|  102       |      Alen     |        BB       |       52000       |           0113890     |        alenbb@abcd.com     |
|  103       |      John     |        CC       |       53000       |           0115890     |        johncc@abcd.com     |
|  104       |      Johnson     |        DD       |       55000       |           0151890     |        johnsondd@abcd.com     |
|  105       |      John     |        EE    |       56000       |           0111870     |        johnee@abcd.com     |
|  106       |      Charles  |        FF       |       60000       |           0141890     |        charlesff@abcd.com     |



▶️ Execute the query by names
1. Suppose, we have generated a query to find the salary of "John" and increase his salary by 10%. We have found the salary of "John" and tried to execute the query. But is it right? No, because there are 3 **Johns** in this `Employees` table. 

▶️ Execute the query by salary amounts
2.  Now, can we find the John's salary with the query of finding the salary amount? No, beacuse that same kind of amount can be matched with multiple people.

▶️ Execute the query by department names
3. If I want to execute the query following the department names. That can't be possible also. Because, there can be two **John's** in the same department. 

▶️ So, What's the ultimate goal?
4. So, to find the specific outcome and remove the data inconsistency and most importantly **to uniquely identify the tuples**, we need the keys in Relational Databases.

▶️ Sample Query
5. So the query will be

```SQL
SELECT Salary+Salary*0.10
FROM Employees 
WHERE Employee_id = 101; 
```


OR 

Based on another similar table

```SQL
SELECT 
	  ed.EmployeeID,
      es.Salary,
      es.Salary+es.Salary*0.10 "Incremented Salary"
FROM EmployeeDemographics ed
JOIN EmployeeSalary es
     ON ed.EmployeeID = es.EmployeeID
WHERE ed.EmployeeID = 1001; 
```


Result:

1 row returned. 



![image](https://github.com/zizanayub/SQL-101/assets/65456659/f7c3b93e-cb2a-4cce-b5bd-56294a52cd91)

