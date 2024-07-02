----1
SELECT job_title as nombreDeTrabajo,count(first_name) as cantidadDeEmpleados ,sum(salary) as salarioTotal FROM employees a
JOIN jobs s on a.job_id=s.job_id
GROUP by job_title
ORDER by count(first_name)

----2
SELECT first_name, last_name, job_title, department_name,city   FROM employees a
JOIN jobs d on a.job_id=d.job_id
JOIN departments s on a.department_id=s.department_id
JOIN locations f on s.location_id=f.location_id

----3
UPDATE employees SET salary = salary+(salary*0.55) WHERE salary < 7500 and department_id = 6 or department_id = 10

----4
DELETE FROM employees WHERE department_id = 2
DELETE FROM departments WHERE location_id = 1800
DELETE FROM locations WHERE country_id = 'CA'
DELETE FROM countries WHERE country_id = 'CA'

----5
UPDATE employees SET phone_number = '333.444.555' WHERE phone_number is NULL

----6
SELECT location_id FROM locations WHERE street_address = '2004 Charade Rd'
INSERT INTO departments (department_name, location_id)
VALUES('consultants','1700')

INSERT INTO jobs (job_title, min_salary, max_salary)
VALUES('consultant', '15000', '20000')

INSERT INTO employees(first_name,last_name,email,phone_number,hire_date, job_id,salary,manager_id,department_id)
VALUES
('Raul','Lopez','riopez@gmail.com','334.445.556','2024-07-01','20','5000','105','12'),
('Andres','Gonzales','agonzalez@gmail.com','334.445.556','2024-07-01','20','6000','106','12'),
('Laura','Fernandez','lfernandez@gmail.com','334.445.556','2024-07-01','20','7500','107','12');