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


