-- Exiba a quantidade de fornecedores cujo bairro contém ‘Centro’.
SELECT COUNT(*) AS quantidade_fornecedores_centro
FROM fornecedor
WHERE bairro ILIKE '%Centro%';