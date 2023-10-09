-- This file contains basic SQL code on how to create a database and use the database to create table and insert data into the table.

-- SQL query to create a database
CREATE DATABASE IF NOT EXISTS Bank_Details;

-- SQL Query to sow the available databases in the DBMS
SHOW databases;

-- SQL Query to use the created database 
USE <Database_name>;

-- SQL Query to create a table if not existing in database
CREATE TABLE IF NOT EXISTS <Table_name>(<Col1, Col2, Col3,etc>)

-- For our SQL practice I am using a excel file as a source which is taken from a notable website. Link : https://archive.ics.uci.edu/

CREATE TABLE IF NOT EXISTS Bank_details(
age int, job varchar(30), marital varchar(30), education varchar(30), `default` varchar(30), balance int, housing varchar(30),loan varchar(30),
contact varchar(30), `day` int, `month` varchar(30), duration int, campaign int, pdays int, previous int,poutcome varchar(30), y varchar(30))

-- SQL Query to select all the data from the table
SELECT * FROM <Table_name>;

SELECT * FROM Bank_Details;

-- SQL Query to manually insert the data to the table
INSERT INTO <Table_name> VALUES (Val1, Val2, Val3,etc)

INSERT INTO bank_details VALUES(58,"management","married","tertiary","no",2143,"yes","no","unknown",5,"may",261,1,-1,0,"unknown","no")
