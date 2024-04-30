--Ejercicio 1

SELECT title FROM film
ORDER by title 
---
SELECT rating FROM film
GROUP by rating
ORDER by rating asc
--
SELECT title, rental_rate, rating FROM film WHERE rating =  "PG-13" or  "PG"
ORDER by rental_rate DESC

SELECT title, rental_rate, rating FROM film WHERE rating =  "PG-13" or  "PG"
ORDER by title 
--
SELECT count(s.city) ,country  FROM city s
JOIN country t on s.country_id= t.country_id 
GROUP by country
--
SELECT count(s.city) ,country  FROM city s
JOIN country t on s.country_id= t.country_id 
GROUP by country
ORDER by count(city) DESC  
--
SELECT count(s.city) ,country  FROM city s
JOIN country t on s.country_id= t.country_id 
GROUP by country
HAVING count(city) > 2
ORDER by count(city) DESC  
---
SELECT min(rental_date) as masVieja, return_date FROM rental where rental_date != return_date
SELECT max(rental_date) as masNueva, return_date FROM rental where rental_date != return_date
--


