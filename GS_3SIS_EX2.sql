SELECT * FROM localizacao;
SELECT * FROM especies_marinhas;
SELECT * FROM condicoes_ambientais;
SELECT * FROM poluicoes;

SELECT loc.nome, cond.data, pol.tipo_poluente, AVG(cond.temperatura)
FROM localizacao loc INNER JOIN condicoes_ambientais cond ON (loc.localizacao_id = cond.localizacao_id) 
INNER  JOIN poluicoes pol ON (loc.localizacao_id = pol.localizacao_id)
WHERE loc.nome IN ('Baía de Guanabara' ,'Recife de Tubbataha')
GROUP BY loc.nome, cond.data, pol.tipo_poluente
