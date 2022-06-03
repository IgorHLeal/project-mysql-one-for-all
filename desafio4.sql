SELECT 
  users.user_name AS usuario,
  IF(MAX(YEAR(historics.reproduction_date)) = 2021, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM SpotifyClone.users AS users
  INNER JOIN SpotifyClone.historics AS historics ON  users.user_id = historics.user_id
GROUP BY users.user_name
ORDER BY users.user_name;
