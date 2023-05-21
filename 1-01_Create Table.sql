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




-- What does AUTO_INCREMENT do?
/* When a column has the AUTO_INCREMENT attribute, it assigns a new value to the column for each new row inserted into the table, 
incrementing the value by 1 each time. */

--Example-1(AUTO_INCREMENT)
Create Table project01.example_table(
id INT AUTO_INCREMENT PRIMARY KEY,
name varchar(50)
);

DESC project01.example_table; 


