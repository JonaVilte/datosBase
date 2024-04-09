--- Ejercicio 1
select first_name, last_name, salary from employees where salary < 6000

--- Ejercicio 2
select e.first_name, e.last_name, department_name, city, state_province  from employees e 
JOIN departments d ON e.department_id = d.department_id 
JOIN locations t on d.location_id = t.location_id

--- Ejercicio 3
select e.first_name as manager, m.first_name as empleado from employees e 
JOIN employees m on e.employee_id = m.manager_id 
ORDER by e.manager_id

--- Ejercicio 4 
select e.first_name, e.last_name,  a.first_name from employees e
JOIN dependents a on e.employee_id = a.employee_id
ORDER by a.first_name asc

--- Ejercicio 5
select e.first_name, job_title, max_salary  from employees e
JOIN jobs a on e.job_id = a.job_id
ORDER by max_salary DESC

--- Ejercicio 6 
select e.first_name, e.last_name, a.department_name, e.salary from employees e
JOIN departments a on e.department_id = a.department_id
ORDER by e.last_name , a.department_name 

--- Ejercicio 7
select e.first_name, state_province from employees e
JOIN departments d ON e.department_id = d.department_id 
JOIN locations t on d.location_id = t.location_id
ORDER by state_province asc

--- Ejercicio 8
select e.first_name, e.last_name, a.country_name, r.region_name from employees e
JOIN departments d ON e.department_id = d.department_id 
JOIN locations t on d.location_id = t.location_id
JOIN countries a on t.country_id = a.country_id
JOIN regions r on a.region_id = r.region_id
ORDER by e.last_name

--- Ejercicio 9
select a.country_name, r.region_name  from employees e 
JOIN departments d ON e.department_id = d.department_id 
JOIN locations t on d.location_id = t.location_id
JOIN countries a on t.country_id = a.country_id
JOIN regions r on a.region_id = r.region_id
ORDER by country_name DESC

--- Ejercicio 10
select e.first_name, job_title, min_salary  from employees e 
JOIN jobs d ON e.job_id = d.job_id 
ORDER by min_salary DESC
