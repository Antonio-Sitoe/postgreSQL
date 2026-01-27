-- Analise a média das notas dos fornecedores agrupadas por cidade, incluindo também o menor e o maior valor de nota em cada cidade.
  SELECT 
    cidade,
    AVG(nota) AS media_nota,
    MIN(nota) AS menor_nota,
    MAX(nota) AS maior_nota
  FROM 
    fornecedor
  GROUP BY 
    cidade
  ORDER BY 
    media_nota DESC, cidade;