SELECT 
  ROUND(MIN(plans.plan_value), 2) AS `faturamento_minimo`,
  ROUND(MAX(plans.plan_value), 2) AS `faturamento_maximo`,
  ROUND(AVG(plans.plan_value), 2) AS `faturamento_medio`,
  ROUND(SUM(plans.plan_value), 2) AS `faturamento_total`
FROM SpotifyClone.plans AS plans
INNER JOIN SpotifyClone.users AS users ON users.plan_id = plans.plan_id; 
