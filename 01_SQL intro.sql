-- This file contains basic SQL code on how to create a database and use the database to create table and insert data into the table.

-- SQL query to create a database
CREATE DATABASE IF NOT EXISTS Dress_details;

-- SQL Query to sow the available databases in the DBMS
SHOW databases;

-- SQL Query to use the created database 
USE <Database_name>;

-- SQL Query to create a table if not existing in database
CREATE TABLE IF NOT EXISTS <Table_name>(<Col1, Col2, Col3,etc>)

-- For our SQL practice I am using a excel file as a source which is taken from a notable website.

CREATE TABLE IF NOT EXISTS Dress_data(
`Dress_ID` int,	`Style`	varchar(30),`Price`	varchar(30),`Rating`	varchar(30),`Size`	varchar(30),`Season`	varchar(30),
`NeckLine`	varchar(30),	`SleeveLength` varchar(30),		`waiseline`	varchar(30),	`Material`	varchar(30),	`FabricType`	varchar(30),	
`Decoration`	varchar(30),`Pattern Type` varchar(30),`Recommendation` int);

-- SQL Query to select all the data from the table
SELECT * FROM <Table_name>;

SELECT * FROM Dress_date;

-- SQL Query to manually insert the data to the table
INSERT INTO <Table_name> VALUES (Val1, Val2, Val3,etc)
INSERT INTO Dress_data VALUES ("1006032852","Sexy","Low","4.6","M","Summer","o-neck","sleevless","empire",null,"chiffon","ruffles","animal",1)

--How to upload bulk data from excel file to MYSQL Database

LOAD DATA INFILE 'D:/AttributeDataSet.csv'   -- 'Excel File Path'
INTO TABLE dress
FIELDS TERMINATED BY ','                     -- As the file is csv, we are using comma for value separaion'.
ENCLOSED BY '"'                              -- The values are inside the "".
LINES TERMINATED BY '\n'                     -- To move to the next row.
IGNORE 1 ROWS ;                              -- First row consists of column names, As we already created columns we can ignore 1 row.


-- Consraints in MYSQL
NOT NULL     -- Ensures that a column cannot have a NULL value
UNIQUE       -- Ensures that all values in a column are different
PRIMARY KEY  -- A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
FOREIGN KEY  -- Prevents actions that would destroy links between tables
CHECK        -- Ensures that the values in a column satisfies a specific condition
DEFAULT      -- Sets a default value for a column if no value is specified
CREATE INDEX -- Used to create and retrieve data from the database very quickly

-- NOT NULL Constraint
-- NOT NULL ensures that any of the column is not blank. It only accepts values and not null values
CREATE TABLE Person_details(Person_id int NOT NULL, Person_name varchar(30) NOT NULL, Person_address varchar(50) NOT NULL);

-- UNIQUE Constraint
-- UNIQUE ensures that all the values in a column are unique and not repeated.
CREATE TABLE Person_details(Person_id int NOT NULL, Person_name varchar(30), Person_mail varcar(20) UNIQUE);

-- PRIMARY KEY Constraint 
-- PRIMARY KEY is a combination of NOT NULL and UNIQUE. 

CREATE TABLE Person_details(Person_id int NOT NULL, Person_name varchar(30), Person_mail varchar(30), PRIMARY KEY(Person_id));

-- In the above query Person_id acts as a PRIMARY KEY. It must contain UNIQUE values and it shouls not contain NULL values.

-- FOREIGN KEY Constraint
-- FOREIGN KEY is a field in one table that refers to a PRIMARY KEY in another table.

CREATE TABLE Orders(Order_id int NOT NULL, Order_name varchar(30), Person_id int, PRIMARY KEY(Order_id),
FOREIGN KEY(Person_id REFERENCES Person_details(Person_id)

-- In the above query, the Person_id in Orders Table acts as a FOREIGN KEY and it refers to Person_details table Person_id which is
--a PRIMARY KEY

-- CHECK Constraint 
-- CHECK ensures that the column's value is defined on a condition.
CREATE TABLE Person_details(Person_id int NOT NULL,Person_name varchar(30) NOT NULL,Person_address varchar(50),Age int,
CHECK (Age>=18));

-- In the above query, the CHECK Constraint allows the values to the column that are >=18 

-- DEFAULT Constraint 
-- DEFAULT is used to set a column's data to a default value.
CREATE TABLE Persons (Person_id int NOT NULL,Person_name varchar(255) NOT NULL,Person_age int,Person_city varchar(30) DEFAULT 'Banglore');

-- In the above query, DEFAULT sets a value pre-defined by user.

-- AUTO_INCREMENT keyword to perform an auto-increment feature.
-- By default, the starting value for AUTO_INCREMENT is 1, and it will increment by 1 for each new record.
CREATE TABLE Person_details(Person_id int NOT NULL AUTO_INCREMENT, Person_nameame varchar(30) NOT NULL, 
Person_age int, PRIMARY KEY (Personid));
