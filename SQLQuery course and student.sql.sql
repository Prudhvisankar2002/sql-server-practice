
create database (database_name)-->here what ever want database name you want enter (--).

use database_name -->this emd is used for After the create a database using.

use amazon1 --> Here i am taking databasename

-->Here what is CONSTRAINTS?
-->// constraints are 6 types they are:-
 
-->(1)-UNIQUE ->It is ued for not allowed the dupliacte values into the table
-->(2)-CHECK -> check for the specific data
-->(3)-PRIMARY KEY ->null values & duplicate values are not accepted
-->(4)-NOT NULL-> null values are not accepted
-->(5)-FOREGIN KEY -> it used to provide links bettween another_tables 
-->(6)-DEFAULT -> it is used to store the default values if user not provided

-->create a course table. // with CONSTRAINTS//
create table course1(cid int primary key,cname varchar(10) Not null,fees money,tname varchar(10) not null)

insert into course1 values(1,'python',18000.0,'ram')
insert into course1 values(2,'java',20000.0,'krish')
insert into course1 values(3,'DA',15000.0,'sankar')

--> display the course1 table information
select *from course1

-->create a student table. // with CONSTRAINTS//
create table student(sid int primary key,sname varchar(10) not null,
gender char(1) check (gender in ('m','f','o')),
s1 int check (s1>=0 and s1<=100),
s2 int check (s2>=0 and s2<=100),
s3 int check (s3>=0 and s3<=100),
total AS (s1+s2+S3),cid int references course1(cid),srank int unique,extrasub varchar(10) default 'powerBI')
                                                                 --> ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
									                             -->Here i am using the default constraints
-->insert the values into the student table.
insert into student values(101,'prudhvi','m',91,85,70,1,8,'django')
insert into student values(102,'vishnnu','m',50,95,85,2,9,'mangodb')
insert into student values(103,'krishna','m',34,90,80,3,14,'reactjs')
-->//below like we inserted  the student details we got default values.
insert into student(sid,sname,gender,s1,s2,s3,cid,srank) values(104,'anjali','f',90,95,93,2,1)
insert into student values(105,'rajeswari','f',71,85,91,1,3,'mangodb')
insert into student values(106,'kumaran','o',92,95,89,2,2,'reactjs')

--> check the tables two tables data are inserted are not?
select*from course1 select *from student

-->display  student the maximum marks in s1-subject
select max(s1) as "maximum maerks" from student 

-->display student the mamimum marks in s1-subject
select min(s1) as "minimum maerks" from student 

-->display the fees of the python course.
select cname,fees from course1 where cname='python'

-->display how many numbers failed in the s3 subject
select sid,sname from student where s3<=35

-->display how many numbers faild in all subjects
select * from student where s1<=35 or s2<=35 or s3<=35

-->display the how many number present in each course
select cid, count(*)as "each_c_students" from student group by cid 

--> dispay the count the total number in the c1 course
select count(*) as"total_numbers_in_C1" from student where cid=1 

-->display how many numbers got the above 90 marks in the all subjects 
select * from student where s1>=90 or s2>=90 or s3>=90

-->display the how many numbers failed in s1 subject
select sname from student where s1<=35

