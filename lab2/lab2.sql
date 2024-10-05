#1
use lab1;
select * from employees;

#2
select First_name, Last_name from employees;

#3
select * from employees where First_name = 'Natcha';

#4
select * from employees where Ratehour > 2000;

#5
select distinct Ratehour from employees;
#distinct แสดงข้อมูลที่ไม่ซ้ำกัน
#select * from employees order by Ratehour;

#6
select First_name, ratehour from employees order by ratehour asc;

