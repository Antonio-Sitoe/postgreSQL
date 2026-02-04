-- 19. Mostre a porcentagem de contas ativas em relação ao total.
SELECT 
  (((SELECT count(*) FROM conta WHERE situacao = 'ATIVO') * 100) / (SELECT COUNT(*) FROM conta)) as activosPercentagem,
  (SELECT count(*) FROM conta WHERE situacao = 'ATIVO') as activos,
  (SELECT COUNT(*) FROM conta) as total

SELECT
  ROUND((ativos * 100.0) / NULLIF(total, 0), 2) AS activos_percentagem,
  ativos,
  total
FROM (
  SELECT
    COUNT(*) FILTER (WHERE situacao = 'ATIVO') AS ativos,
    COUNT(*) AS total
  FROM conta
) t;









