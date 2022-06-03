SELECT 
  users.user_name AS usuario,
  COUNT(*) AS qtde_musicas_ouvidas,
  ROUND(SUM(tracks.duration_seconds) / 60, 2) AS total_minutos
FROM SpotifyClone.historics AS historics
INNER JOIN SpotifyClone.users AS users ON users.user_id = historics.user_id
INNER JOIN SpotifyClone.tracks AS tracks ON tracks.track_id = historics.track_id
GROUP BY users.user_name;
