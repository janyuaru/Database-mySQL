create database lab4;
use lab4;
#1
create table employees(
	Employee_id char(4),
    First_name varchar(20),
    Last_name varchar(25),
    Email varchar(25),
    Phone_number varchar(20),
    Hire_date date,
    Job_id varchar(10),
    Salary float,
    Commission_pct float,
    Manager_id char(4),
    Department_id int,
    Ratehour int,
    Address varchar(100),
    Birthdate date,
    Primary key (Employee_id))
    ;
show tables;
select * from employees;
select Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate from employees;
#2
insert into employees(Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate)values
('1', 'Natcha', 'Srikun', '1000', '1000', 'Tasala Muangnear', '1975-01-03'),
('3', 'Panita', 'Narak', '1000', '1500', 'Samoon Maunglai', '1974-01-03'),
('4', 'Auschara', 'Banchouy', '1000', '2500', 'Suksai Samosorn', '1972-01-01'),
('5', 'Natee', 'Deeharm', '1000', '1500', 'Silpakorn Tappitak', '1979-05-01'),
('6', 'SomSkul', 'Deeharm', '1000', '1000', 'Tasala Muangnear', '1985-01-01'),
('7', 'Pethan', 'Deeharm', '1000', '1000', 'Samoon Maungthai', '1980-07-01'),
('8', 'Anumnath', 'Khangkrang', '1000', '3000', 'Tasung Maungtong', '1977-06-01');
#1
select * from employees where(Last_name = 'Deeharm');
#3
select * from employees where(First_name = 'Natee' and Last_name = 'Deeharm');
#4
select * from employees where(Address = 'Tasala Muangnear');
select * from employees where Address in('Tasala Muangnear', 'Tasung Maungtong', 'Samoon Maungthai');
select Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate from employees where Address in
('Tasala Muangnear', 'Tasung Maungtong', 'Samoon Maungthai');
#5
select Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate from employees where Ratehour > 2000;
#6
select Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate from employees where Ratehour >= 1000 && Ratehour <= 2000;
#7
select Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate from employees where First_name like 'S%';
#8
select Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate from employees where First_name like '%c%';
#9
select Employee_id, First_name, Last_name, Department_id, Ratehour, Address, Birthdate from employees where Last_name like 'D__h%';