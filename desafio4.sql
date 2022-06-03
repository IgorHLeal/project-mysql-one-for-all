SELECT 
  users.user_name AS 'usuario',
  IF(YEAR(MAX(historics.reproduction_date)) = 2021, 'Usario ativo', 'Usuario inativo') AS 'condicao_usuario'
FROM SpotifyClone.users AS users
  INNER JOIN SpotifyClone.historics AS historics ON  users.user_id = historics.user_id
GROUP BY users.user_id
ORDER BY usuario;
