3️⃣0️⃣ Cadeia pai → filho → neto

SELECT 
  c_pai.nome AS pai,
  c_filho.nome AS filho,
  c_neto.nome AS neto
JOIN categoria c_filho 
ON c_filho.id_pai = c_pai.id
JOIN categoria c_neto 
ON c_neto.id_pai = c_filho.id;