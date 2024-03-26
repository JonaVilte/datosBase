--- Ejercicio 1
SELECT Title, ArtistId, Milliseconds FROM albums, tracks 

--- Ejercicio 2
SELECT FirstName, LastName, Address, City  FROM customers 

--- Ejercicio 3
SELECT  name, Milliseconds FROM  tracks WHERE Composer is null and Milliseconds > 2900000

--- Ejercicio 4
select lastname, FirstName, Company from customers where not company is null

--- Ejercicio 5
SELECT DISTINCT BillingCity, BillingState from invoices  where not BillingState is null
ORDER by  BillingCity DESC


--- Ejercicio 6
SELECT Title from albums where Title like "%of%"
ORDER by Title 

--- Ejercicio 7
SELECT t.name, a.name  from tracks t
join genres a ON t.GenreId = a.GenreId

--- Ejercicio 8
SELECT name, Title from tracks a
join albums t on a.AlbumId = t.AlbumId
ORDER by name DESC