SELECT 
  tracks.title AS nome_musica,
  CASE
    WHEN title LIKE '%Streets' THEN REPLACE(title, 'Streets', 'Code Review')
    WHEN title LIKE '%Her Own' THEN REPLACE(title, 'Her Own', 'Trybe')
    WHEN title LIKE '%Inner Fire' THEN REPLACE(title, 'Inner Fire', 'Project')
    WHEN title LIKE '%Silly' THEN REPLACE(title, 'Silly', 'Nice')
    WHEN title LIKE '%Circus' THEN REPLACE(title, 'Circus', 'Pull Request')
    ELSE title
  END AS novo_nome
FROM SpotifyClone.tracks
WHERE
  title LIKE '%Streets' OR
  title LIKE '%Her Own' OR
  title LIKE '%Inner Fire' OR
  title LIKE '%Silly' OR
  title LIKE '%Circus'
ORDER BY title ASC;


-- Referências:
-- REPLACE: https://www.w3schools.com/sql/func_sqlserver_replace.asp
