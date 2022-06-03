SELECT 
  artists.artist_name AS artista,
  albums.album AS album,
  COUNT(artists.artist_id) AS seguidores
FROM SpotifyClone.albums AS albums
INNER JOIN SpotifyClone.artists AS artists ON albums.artist_id = artists.artist_id 
INNER JOIN SpotifyClone.following_artists AS following ON following.artist_id = artists.artist_id
GROUP BY albums.album_id
ORDER BY seguidores DESC, artista, album;
