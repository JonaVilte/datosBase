--Ejercicio 1
SELECT department_name FROM departments
ORDER by department_name

--Ejercicio 2
SELECT salary FROM employees
GROUP by salary
ORDER by salary DESC

--Ejercicio 3
SELECT e.manager_id, job_title, min_salary, max_salary FROM employees e 
JOIN jobs t on e.job_id = t.job_id
where job_title like "%Manager"
ORDER by max_salary DESC, min_salary DESC

--Ejercicio 4
SELECT a.country_name, region_name FROM countries a
JOIN regions p on a.region_id = p.region_id
ORDER by region_name

--Ejercicio 5
SELECT first_name, last_name,department_name,salary FROM employees a 
JOIN departments s on a.department_id = s.department_id
WHERE salary > 9000 and salary < 17000
ORDER by salary DESC

--Ejercicio 6
SELECT count(a.country_name), region_name FROM countries a
JOIN regions p on a.region_id = p.region_id
GROUP by region_name
HAVING count(a.country_name) > 5


--Ejercicio 7
SELECT min(hire_date)as fechaVieja , max(hire_date) as fechaActual FROM employees   

--Ejercicio 8
SELECT t.first_name, t.last_name, count(relationship) FROM employees t
JOIN dependents a on t.employee_id = a.employee_id   
GROUP by t.last_name
ORDER by count(relationship) DESC
LIMIT 5


--Ejercicio 9
SELECT first_name, last_name, salary FROM employees 
GROUP by salary
ORDER by salary DESC
LIMIT 1 OFFSET 2

--Ejercicio 10///////////////////////////////////////////////
--//////////////////////////////////////////////////////////


