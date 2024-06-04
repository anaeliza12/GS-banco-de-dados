SELECT * FROM localizacao;
SELECT * FROM especies_marinhas;
SELECT * FROM condicoes_ambientais;
SELECT * FROM poluicoes;

drop table poluicoes_grave;
drop table poluicoes_comum;

CREATE TABLE poluicoes_comum (
 poluicao_id INT PRIMARY KEY,
 localizacao_id INT,
 data DATE,
 tipo_poluente VARCHAR2(50),
 concentracao FLOAT,
 descricao CLOB,
 nome_localizacao VARCHAR2(100),
 FOREIGN KEY (localizacao_id) REFERENCES 
localizacao (localizacao_id));

