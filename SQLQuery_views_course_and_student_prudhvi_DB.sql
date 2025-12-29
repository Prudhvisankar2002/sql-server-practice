-->///----VIEWS----///

-->*it is logical based onemore table or views.
-->*A view contains no data by itself.

--> we can create the view by using 2-commands
-->1.create   2.select

-->Write a Query to create database?
-->//create database database_name
create database prudhvi            -->create with your database what ever you want..

-->use the database_name
use prudhvi

-->Write a Query to create course tale?
CREATE TABLE Course1 (c_id INT PRIMARY KEY,c_name VARCHAR(50) NOT NULL,c_fees money NOT NULL)

-->Write a Query to insert the values into course table?
INSERT INTO Course1 (c_id, c_name, c_fees) VALUES
(201, 'Python Full Stack', 35000),
(202, 'Java Full Stack', 38000),
(203, 'Data Science', 50000),
(204, 'Artificial Intelligence', 60000),
(205, 'Web Development', 28000),
(206, 'SQL & Database', 22000)

-->writw a query to display the all course information?
select *from course1

-->Write a Query to create student table ?
CREATE TABLE Student1 (s_id INT PRIMARY KEY,s_name VARCHAR(50) NOT NULL,
                       gender CHAR(1) CHECK (gender IN ('m','f','o')),
                       s1 INT CHECK (s1 BETWEEN 0 AND 100),
                       s2 INT CHECK (s2 BETWEEN 0 AND 100),
                       s3 INT CHECK (s3 BETWEEN 0 AND 100),
                       c_id INT REFERENCES Course1 (c_id),
                       phone VARCHAR(15),
                       email VARCHAR(30))


-->Write a Query to insert the values into the student table?

INSERT INTO Student1 (s_id, s_name, gender, s1, s2, s3, c_id, phone, email) VALUES
(1001, 'Ramesh Kumar', 'M', 78, 82, 75, 201, '9876543210', 'ramesh.k@gmail.com'),
(1002, 'Sowmya Reddy', 'F', 88, 91, 90, 203, '9123456789', 'sowmya.r@gmail.com'),
(1003, 'Vijay Singh', 'M', 65, 70, 68, 202, '9988776655', 'vijay.s@gmail.com'),
(1004, 'Anitha Sharma', 'F', 92, 95, 94, 204, '9001122334', 'anitha.s@gmail.com'),
(1005, 'Rahul Verma', 'M', 72, 75, 70, 201, '8899776655', 'rahul.v@gmail.com'),
(1006, 'Priya Patel', 'F', 85, 80, 88, 205, '9012345678', 'priya.p@gmail.com'),
(1007, 'Suresh Naidu', 'M', 60, 65, 63, 206, '9345678123', 'suresh.n@gmail.com'),
(1008, 'Kavya N', 'F', 90, 92, 94, 203, '9555667788', 'kavya.n@gmail.com'),
(1009, 'Arjun Mehta', 'M', 76, 79, 81, 202, '9887766554', 'arjun.m@gmail.com'),
(1010, 'Divya Rao', 'F', 89, 87, 90, 201, '9776655443', 'divya.r@gmail.com')

-->Writw a Query to display the all student information?
select*from student1

-->write a query to create view for sid,sname,phone,email from student tble
create view studentview as select s_id,s_name,phone,email from student1

-->write a query to create view for cid,cname?
create view courseview as select c_id,c_name from course1

-->write a query to display the courseview information?
select * from courseview

-->write a query to display the studentview information?
select * from studentview

-->write a query to insert the values into the student view?
insert into studentview values(1009,'prudhvi','6547893546','mathina@gmail.com')

-->write a query to create a view for cid,cname,sid,sname,gender,cfees?
create view cs_view as 
select c.c_id,c.c_name,s.s_id,s.s_name,s.gender,c.c_fees from course1 c inner join student1 s on s.c_id=c.c_id

-->display the cs_view data?
select *from cs_view

