SELECT 
  artists.artist_name AS artista,
  albums.album AS album
FROM SpotifyClone.albums AS albums
INNER JOIN SpotifyClone.artists AS artists ON albums.artist_id = artists.artist_id 
WHERE artists.artist_id = 1
ORDER BY album;
