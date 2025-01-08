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
