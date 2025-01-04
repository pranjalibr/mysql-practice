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

alter table employee modify column age int not null;

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

alter table employee modify column age int not null;