create database Lab3_Employee;
use Lab3_Employee;
# drop database Lab3_Employee;

# Question 1
create table Employee(Person_id char(3),RateHour int,Person_name varchar(100),address varchar(100),BirthDate date);
show tables;

# Question 2
alter table Employee rename Employees;
show tables;
# drop table employees;
describe employees;


# Question 3
alter table Employees drop Person_id;
alter table Employees drop RateHour;
alter table Employees drop Person_name;
alter table Employees drop address;
alter table Employees drop BirthDate;

alter table Employees add Employee_id char(4);
alter table Employees add First_name varchar(20);
alter table Employees add Last_name varchar(25);
alter table Employees add Email varchar(25);
alter table Employees add Phone_number varchar(20);
alter table Employees add hire_date date;
alter table Employees add job_id varchar(10);
alter table Employees add Salary float;
alter table Employees add Commision_pct float;
alter table Employees add Manager_id char(4);
alter table Employees add Department_id int;
alter table Employees add RateHour int;
alter table Employees add Address varchar(100);
alter table Employees add BirthDate date;

describe employees;


# Question 4
insert into Employees(Employee_id,First_name,Last_name,Department_id,RateHour,Address,BirthDate)
values('1','Natcha','Srikun',1000,1000,'Tasala Muangnear','1975-01-03'),
('3','Panita','Naruk',1000,1500,'Samoon Maunglai','1974-01-06'),
('4','Auschara','Bunchouy',1000,2500,'Suksai Samosorn','1972-01-01'),
('5','Natee','Deeharm',1000,1500,'Silpakorn Tappitak','1979-05-01'),
('6','SumSkul','Deeharm',1000,1000,'Tasala Muangnear','1985-01-01'),
('7','Pethan','Deeharm',1000,1000,'Samoon Muangthai','1980-07-01'),
('8','Aumnath','Srikun',1000,3000,'Tasung Maungtong','1977-06-01');

select * from Employees;

# Question 5
update Employees set Department_id = substr(Department_id,1,1);

alter table Employees modify column Department_id char(1);
describe Employees;

# Question 6
update Employees set Department_id = '4' where Employee_id in ('1','3','4');

update Employees set Department_id = '2' where Employee_id in ('5','6','7','8');

select * from Employees;

# Question 7
delete from Employees where First_name = 'Aumnath';

select * from Employees;

# Question 8
select * from Employees where Address = 'Tasala Muangnear';

