SELECT 
  COUNT(historics.track_id) AS `quantidade_musicas_no_historico`
FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.historics AS historics ON users.user_id = historics.user_id 
WHERE users.user_name = 'Bill';
