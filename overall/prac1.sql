create database prac1;
use prac1;
create table Employee (
 Person_id char(3),
 RateHour int,
 Person_name varchar(100),
 address varchar(100),
 BirthDate date)
 ;
alter table Employee Rename Employees;
show tables;