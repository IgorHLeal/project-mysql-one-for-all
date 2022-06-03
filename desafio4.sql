SELECT 
  users.user_name AS usuario,
  IF (MAX(YEAR(historics.reproduction_date)) < 2021, 
    'Usario inativo',
    'Usuario ativo') AS total_minutos
FROM SpotifyClone.users AS users
  INNER JOIN SpotifyClone.historics AS historics ON historics.user_id = users.user_id
GROUP BY usuario;
