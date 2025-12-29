-->//AGGREGATE FUNCTIONS ON SQL_SERVER//

-->What is aggregate functions?
-->// Aggregate funtions is a it will take group of values as a input then it will give a single vakues result.

--> we have 5 types of they are:-
-->(1)-SUM()->it is use to find the total.
-->(2)-MAX()-> it is used to find the maximum value
-->(3)-MIN()-> it is used to find the minimum value
-->(4)-AVG()-> it is used to find the average value
-->(5)-COUNT()-> it is used to find the number of values
-->There are 2 types:-
               -->//(1)-COUNT(*)->it is used to find the number of values
               -->//(2)COUNT(colum_name)->it is used to find count_(column_name) havinng number of values

-->Write a Query to create a database
create database database_name

-->Write the Query to use database
use database_name

use amazon1--> Here i am using the batabase_name

-->create  table without consraints
create table emp2(eid int primary key,ename varchar(12),gender char(1),slary money,deptid int,doj date,username varchar(12),password varchar(12))

-->inserted the values into the emp2 table
insert into emp2 values(101,'prudhvi','m',50000.0,10,'2002-08-13','cheery',1234567)
insert into emp2 values(102,'sankar','m',55000.0,30,'2001-07-15','ramu',1523467)
insert into emp2 values(103,'raja','m',45000.0,10,'2002-06-13','krish',34567123)
insert into emp2 values(104,'ramya','f',45000.0,20,'2005-06-23','rashi',45417123)
insert into emp2 values(105,'vaniu','f',70000.0,40,'2004-06-03','vaaani',564847123)
insert into emp2 values(106,'ramu','m',12000.0,30,'2007-01-13','krish',34567548)
insert into emp2 values(107,'pavana','f',35000.0,20,'2002-06-13','rakki',54487123)
insert into emp2 values(108,'krishna','m',45000.0,10,'2005-06-13','ramuu',545444444)
insert into emp2 values(109,'vara lakshmi','f',90000.0,30,'2005-11-01','maina',34567123)
insert into emp2 values(110,'chrvitha','f',85000.0,40,'2006-12-25','priya',3559963123)

-->diaply the all employee informaion s
select*from emp2

-->display the 102-empolyee details
select *from emp2 where eid=102

--> display only eis,ename,doj from employe table
select eid,ename,doj from emp2

-->update the salary as a NULL for 104 employee
update emp2 set slary=null where eid=104

-->update the salary as a NULL for 108 employee
update emp2 set slary=null where eid=108

-->display the how many employees haves salary is NULL
select * from emp2 where slary is null

-->display the employee names start letter is 'p' & end letter "i"
select * from emp2 where ename like 'p%' and ename like '%i'

-->display the total salary of the empolyees?
select sum(slary)as "total salay" from emp2

-->display the maxmimum salary of the empolyees?
select max(slary) as"maximum salary"from emp2

-->display the minimum salary of the empolyees?
select min(slary) as"minimum salary"from emp2

-->display the average salary of the empolyees?
select avg(slary) as"average salary" from emp2


