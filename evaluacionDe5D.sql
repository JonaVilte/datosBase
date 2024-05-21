-- Ejercicio 1
SELECT type, city FROM crime_scene_report 
WHERE city like "SQL City%"
GROUP by type
ORDER by type ASC

-- Ejercicio 2
SELECT t.name, a.car_make, a.car_model, a.plate_number, a.gender, a.age  FROM person t
JOIN drivers_license a on t.license_id = a.id
WHERE a.gender = "female" and age < 40

-- Ejercicio 3 
SELECT a.name, t.name FROM person a
LEFT JOIN get_fit_now_member t on a.id = t.person_id
WHERE t.person_id is null

-- Ejercicio 4 
SELECT name, address_number, address_street_name FROM person 
WHERE address_street_name = "Franklin Ave"
ORDER by address_number
LIMIT 1 OFFSET 2

-- Ejercicio 5 
SELECT gender, min(age) as edadMinima, max(age) as edadMaxima, avg(age) as edadPromedio FROM person q
JOIN drivers_license a on q.license_id = a.id
WHERE gender = "male"

-- Ejercicio 6 
SELECT count(car_make) as cantidadDeAuntos, car_make FROM drivers_license
GROUP by car_make
HAVING count(car_make) > 100
ORDER by count(car_make) DESC

-- Ejercicio 7 
SELECT s.name, ssn, d.id, membership_status, membership_start_date FROM person s
JOIN get_fit_now_member d on s.id = d.person_id
WHERE membership_start_date like "2018%"
ORDER BY membership_status, ssn


-- Ejercicio 8 
SELECT count(person_id), d.event_name,annual_income FROM facebook_event_checkin d
JOIN person g on g.id = d.person_id
JOIN income a on g.ssn = a.ssn
WHERE annual_income > 35000
GROUP by d.event_name
ORDER by count(person_id) DESC
LIMIT 5