SELECT 
  tracks.title AS nome,
  COUNT(historics.track_id) AS reproducoes
FROM SpotifyClone.users AS users
  INNER JOIN SpotifyClone.historics AS historics ON users.user_id = historics.user_id
  INNER JOIN SpotifyClone.tracks AS tracks ON tracks.track_id = historics.track_id
  INNER JOIN SpotifyClone.plans AS plans ON users.plan_id = plans.plan_id
WHERE plans.plan IN('free', 'personal') 
GROUP BY tracks.title
ORDER BY nome;
