
UPDATE employees SET Phone =  Fax , Fax = Phone 
--------------------
SELECT t.GenreId, t.name FROM genres t 
JOIN tracks s on t.GenreId = s.GenreId
GROUP by t.name

DELETE FROM genres WHERE GenreId in 
(
	SELECT count(s.TrackId) FROM genres t 
	JOIN tracks s on t.GenreId = s.GenreId
	GROUP by t.name
	HAVING count(s.TrackId) < 50
)

-------------------------------------------------------------------------
--Datos a tener en cuenta.
----------------------------------------------------
-----------Falta agregar el nombre de los manager
SELECT first_name, manager_id ,salary, department_name, country_name FROM employees a
JOIN departments d on a.department_id=d.department_id
JOIN locations f on d.location_id=f.location_id
JOIN countries e on f.country_id=e.country_id
ORDER by salary


-----------------------------------------------------------


UPDATE jobs SET min_salary = min_salary*0.75, max_salary = max_salary*0.75
---Remplazar un valor por su 25%de ese numero

----------------------------------------------
DELETE FROM employees WHERE salary in (
SELECT salary FROM employees f
JOIN jobs d on f.job_id = d.job_id
WHERE salary > max_salary 
)