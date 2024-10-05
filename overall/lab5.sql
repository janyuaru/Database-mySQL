create database lab5_1;
use lab5_1;
drop table functions;
create table functions(
	empNo char(7) not null,
    empName char(30) default null,
    empAddr char(20) default null,
    empEmail char(20) default null,
    empSalary integer default null,
    Primary key (empNo))
    ;
show tables;
select * from functions;
insert into functions(empNo, empName, empAddr, empEmail, empSalary) values
('AA01122','Landi Santos','Denvor','landi@hotmail.com',16000),
('BB02233','Joe Jankins','Seattle','joe@yahoo.com',15000),
('CC03344','Cherry Gordon','Seattle','cherry@hotmail.com',20000),
('CC04455','Colin White','Denvor','colin@gmail.com',25000),
('AA05566','Thomas Johnson','Lynnwood','thomas@yahoo.com',27000),
('BB06677','Candy Kendall','Denvor','candy@gmail.com',18000),
('AA07788','Smith Gordon','Denvor','smith@gmail.com',22000),
('CC08899','Cherry Gordon','Lynnwood','jessy@yahoo.com',17000),
('CC12233','Susan Santos','Denvor','susan@gmail.com',19000),
('AA23344','John Sanders','Lynnwood','john@gmail.com',23000);
select * from functions where empEmail like '%gmail%' order by empName;
select upper(empName) as empName from functions;
select substr(empNo,3) as empNo from functions;
