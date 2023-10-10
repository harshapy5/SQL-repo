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
`Dress_ID` varchar(30),	`Style`	varchar(30),	`Price`	varchar(30),	 `Rating`	varchar(30),	`Size`	varchar(30),	`Season`	varchar(30),	
`NeckLine`	varchar(30),	`SleeveLength` varchar(30),		`waiseline`	varchar(30),	`Material`	varchar(30),	`FabricType`	varchar(30),	
`Decoration`	varchar(30),	`Pattern Type` varchar(30),		`Recommendation` varchar(30));

-- SQL Query to select all the data from the table
SELECT * FROM <Table_name>;

SELECT * FROM Dress_date;

-- SQL Query to manually insert the data to the table
INSERT INTO <Table_name> VALUES (Val1, Val2, Val3,etc)

