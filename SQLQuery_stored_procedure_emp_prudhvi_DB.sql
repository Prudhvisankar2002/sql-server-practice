-->//------STORED PROCEDURE------//
-->/*It is used to reduce the coding at insert the records.

-->Write a Query to create database?
-->//create database database_name
create database prudhvi            -->create with your database what ever you want..

-->use the database_name
use prudhvi

-->create a employee table?
CREATE TABLE emp(eid INT PRIMARY KEY,ename VARCHAR(50),Salary money,deptno INT)

-->//Here the used stored procedure for inserted the records?

--syntax:-
-->//*create procedure procedure_name(parameter1,parameter2,...)
   -->as begign
   -->write the Query(insert,delete,update)
   -->end;

-->create the stored procedure for insered the records?
create procedure empprocedure(@eid int, @ename varchar(20), @salary  money, @deptno int)
as begin 
insert into emp values(@eid, @ename, @salary ,@deptno)
end

-->insert the records into empolyee table used with stored procedure?
EXEC empprocedure 101,'vishnu',50000.0,10
EXEC empprocedure 102, 'Ravi', 30000.00, 20
EXEC empprocedure 103, 'Suresh', 28000.00, 10
EXEC empprocedure 104, 'Anita', 35000.00, 30
EXEC empprocedure 105, 'Priya', 40000.00, 20
EXEC empprocedure 106, 'Kiran', 22000.00, 30
EXEC empprocedure 107, 'Lakshmi', 32000.00, 10

-->display the employee information?
select *from emp

-->create a stored procedure for delete?
create procedure deletepro (@eid int)
as begin
        delete from emp where eid=@eid
end;

-->delete the 102 emp details from emp table to used store procedure?
exec deletepro 102

-->create a store procedure for update?
create procedure updatepro (@eid int,@ename varchar(20),@salary money,@deptno int)
as begin
         update emp set ename=@ename,salary=@salary,deptno=@deptno where eid=@eid
end;

-->update the 107 emp details from emp table  to use store procedure?
exec updatepro 107,'harshi',40000.0,20 

-->create a store procedure to display any one emp information?
create procedure displaypro (@eid int)
as begin
       select *from emp where eid=@eid
end;

-->display the 105 emp to used store procedure?
exec displaypro 105

-->create a store procedure to display all emp information?
create procedure display 
as begin
   select * from emp
end;

-->create all emp details to used store procedure?
exec display