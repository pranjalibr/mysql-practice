-- create database db1;-- 
 use db1;
 create table employee( empid int , name varchar (255) , age int , salary float (10) );
 show tables;
 describe employee;
insert into employee
(empid,name,age,salary)
values(1 , "Pranjali" , 25 , 200000);

select * from employee;

insert into employee
(empid,name,salary)
values(2 , "Rani" , 210000);
select * from employee;

delete from employee where name = "Rani";
select * from employee;

-- alter table employee modify column age int not null;

insert into employee
(empid,name,salary)
values(2 , "Rani" , 210000);

alter table employee 
add constraint c1
check(empid is not null);
describe employee;

insert into employee
(name, age, salary)
values
("sonu" ,20, 10000 );

alter table employee
drop constraint c1;

delete from employee where name= "monu";


select * from employee;

alter table employee
modify column age int;
describe employee;


insert into  employee
(empid, name, age, salary)
values
(3,"lina" ,20, 15000 );


insert into  employee
(empid, name, age, salary)
values
(3,"Rina" ,24, 17000 );

Alter table employee
add constraint c1 unique (empid);

delete from employee where name = "rina";

alter table employee add constraint c1 unique (empid);

insert into  employee
(empid, name, age, salary)
values
(3,"rina" ,20, 15000 );

insert into  employee
(name, age, salary)
values
("rina" ,20, 15000 );

alter table employee
drop index c1;

alter table employee
add constraint pk_employee primary key (empid);

select * from employee;
delete from employee where empid=null;

delete from employee where empid is null;

alter table employee
add constraint pk_employee primary key (empid);

insert into employee
(empid,name,age,salary)
values(2 , "anjali" , 21 , 22000);

alter table employee
drop primary key;

describe employee;

-- alter table employee modify column age int not null;

alter table employee
add primary key (empid);

describe employee;

create table project
( projectid int , project_name varchar (255) , start_date date, incharge int,
primary key (projectid), constraint FK_EmpProject foreign key(incharge) references employee (empid)
);

describe Project;

insert into Project (
 projectid , project_name , start_date,
 incharge 
)
values(1 , "abc" , "2024-03-01"  ,1);
select * from project;

insert into Project (
 projectid , project_name , start_date,
 incharge 
)
values(2 , "abc1" , "2024-04-01"  ,1);

select * from project;

insert into Project (
 projectid , project_name , start_date
)
values(3, "abc2" , "2024-04-01");

select * from employee;

Delete from employee where empid = 1;

alter table employee add constraint a1 check(age>=18);
describe employee;

insert into employee 
(empid , name, age , salary)
values
(4 , "prachi" , 15 , 18000);

insert into employee 
(empid , name,  salary)
values
(4 , "prachi" ,  18000);

select * from employee;

alter table employee drop check a1;
describe employee;


insert into employee 
(empid , name, age ,salary)
values
(5 , "rachi" ,10, 9000);
select * from employee;

alter table employee add constraint a1 check(age>=18);


insert into employee 
(empid , name, age ,salary)
values
(5 , "rachi" ,10, 9000);

select * from employee;
describe employee;

alter table employee
alter salary set default 10000;

insert into employee 
(empid , name, age)
values
(6 , "samay" ,52);
select * from employee;

alter table employee
alter salary drop default;

insert into employee 
(empid , name, age)
values
(7, "nikita" ,36);
select * from employee;

alter table employee
alter salary set default null;

insert into employee 
(empid , name, age)
values
(8, "abita" ,26);
select * from employee;

alter table employee
add department varchar (255);

alter table employee
modify column department  enum('IT' , 'Account' , 'inventory' , 'HR');
describe employee;

alter table employee
rename column department  to dept;

alter table employee
drop column dept;

insert into employee
(empid , name , age , salary)
values
(9 , 'nidhi' , 23 , 25000);
select * from employee;

insert into employee
(empid , name , age )
values
(10 , 'ridhi' , 23 );
select * from employee;

insert into employee
(empid , name , age , salary)
values
(11 , 'radh' , 73 , 23000), (12 , "ram" ,100 , 23200);
select * from employee;

-- select query-- 
select age , name from employee;
select name , age from employee;
select * from employee
where empid = 3;
select * from employee
where age >50;
select * from employee
where age>25 and age <45;
select * from employee
where age>9 or age <50;
select name from employee where age!=23;
select name from employee where age<>23;
select * from employee;
select * from employee where salary between 10000 and 50000;
select * from employee where name like 'p%';
select * from employee where name in ('nidhi' , 'ram' , 'anjali' );
select * from employee;
select distinct age from employee;

