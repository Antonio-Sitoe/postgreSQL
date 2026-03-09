  SELECT 
    c_filha.nome AS categoria_filha,
    c_pai.nome AS categoria_pai
  FROM categoria c_filha
  JOIN categoria c_pai 
  ON c_filha.id_pai = c_pai.id;