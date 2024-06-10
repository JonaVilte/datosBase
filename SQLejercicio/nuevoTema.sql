
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

-----------------------
