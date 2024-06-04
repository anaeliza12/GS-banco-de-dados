SELECT * FROM localizacao;
SELECT * FROM especies_marinhas;
SELECT * FROM condicoes_ambientais;
SELECT * FROM poluicoes;
SELECT * FROM poluicoes_grave;
SELECT * FROM poluicoes_comum;


INSERT FIRST
    WHEN concentracao > 10 THEN
        INTO poluicoes_grave VALUES (id, localizacao_id, data, tipo_poluente, concentracao, descricao, nome)
    ELSE 
        INTO poluicoes_comum VALUES (id, localizacao_id, data, tipo_poluente, concentracao,descricao, nome)
SELECT p.id, l.localizacao_id, data, tipo_poluente , concentracao , p.descricao, nome 
FROM poluicoes p INNER JOIN localizacao l ON (p.localizacao_id = l.localizacao_id)


