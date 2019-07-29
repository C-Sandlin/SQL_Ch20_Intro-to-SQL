-- SELECT * from Genre

-- INSERT INTO Artist(ArtistName, YearEstablished) VALUES('Red Hot Chili Peppers', 1994)

-- INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Californication', 2001, 2345, 'Def Jam', 28,  2)
-- INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Under The Bridge', 2004, 2300, 'Def Jam', 28,  2)

-- DELETE from Album WHERE Id BETWEEN 24 and 26

-- INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Californication', 2041, 2001, 2, 28, 23)
-- INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Can''t Stop', 241, 2004, 2, 28, 27)
-- INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Zephyr', 301, 2004, 2, 28, 27)

-- 3.) Join the song title and album title

SELECT a.Title, s.Title 
FROM Album a 
JOIN Song s 
ON s.AlbumId = a.ID;


-- 4.) Join artist, album name, and song title

SELECT r.ArtistName, a.Title, s.Title
FROM Album a 
JOIN Song s 
ON s.AlbumID = a.Id
JOIN Artist r 
ON r.Id = a.ArtistId


-- 5.) now filter that for the RHCP

SELECT r.ArtistName, a.Title, s.Title
FROM Album a 
JOIN Song s 
ON s.AlbumID = a.Id
JOIN Artist r 
ON r.Id = a.ArtistId
WHERE ArtistName = 'Red Hot Chili Peppers';


-- 6.) Group songs by album and give the count songs on each album

SELECT Album.Title, COUNT(Song.Id)
AS Num_songs
FROM Album
JOIN Song
ON Album.Id = Song.AlbumId
GROUP BY Album.Title



-- 7.) Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT Artist.ArtistName, COUNT(Song.Title)
AS Num_songs
FROM Artist
JOIN Song
ON Artist.Id = Song.ArtistId
GROUP BY Artist.ArtistName


-- 8.) Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT Genre.Label, COUNT(Song.Title)
AS Num_song_per_genre
FROM Genre
JOIN Song
ON Genre.Id = Song.GenreId
GROUP BY Genre.Label


-- 9.) Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

SELECT Album.Title, Album.AlbumLength
AS Duration
FROM Album
WHERE Album.AlbumLength = (SELECT MAX(Album.AlbumLength) FROM Album)





-- 10.) Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.


-- 11.) Modify the previous query to also display the title of the album.


