--------1




--------2
SELECT first_name, last_name, department_name, country_name FROM employees e
JOIN departments g on e.department_id=g.department_id
JOIN locations s on g.location_id=s.location_id
JOIN countries f on s.country_id=f.country_id
WHERE f.country_id = 'US'
----Falta listar
--------3
SELECT employee_id,first_name,last_name,phone_number, email, department_id FROM employees WHERE phone_number is null
UPDATE employees SET phone_number = '111.222.3344' WHERE phone_number is null
---Falta listar
--------4
UPDATE employees SET salary = salary+(salary*0.80) WHERE salary <= 8000 or job_id = 9 or 13

--------5
SELECT location_id FROM locations WHERE city = 'Toronto'---Me olvide como integrarlo
INSERT INTO departments (department_name, location_id)
VALUES('development','1800')

INSERT INTO employees(first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
VALUES
('Matias','Gonzales','mgonzales@gmail.com','1.231.231.122','2024-06-25','9','5000','100','12'),
('Laura','Nievas','lnievas@gmail.com','1.231.231.122','2024-06-25','9','5000','100','12'),
('Federico','Lopez','mgonzales@gmail.com','1.231.231.122','2024-06-25','9','5000','100','12');
--------6
DELETE FROM countries WHERE country_id = 'DE'

--------7