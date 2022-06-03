SELECT 
  tracks.title AS cancao,
  COUNT(*) AS reproducoes
FROM SpotifyClone.tracks AS tracks
INNER JOIN SpotifyClone.historics AS historics ON historics.track_id = tracks.track_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
