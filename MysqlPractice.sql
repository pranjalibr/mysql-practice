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

-- alter table employee
-- drop constraint pk_employee;

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

-- LTER TABLE employee MODIFY age INT NULL;-- 

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
