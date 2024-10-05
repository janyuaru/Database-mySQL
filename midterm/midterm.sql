
create database Mid650710734v2;
use Mid650710734v2;

create table departments(
department_id int(11) unsigned not null,
department_name varchar(45) default null,
primary key(department_id));

create table employees(
employee_id int(11) unsigned not null,
first_name varchar(20) default null,
last_name varchar(25) not null,
email varchar(25) not null,
phone_number varchar(20) default null,
hire_date date not null,
job_id varchar(10) not null,
salary decimal(8,2) not null,
manager_name varchar(60) default null,
department_id int(11) unsigned default null,
primary key(employee_id),
FOREIGN Key(department_id) REFERENCES departments(department_id));

desc employees; 

#2
insert into departments(department_id, department_name) values
(60,'IT'),(100,'Finance');

insert into employees(employee_id, first_name,last_name,email,phone_number,
hire_date,job_id,salary,manager_name,department_id) values
(103,'Alexander','Hunold','AHUNOLD','590.423.4567','1990-01-03','Programmer',9000.00,'Lex De Haan',60),
(113,'Luis','Popp','LPOPP','515.124.4567','1999-12-04','Accountant',6900.00,'Nancy Greenberg',100);
select*from employees;

#3
insert into departments(department_id, department_name) values
(200,'Head Office');

insert into employees(employee_id, first_name,last_name,email,phone_number,
hire_date,job_id,salary,department_id) values
(100,'Steven','King','SKING','515.123.4567','1987-06-17','President',24000.00,200);
select*from employees;

#4
delete from employees where phone_number like '590%' and first_name = 'Alexander';
select*from employees;

