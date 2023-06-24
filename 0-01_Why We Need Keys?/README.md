# 💡 Why We Need Keys in Table?


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




▶️ In one word


To uniquely, identify the tuples or rows in a table, keys are important. 







# 💡 More Breakdown

## ▶️ ***01. Uniqueness***

### 👇 Important points to note


1. **What does key do?**:



Keys ensure that each record in the database table has a unique identifier.


2. **What will happen without keys?**: 


There will be no way to differentiate between records, leading to duplication or data redundancy and data inconsistency.


3. It is important for maintaining **data integrity** and avoiding **data inconsistency**.



4. **When joining two tables without keys, what will happen?**


- There will be duplication of data.
- It becomes challenging to maintain data integrity.
- Can create incorrect associations and multiple potential matches.

### 👇 Example: 

Let's consider a scenario where you have a "Customers" table and an "Orders" table in a database. Without keys, attempting to join these tables is like trying to match customers with their orders based on some general criteria such as name or address. However, this approach can lead to incorrect associations or multiple potential matches. For instance, if two customers have the same name, the join may mistakenly assign orders to the wrong customer or create duplicate entries.


- Customers (Customer_id,Customer_name, Age)
- Orders (Order_id, customer_id, Date)

- Let's make a demo table

```SQL
CREATE TABLE Customers
(Customer_id int,
Customer_name varchar(50),
Age int);
```


```SQL
-- Creating Orders Table
CREATE TABLE Orders 
(Customer_id int,
order_id int,
Order_Date date);
```



```SQL
-- Insert Into Customer Table
INSERT INTO Customers VALUES
(1001,"Shihab",30),
(1002,"John",43),
(1003,"Shahed",32),
(1003,"Shahed",32),
(1004,"Martin",23);
```



```SQL
-- Insert into Orders Table
INSERT INTO Orders VALUES
(1001,101,'2023-07-01'),
(1002,102,'2023-02-01'),
(1003,103,'2023-03-03'),
(1003,104,'2023-03-03'),
(1004,102,'2023-03-09');
```



```SQL
-- Joining two tables  without primary keys! 
SELECT
      c.customer_id "Customer ID",
      c.customer_name "Customer Name",
      o.order_id "Order ID"
FROM Customers c 
JOIN Orders o 
     ON c.customer_id = o.customer_id; 
```




Result: 

7 rows returned. 




| Customer ID | Customer Name | Order ID |
|-------------|---------------|----------|
| 1001        | Shihab        | 101      |
| 1002        | John          | 102      |
| 1003        | Shahed        | 103      |
| 1003        | Shahed        | 103      |
| 1003        | Shahed        | 104      |
| 1003        | Shahed        | 104      |
| 1004        | Martin        | 102      |



So, see there are duplicates and data reducndency due to not having primary keys or unique identifiers. 


### 👇 Metaphor to understand:
Just like, each person has a unique fingerprint to identify. No duplicate fingerprint can't be found. Keys work like fingerprints.





## ▶️ ***02. Data Retrieval***


### 👇 How can keys play important role for data retrieval?***





Keys serve an index number for quick data retrieval. When a key is defined as an index, we can execute the query efficiently. It will boost the query performance and speeds up data retrieval operations.  



### 👇 Example:


Suppose, there is a table named books. Where we will find all the list of books a shop has. A customer came and wants to get a specific book named "Marketing 101".
The computer operator will find out one by one if there is no index number in the table. Or, unique identified or key in the table to find out the specific requested book. 


If a new key is introduced in this table, the operator can quickly locate the book name on the table based on the key value. 


If there is no key, he whould go one by one book and check which is so much ***time consuming*** and ***not efficient***. 







### 👇 Now lets get a real scenario.


There is a table named ***Books***. The columns are Book_id, Book_name, Writer. 
There is another table named ***Books_Stored***. The columns are Book_name and Writer. In this table, there is no key to identify the unique rows. 




```SQL
-- CREATE TABLE named "Books"
CREATE TABLE Books
(Book_id int,
Book_name varchar(30),
Writer varchar(50));
```



```SQL
-- INSERT VALUES in "Books" Table
INSERT INTO Books VALUES 
(101,"Finance and Accounting 1","JC Mosh"),
(102,"Finance and Accounting 2","Reifard Paul"),
(103,"Marketing 101","Seth Godin"),
(104,"Marketing 101","Phillip Kotler"),
(105,"Marketing 101","DU IBA");
```




```SQL
-- Find a marketing book written by Seth Godin (This table includes keys)
SELECT Book_name, Writer
FROM Books
WHERE Book_id = 103; 
```



The operator will find the book with 1 try following the index number or primary key. Through the key, the operator will easily be able to identify the book.
Through the whole process, the query operation has been quicker and efficient has been ensured throughout the whole process. The operator didn't have to check each book one by one.






On the other hand,


```SQL
-- CREATE TABLE named "Books_Stored"
CREATE TABLE Books_Stored
(Book_name varchar(30),
Writer varchar(50));
```



```SQL
- INSERT VALUES in "Books_Stored" Table
INSERT INTO Books_Stored VALUES 
("Finance and Accounting 1","JC Mosh"),
("Finance and Accounting 2","Reifard Paul"),
("Marketing 101","Seth Godin"),
("Marketing 101","Phillip Kotler"),
("Marketing 101","DU IBA");
```



There are no unique identifier or keys to identify the records. 


The operator is asked to find the marketing book of a specific writer. The steps he will follow at best is,

- First, he will look for marketing books one by one.
- And then, he will check the writer's name.

If we tend to showcase the whole scenario in SQL, we will see the operations of `SUBQUERY` and `WHERE` clause. 



```SQL
-- Find a marketing book written by Seth Godin
SELECT Book_name, Writer
FROM 
(SELECT Book_name,Writer 
FROM Books_Stored 
WHERE Book_name REGEXP "Marketing") Finding_Marketing_Books
WHERE Writer = "Seth Godin";
```




Result:


| Book Name      | Writer      |
|----------------|-------------|
| Marketing 101  | Seth Godin  |
