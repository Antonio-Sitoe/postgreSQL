// Calcule a média da nota dos clientes ativos.
SELECT AVG(nota) AS media_nota_clientes_ativos FROM cliente WHERE situacao = 'ATIVO';

// Total de clients cadastrados
SELECT COUNT(*) AS total_clientes FROM cliente;


// -- 5. Mostre a média da nota dos clientes por cidade.
SELECT cidade, AVG(nota) AS media_nota_clientes_por_cidade FROM cliente GROUP BY cidade;  