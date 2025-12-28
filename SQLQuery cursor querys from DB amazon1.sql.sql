create database database_name

use database_name


--> write a Query to create a empolyee table.

create table emp1(eid int primary key,ename varchar(10) not null,
              gender char(1) check (gender in ('m','f','o')),dob date,dno int ,
			  salary money,annual_salary money)

--> write a Query to insert the values into the employee table.

insert into emp1 (eid,ename,gender,dob,dno,salary) values (101,'prudhvi','m','2002-08-13',10,60000.0)
insert into emp1 (eid,ename,gender,dob,dno,salary) values (102,'sankar','m','2005-06-11',30,50000.0)
insert into emp1 (eid,ename,gender,dob,dno,salary) values (103,'vani','f','2003-08-13',20,85000.0)
insert into emp1 (eid,ename,gender,dob,dno,salary) values (104,'ramya','f','2001-02-02',10,55000.0)
insert into emp1 (eid,ename,gender,dob,dno,salary) values (105,'ravi','m','2000-01-25',40,99000.0)

-->Write a Query display the all employees information.

select *from emp1

-->Write aquery to create a cursor and follow the steps & how to implementation the cursor.
 
 -->most used static is better for cursor in Query...
declare e1 cursor static for select*from emp1--> here static is ued for fetch records only in any directions 

declare e1 cursor  for select*from emp1--> here  without static is ued means fetch records only in forward directions
                                             
open e1 -->Query is uesed for open the cursor

fetch first from e1-->it  is used to fetch only first row record from cursor

fetch last from e1-->it  is used to fetch only last row record from cursor

fetch prior from e1-->it  is used to fetch only previous row record from cursor

fetch absolute 3 from e1-->it  is used to fetch only exact 'N'th(specifiedied record) row record from cursor

fetch next from e1-->it  is used to fetch only next row record from cursor

fetch relative -2 from e1-->it  is used to fetch only data in (cremental way & decremental way) row record from cursor

close e1-->it is used to close the cursor

deallocate e1-->it is used for delete the user 
