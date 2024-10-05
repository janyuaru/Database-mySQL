use labjoin;
show tables;
select * from departments;
select * from employees;
select * from employees_backup;
select * from persons;
select * from projects;
select * from works;

#2 
select first_name, last_name, department_name from employees 
join departments on employees.department_id = departments.department_id;

#3
insert into departments(department_id,department_name) values(5,'XXXY');

#4
select first_name, last_name from employees 
left join departments on employees.department_id = departments.department_id 
where departments.department_id is null;

SELECT e.First_name, e.Last_name
FROM employees e
LEFT JOIN departments d ON e.Department_id = d.DEPARTMENT_ID
WHERE d.DEPARTMENT_ID IS NULL;


#5
select department_name from departments
left join employees on employees.department_id = departments.department_id
where employees.department_id is null;

#6
select project_id, person_name from persons join projects on persons.person_id = projects.manager_id;
#because person_id & manager_id is the same
select * from persons;
select * from projects;

#7
select department_name, first_name, last_name from employees 
right join departments on employees.department_id = departments.department_id;

insert into departments(department_id,department_name) values(5,'XXXY');