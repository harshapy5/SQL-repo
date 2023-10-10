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
`Dress_ID` int,	`Style`	varchar(30),	`Price`	varchar(30),	 `Rating`	varchar(30),	`Size`	varchar(30),	`Season`	varchar(30),	
`NeckLine`	varchar(30),	`SleeveLength` varchar(30),		`waiseline`	varchar(30),	`Material`	varchar(30),	`FabricType`	varchar(30),	
`Decoration`	varchar(30),	`Pattern Type` varchar(30),		`Recommendation` int);

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

