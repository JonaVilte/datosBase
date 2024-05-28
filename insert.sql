INSERT INTO artists (Name)
VALUES ('Hoizer');

INSERT INTO albums (Title, ArtistId)
VALUES ('Unreal Unearth', '286');

INSERT INTO tracks (Name, AlbumId, MediaTypeId, Milliseconds, UnitPrice)
VALUES 
('Eat Your Young', '350', '1' ,'240000', '0,99'),
('Francesca', '350', '1' , '240000', '0,99'),
('All Things End', '350', '1' , '180000', '0,99');
---------------------------------------
UPDATE tracks 
SET GenreId = 4, Composer = 'Hoizer', Bytes = '350029843'
WHERE AlbumId = 350
------------------------------------------
DELETE FROM tracks 
WHERE AlbumId = 350

DELETE FROM albums 
WHERE AlbumId = 350

DELETE FROM artists 
WHERE Name  = "Hoizer";
--------------------------------------------
