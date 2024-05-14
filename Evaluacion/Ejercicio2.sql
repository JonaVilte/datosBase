SELECT t.name, car_make, car_model, plate_number  FROM person t 
JOIN drivers_license q on t.license_id = q.id
WHERE gender = "male" and age > 70
ORDER by name