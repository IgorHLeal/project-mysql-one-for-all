SELECT
  COUNT(DISTINCT tracks.track_id) AS 'cancoes',
  COUNT(DISTINCT artists.artist_id) AS 'artistas',
  COUNT(DISTINCT albums.album_id) AS 'albuns'
FROM SpotifyClone.artists as artists
INNER JOIN SpotifyClone.tracks AS tracks
INNER JOIN SpotifyClone.albums AS albums;
