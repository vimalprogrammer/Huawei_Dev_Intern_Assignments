-- Assignment 1: Create a DB for your college with following parameters:

-- 1. Create a table for students with name, age, mobile no, registration no., year of batch as columns.
-- 2. Create a table for teachers with name, domain, department as column
-- 3. Write a query to insert 10 students data and 10 teachers data in the respective table
-- 4. Write a query to fetch all the students from 2020 batch
-- 5. Write a query to fetch all teachers from CS department
-- 6. Write a query to edit at least 3 records of students
-- 7. Write a query to delete 2 records from teachers table.

# 1.Create a table for students with name, age, mobile no, registration no., year of batch as columns.

CREATE TABLE student(id integer PRIMARY Key AUTOINCREMENT,name varchar(20),age integer, mobile_no integer, reg_no integer, batch integer);

# 2.Create a table for teachers with name, domain, department as column

CREATE TABLE teacher(id integer PRIMARY Key AUTOINCREMENT,name varchar(20),domain varchar(60),department varchar(20));


# 3.1.Write a query to insert 10 students data 

INSERT into student VALUES (1,"Shri Vishnu",23,9123456789,811719104092,2019);
INSERT into student VALUES (2,"Arun Prasanth",22,7686266887,811719104058,2019);
INSERT into student VALUES (3,"Vimal M",22,8681264484,811719104118,2019);
INSERT into student VALUES (4,"Rooban C",26,646269818,811719104099,2019);
INSERT into student VALUES (5,"Ram balaji",23,86288568488,811719104100,2021);
INSERT into student VALUES (6,"Ronaldo Matthew",22,6518465168,811719104001,2021);
INSERT into student VALUES (7,"Thulasi V",21,86584616,811719104008,2023);
INSERT into student VALUES (8,"Kishore R",24,6468156846,811719104006,2020);
INSERT into student VALUES (9,"Somasundaram S",22,6846664889,811719104009,2018);
INSERT into student VALUES (10,"Ram Moorthy",26,6466554649,811719104069,2021);


# 3.2.Write a query to insert 10 teachers data in the respective table

INSERT into teacher VALUES(101,"Kumar",'AI','CSE');
INSERT into teacher VALUES(109,"Jai Shankar",'Thermal','MECH');
INSERT into teacher VALUES(110,"Prasanna",'DS','CSE');
INSERT into teacher VALUES(105,"Prithivi",'IT','CSE');
INSERT into teacher VALUES(120,"Sudharshan",'Microprocessor','ECE');
INSERT into teacher VALUES(119,"Shanjith",'AutoCAD','MECH');
INSERT into teacher VALUES(200,"Nithish",'Motors','EEE');
INSERT into teacher VALUES(315,"Rangesh",'Audrino','MECH');
INSERT into teacher VALUES(215,"Muthu",'Ethics','GENERAL');
INSERT into teacher VALUES(400,"Eswar",'AI','CSE');

# 4.Write a query to fetch all the students from 2020 batch

SELECT * from student WHERE batch=2019;

# 5.Write a query to fetch all teachers from CS department

SELECT * from teacher WHERE department="CSE";

# 6.Write a query to edit at least 3 records of students

UPDATE student set mobile_no = 8975462135 WHERE id = 1;
UPDATE student set batch = 2020 WHERE name = 'Arun';
UPDATE student set age = 20 WHERE name = 'Shyam';

#7. Write a query to delete 2 records from teachers table.

DELETE FROM teacher WHERE id=101;
DELETE FROM teacher WHERE name='Muthu';
DELETE FROM teacher WHERE domain='Motors';


