use amazon1

create table student1(sid int primary key,sname varchar(10),s1 int ,s2 int ,s3 int ,total int,average float)

select *from student1

create trigger tr_totavg on student1
after insert
as begin
       update student1 set total=(inserted.s1+inserted.s2+inserted.s3),
              average=(inserted.s1+inserted.s2+inserted.s3)/3 
			  from inserted where student1.sid=inserted.sid
end;

insert into student1 (sid,sname,s1,s2,s3) values (101,'prudhvi',90,95,85)
insert into student1 (sid,sname,s1,s2,s3) values (102,'ramya',95,95,75)
insert into student1 (sid,sname,s1,s2,s3) values (103,'sankar',97,85,65)

select * from student1



create table emp1(eid int primary key,ename varchar(10) not null,
              gender char(1) check (gender in ('m','f','o')),dob date,dno int ,
			  salary money,annual_salary money)

create trigger tr_annualsal on emp1
after insert
as begin
    update emp1 set annual_salary=inserted.salary*12 from inserted where emp1.eid=inserted.eid
end;

insert into emp1 (eid,ename,gender,dob,dno,salary) values (101,'prudhvi','m','2002-08-13',10,60000.0)
insert into emp1 (eid,ename,gender,dob,dno,salary) values (102,'sankar','m','2005-06-11',30,50000.0)
insert into emp1 (eid,ename,gender,dob,dno,salary) values (103,'vani','f','2003-08-13',20,85000.0)
insert into emp1 (eid,ename,gender,dob,dno,salary) values (104,'ramya','f','2001-02-02',10,55000.0)
insert into emp1 (eid,ename,gender,dob,dno,salary) values (105,'ravi','m','2000-01-25',40,99000.0)

select *from emp1

create table leaves(eid int references emp1(eid),leave_days int,monthsalary money)

CREATE TRIGGER tr_calMonthly
ON Leaves
AFTER INSERT
AS
BEGIN
    UPDATE l
    SET l.MonthSalary = e.Salary - ((e.Salary / 30) * i.Leave_days)
    FROM Leaves l
    JOIN inserted i ON l.eid = i.eid
    JOIN Emp1 e ON e.eid = i.eid;
END;

insert into leaves (eid,leave_days) values (101,3)
insert into leaves (eid,leave_days) values (102,5)
insert into leaves (eid,leave_days) values (103,5)
insert into leaves (eid,leave_days) values (104,3)


delete  from leaves

select *from leaves  select*from emp1



create table stock (mid int primary key,mname varchar(10),cost money,availability int)

insert into stock values (111,'dolo',100.0,100)
insert into stock values (112,'saridon',80.0,80)
insert into stock values (113,'calpol',60.0,60)
insert into stock values (114,'corcin',200.0,90)
insert into stock values (115,'corex',150.0,115)

select *from stock

create table orders(or_id int primary key ,mid int references stock(mid),qty int,billamt money)

insert into orders (or_id,mid,qty) values (101,111,20)
insert into orders (or_id,mid,qty) values (102,112,50)
insert into orders (or_id,mid,qty) values (103,113,40)

select *from orders  select *from stock