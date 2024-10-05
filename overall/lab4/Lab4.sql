create database lab4;
use lab4;
create table employees(
	Employee_id char(4) not null,
    First_name varchar(20) default null,
    Last_name varchar(25) default null,
    Email varchar(25) default null,
    Phone_number varchar(20) default null,
    Hire_date date default null,
    Job_id varchar(10) default null,
    Salary float default null,
    Commission_pct float default null,
    Manager_id char(4) default null,
    Department_id int default null,
    Ratehour int default null,
    Address varchar(100) default null,
    Birthdate date default null,
    Primary key (Employee_id))
    ;
show tables;
insert into employees(Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate)values
('1', 'Natcha', 'Srikun', '1000', '1000', 'Tasala Muangnear', '1975-01-03');
select * from employees;
select Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate from employees;
insert into employees (Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate)values
('3', 'Panita', 'Narak', '1000', '1500', 'Samoon Maunglai', '1974-01-03');
insert into employees (Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate)values
('4', 'Auschara', 'Banchouy', '1000', '2500', 'Suksai Samosorn', '1972-01-01');
insert into employees (Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate)values
('5', 'Natee', 'Deeharm', '1000', '1500', 'Silpakorn Tappitak', '1979-05-01');
insert into employees (Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate)values
('6', 'SomSkul', 'Deeharm', '1000', '1000', 'Tasala Muangnear', '1985-01-01');
insert into employees (Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate)values
('7', 'Pethan', 'Deeharm', '1000', '1000', 'Samoon Maungthai', '1980-07-01');
insert into employees (Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate)values
('8', 'Anumnath', 'Khangkrang', '1000', '3000', 'Tasung Maungtong', '1977-06-01');
select * from employees where(Last_name = 'Deeharm');
select * from employees where(First_name = 'Natee' and Last_name = 'Deeharm');
select * from employees where(Address = 'Tasala Muangnear');
#select * from employees where Address in('Tasala Muangnear', 'Tasung Maungtong', 'Samoon Maungthai');
select Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate from employees where Address in
('Tasala Muangnear', 'Tasung Maungtong', 'Samoon Maungthai');
select Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate from employees where Ratehour > 2000;
select Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate from employees where Ratehour >= 1000 && Ratehour <= 2000;
select Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate from employees where First_name like 'S%';
select Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate from employees where First_name like '%c%';
select Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate from employees where Last_name like 'D__h%';