-- updatE query
create table book
( bookid int primary key , 
title varchar(255),
price float(7,2),
publisher varchar(255)
);

insert into book
values
(1 , 'JAVA' , 400 , 'BNB' );

select * from book;

UPDATE book
set publisher  = "PNP";

insert into book
values
(2, 'PHP' , 300 , 'BNB' );

insert into book
values
(3 , 'C++' , 500 , 'TATA' );

insert into book
(BOOKID , TITLE , PRICE)
values
(4 , 'RUBY' , 400 );

UPDATE BOOK SET PUBLISHER = 'DRP'
WHERE PUBLISHER IS NULL;

UPDATE BOOK 
SET PRICE =500
WHERE TITLE = 'PHP';

use db1;
show tables;
select * from project; 
select * from book;
delete from book where publisher = "TATA";
select * from employee order by salary;
select * from employee order by salary,age;
select * from employee;
select min(salary) from employee;
select max(salary) from employee;
select count(*) from employee;
select count(age) from employee;
select count(name) from employee;
select count(*) from employee;
select * from employee;
select count(*) from employee where age>30;
select count(salary) from employee where age>30;
select * from employee;
select sum(salary) from employee where name like '%li';
select avg(salary) from employee where name like '%li';
select * from employee where name like 'P%';
select * from employee where name like 'P%a%';
select * from employee where name like 'P_a%';
select * from employee where name like '%i';
select * from employee where name like '%dh%';
select * from employee where name like '_%a';
select * from employee where name like '_a%';


create database db2;
use db2;
create table student(
rollno int primary key,
name varchar (255),
email varchar(255),
mobile varchar(15)
);

create table course
( couseid int primary key ,
course_name varchar(255),
duration_in_months int);

select * from student;

create table batch(
batchid int primary key,
couseid int,
startdate date,
time time,
days varchar(20),                      
size int,
CONSTRAINT FK_course_batch FOREIGN KEY (couseid) REFERENCES course (couseid ));

create table Student_batch(
id int primary key,  
rollno int ,
batchid int,
joindate date,
foreign key (rollno) references student (rollno),
foreign key (batchid) references batch(batchid)
);

insert into student
values
(1, 'dilip', 'dilip_123@gmail.com','8899774455'),
(2, 'anand', 'anand_123@gmail.com','9499774455'),
(3, 'nikita', 'nijkita_123@gmail.com','9392774455'),
(4, 'rajesh', 'rajesh_123@gmail.com','8555774455'),
(5, 'arun', 'arun_123@gmail.com','8112174455'),
(6, 'jai', 'jai_123@gmail.com','8822774455'),
(7, 'aditi', 'aditi_123@gmail.com','8455778844'),
(8, 'manish', 'manish_123@gmail.com','9764515785');


insert into course
values
(1,'c',3 ),
(2,'c++',3 ),
(3,'Python',3 ),
(4,'Java',4 ),
(5,'PHP',2 ),
(6,'HTML',1 ),
(7,'DSA',2 );

insert into batch
values
(1,1, '2023-5-10', '09:00:00', 'MWF',100),
(2,2, '2023-10-10', '10:00:00', 'TTS',200),
(3,1, '2023-02-10', '11:00:00', 'MWF',300),
(4,3, '2023-01-10', '12:00:00', 'MWF',400);

insert into  Student_batch
values
(1,1,1, '2023-5-10'),
(2,2,1, '2023-5-10'),
(3,3,1, '2023-5-10'),
(4,1,2, '2023-10-2'),
(5,2,3, '2024-01-21'),
(6,4,3, '2024-01-21'),
(7,5,3, '2024-01-22');

select name , email from student ;
select name , email from student 
where rollno in
(
select rollno from student_batch where batchid=1
);
select * from Student_batch;
use db1;
alter table employee add department varchar(255);

select * from employee;

 update employee set department = 'account'
 where empid =1;
 
 update employee set department = 'development'
 where empid =2;
 
update employee set department = 'development'
 where empid =3;
 
 update employee set department = 'development'
 where empid =4;
 
 update employee set department = 'development'
 where empid =5;
 update employee set department = 'operations'
 where empid =6;
 
 update employee set department = 'operations'
 where empid =7;
 
 update employee set department = 'development'
 where empid =8;
 
 update employee set department = 'account'
 where empid =9;
 
 update employee set department = 'development'
 where empid =10;
 
 update employee set department = 'account'
 where empid =11;
 
 update employee set department = 'development'
 where empid =12;

select * from employee;

select * from employee e1 where salary >
(
	select avg(salary) 
    from employee e2
    where e1.department=e2.department
);

