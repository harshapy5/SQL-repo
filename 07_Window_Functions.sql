-- Window Functions

CREATE DATABASE win_func;

USE win_func;

DROP TABLE Students;
CREATE TABLE students(
Student_id int,
Student_batch varchar(30),
Student_name varchar (30),
Student_stream varchar(30),
Student_marks int,
Student_mail varchar(30));

INSERT INTO Students VALUES(101,'FSDA','Pavan','CSE',80,'Pavan@gmail.com');

SELECT * FROM Students;


INSERT INTO Students VALUES(102,'FSDS','Harsha','CSE',81,'Harsha@gmail.com');
INSERT INTO Students VALUES(103,'FSDS','Suresh','Civil',81,'Suresh@gmail.com');
INSERT INTO Students VALUES(104,'FSDE','Naresh','Civil',83,'Naresh@gmail.com');
INSERT INTO Students VALUES(105,'FSDE','Karnakar','Civil',47,'Karnakar@gmail.com');
INSERT INTO Students VALUES(106,'FSDE','Neethu','IT',74,'Neethu@gmail.com');
INSERT INTO Students VALUES(107,'FSDE','Matt','IT',56,'Matt@gmail.com');
INSERT INTO Students VALUES(108,'FSDE','Eric','IT',34,'Eric@gmail.com');
INSERT INTO Students VALUES(109,'FSDE','Mary','ME',45,'Mary1@gmail.com');
INSERT INTO Students VALUES(110,'FUll Stack','Neha','ME',78,'Neha@gmail.com');
INSERT INTO Students VALUES(111,'FUll Stack','Ankit','ME',90,'Ankit@gmail.com');
INSERT INTO Students VALUES(112,'FUll Stack','Sudh','ECE',94,'Sudh@gmail.com');
INSERT INTO Students VALUES(113,'FUll Stack','Krish','EEE',39,'Krish@gmail.com');
INSERT INTO Students VALUES(114,'FUll Stack','Anand','EEE',48,'Anand@gmail.com');
INSERT INTO Students VALUES(115,'FUll Stack','Mary','EEE',86,'Mary@gmail.com');
INSERT INTO Students VALUES(116,'FUll Stack','Paul','EEE',68,'Paul@gmail.com');
INSERT INTO Students VALUES(117,'FUll Stack','Karthik','ME',91,'Karthik@gmail.com');
INSERT INTO Students VALUES(118,'FUll Stack','Karthika','ME',76,'Karthika@gmail.com');
INSERT INTO Students VALUES(119,'FSDA','Rana','ECE',63,'Rana@gmail.com');
INSERT INTO Students VALUES(120,'FSDA','Rama','ECE',80,'Rama@gmail.com');
INSERT INTO Students VALUES(121,'FSDA','Anji','ECE',50,'Anji@gmail.com');
INSERT INTO Students VALUES(122,'FSDA','Loki','ECE',90,'Loki@gmail.com');

SELECT Student_batch, SUM(Student_marks) FROM Students GROUP BY Student_batch; -- Total marks by Batc

SELECT Student_batch, MIN(Student_marks) FROM Students GROUP BY Student_batch; -- Lowest marks by Batch

SELECT Student_batch, MAX(Student_marks) FROM Students GROUP BY Student_batch;  -- Highest marks by Batch

SELECT Student_batch, AVG(Student_marks) FROM Students GROUP BY Student_batch;  -- Average marks by batch

SELECT COUNT(Student_batch) FROM Students GROUP BY Student_batch;  -- Student count by Batch

SELECT COUNT(DISTINCT Student_batch) FROM Students; 

SELECT Student_batch, count(*) FROM Students GROUP BY Student_batch; 

SELECT * FROM Students;

SELECT Student_name,MAX(Student_marks) FROM Students WHERE Student_batch = 'FSDA' GROUP BY Student_name;

SELECT Student_name, Student_batch,MAX(Student_marks) FROM Students WHERE Student_batch = 'FSDA' 
GROUP BY Student_name,Student_batch;

select student_name from students where student_marks in 
(select max(student_marks) from students where student_batch="fSDA");

select * from students where student_batch = 'fsda' ;
select * from students where student_batch = 'fsda' ORDER BY Student_marks DESC;
select * from students where student_batch = 'fsda' ORDER BY Student_marks DESC LIMIT 1;    -- Gives highest student_marks
select * from students where student_batch = 'fsda' ORDER BY Student_marks DESC LIMIT 1,1; -- Gives 2nd highest marks

SELECT * FROM Students;

SELECT Student_id,Student_batch,Student_stream,Student_marks FROM Students;

SELECT Student_id,Student_batch,Student_stream,Student_marks, 
row_number() OVER(ORDER BY Student_marks)
AS 'ROW NUMBER' FROM Students;

SELECT Student_id,Student_batch,Student_stream,Student_marks, 
row_number() OVER(PARTITION BY Student_batch ORDER BY Student_marks DESC)
AS 'ROW NUMBER' FROM Students;

SELECT * FROM (SELECT Student_id,Student_batch,Student_stream,Student_marks, 
row_number() OVER(PARTITION BY Student_batch ORDER BY Student_marks DESC)
AS 'row_num' FROM Students) AS top Where row_num = 1;

SELECT * FROM (SELECT Student_id,Student_batch,Student_stream,Student_marks, 
row_number() OVER(PARTITION BY Student_batch ORDER BY Student_marks DESC) as "row_num",
rank() OVER(PARTITION BY Student_batch ORDER BY Student_marks DESC) as "rank_num" 
FROM Students ) as top Where rank_num = 1;

select * from (select student_id , student_batch , student_stream,student_marks ,
row_number() over(partition by student_batch order by student_marks desc) as 'row_number',
rank() over(partition by student_batch order by student_marks desc ) as 'row_rank',
dense_rank() over( partition by student_batch order by student_marks desc) as 'Second_highest'
from students) as test where Second_highest = 2;





