-- 01. What does DEFAULT do?
-- In MySQL, the DEFAULT keyword is used to specify a default value for a column when inserting a new row into a table.

-- Example-1 (Default)

CREATE TABLE project01.my_table(
id INT,
name varchar(50) DEFAULT 'Unknown',
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESC project01.my_table; 

/*In the above example, the name column is defined with a default value of 'Unknown'. 
If an INSERT statement doesn't provide a value for the name column, it will automatically be assigned the default value 'Unknown'.*/

/* Similarly, the created_at column is defined with a default value of the current timestamp using DEFAULT CURRENT_TIMESTAMP. 
If an INSERT statement doesn't specify a value for created_at, it will be automatically populated with the current timestamp. */




-- Example-2 (Default)

CREATE TABLE project01.persons (
LASTNAME varchar(200) NOT NULL,
FirstName varchar (200), 
Age int, 
City varchar(255) DEFAULT 'Sandes'); 

DESC project01.persons; 

-- Output will show 'Sandes' under Default column in the row with City. 




-- 02. What does AUTO_INCREMENT do?
/* When a column has the AUTO_INCREMENT attribute, it assigns a new value to the column for each new row inserted into the table, 
incrementing the value by 1 each time. */

--Example-1(AUTO_INCREMENT)
Create Table project01.example_table(
id INT AUTO_INCREMENT PRIMARY KEY,
name varchar(50)
);

DESC project01.example_table; 






-- 03. What is Primary Key?
/* 
1. A primary key is a column or set of columns that identifies each row of the column uniquely.
2. Each table in relational database typically has one primary key.
*/

-- Example-01. Primary key
Create Table project01.employees
(employee_id INT PRIMARY KEY,
first_name varchar(50),
last_name varchar(50)
);





-- 04. What is foreign key?

/*
1. Foreign key references the primary key of another table, creating a connection between two tables 
based on shared values.

2. A table can have multiple foreign keys.
*/


-- Example-01. Foreign key
Create Table exercises.customers (
id INT PRIMARY KEY, 
name varchar(50)
);


Create Table exercises.orders (
order_id INT primary key,
order_number varchar(50),
customer_id INT, 
foreign key (customer_id) REFERENCES exercises.customers(id)); 





-- 05. Why did FOREIGN KEY exercise didn't work?





-- 06. What is Engine = InnoDB; 
/*
1. InnoDB is a storage engine of MySQL
2. How tha data is stored, accessed and managed within the database, InnoDB engine tells the database all about this.
*/



-- 07. What is ON UPDATE CASCADE?
/*
When the 'Job_id' column in jobs table are updated, the corresponding column in employees table will also be updated
*/





-- 08. What is ON DELETE RESTRICT?
/*
The deletion of the rows from jobs table will be restricted, if the corresponding rows in the 'Employees' table is referencing them.
*/ 



--09. What does ON DELETE SET NULL and ON UPDATE SET NULL do?
/*
On DELETE SET NULL: The value will be automatically NULL in child table as FOREIGN KEY if the parent value is being deleted.
ON UPDATE SET NULL: If the parent value updates, the value as FOREIGN KEY will be updated to NULL.
*/

