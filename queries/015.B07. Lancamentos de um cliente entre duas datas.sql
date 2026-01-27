-- 7. Lançamentos de um cliente entre duas datas específicas.
-- Cliente: id = 1. Datas: 2024-01-01 e 2024-12-31. Ajuste conforme necessário.
SELECT *
FROM lancamento
WHERE id_cliente = 1
  AND data_lancamento::date BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY data_lancamento;
