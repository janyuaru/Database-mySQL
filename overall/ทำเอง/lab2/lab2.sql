use lab1;
select * from employees;
select First_name, Last_name from employees;
select * from employees where First_name = 'Natcha';
select * from employees where Ratehour > 2000;
select distinct Ratehour from employees;
#select * from employees order by Ratehour;
select First_name, ratehour from employees order by ratehour asc;

