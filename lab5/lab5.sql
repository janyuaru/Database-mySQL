create database lab5;
use lab5;
#
create table employee(
	empNo char(7) primary key,
    empName char(30),
    empAddr char(20),
    empEmail char(20),
    empSalary integer);
#
insert into employee(empNo, empName, empAddr, empEmail, empSalary)values
('AA01122', 'Landi Santos', 'Denvor', 'landi@hotmail.com', 16000);
insert into employee(empNo, empName, empAddr, empEmail, empSalary)values
('BB02233', 'Joe Jankins', 'Seattle', 'joe@yahoo.com', 15000),
('CC03344', 'Cherry Gordon', 'Seattle', 'cherry@hotmail.com', 20000),
('CC04455', 'Colin White', 'Denvor', 'colin@gmail.com', 25000),
('AA05566', 'Thomas Johnson', 'Lynnwood', 'thomas@yahoo.com', 27000),
('BB06677', 'Candy Kendall', 'Denvor', 'candy@gmail.com', 18000),
('AA07788', 'Smith Gordon', 'Denvor', 'smith@gmail.com', 22000),
('CC08899', 'Cherry Gordon', 'Lynnwood', 'jessy@yahoo.com', 17000),
('CC12233', 'Susan Santos', 'Denvor', 'susan@gmail.com', 19000),
('AA23344', 'John Sanders', 'Lynnwood', 'john@gmail.com', 23000);
select * from employee;
#1
select * from employee where empEmail like '%gmail%' order by empName desc;
#2
select upper (empName) as 'empName' from employee;
#3
select substring(empNo,3) as 'empNo' from employee;
#4
select empName, length(empName) as 'Name Length' from employee;
#5
select * from employee where empNo like 'AA%' order by empNo asc; 
#select distinct substring(empAddr, 3) from employee;
#6
select distinct concat((substring(empAddr, -3, 1)),(substring(empAddr, -2, 1)),(substring(empAddr, -1, 1))) as empAddr from employee;
#select concat((substring(empAddr,1,3)),"-",substring(empName,1,3)) as 'city-name' from employee;
#7
select concat((substring(empAddr,1,3)),"-",substring(empName,1,3)) as 'city-name' from employee order by empAddr desc, empName asc;
#8
select concat((substring(empNo,1,2)),'-',(substring(empNo,3,7))) from employee;
#9
select distinct(substring_index(empName,' ',-1)) as LastName from employee order by LastName asc;
#10
select empNo,empName,empSalary as empSalary,concat(substring((empSalary/1000),1,2),"K") as empSalary_K from employee;
#11
select avg(empSalary) from employee;
#12
select count(*) from employee;