CREATE TABLE Funcionarios(
	id_func serial PRIMARY KEY,
	nome_func varchar(100),
	data_admissao date
)

SELECT * FROM Funcionarios

CREATE TABLE projetos(
	id_projeto serial PRIMARY KEY,
	nome_projeto varchar (250),
	descricao text
)

SELECT * FROM projetos

CREATE TABLE funcionarios_projetos(
	id_func int,
	CONSTRAINT fk_func FOREIGN KEY(id_func) REFERENCES funcionarios (id_func),
	id_projeto int,
	CONSTRAINT fk_projeto FOREIGN KEY(id_projeto) REFERENCES projetos (id_projeto)
)
SELECT * FROM funcionarios_projetos

INSERT INTO Funcionarios VALUES (1,'Roberto Lima', '05/02/2023');
INSERT INTO Funcionarios VALUES (2,'Patrick Lima', '05/02/2023');
INSERT INTO Funcionarios VALUES (3,'Henrique Lima', '05/02/2023');
INSERT INTO Funcionarios VALUES (4,'Murillo Lima', '05/02/2023');
INSERT INTO Funcionarios VALUES (5,'Caique Lopes', '05/03/2023');
INSERT INTO Funcionarios VALUES (6,'Lucas Lopes', '05/03/2023');
INSERT INTO Funcionarios VALUES (7,'Eliseu Lopes','05/03/2023');
INSERT INTO Funcionarios VALUES (8,'Rosana Lopes', '05/03/2023');
INSERT INTO Funcionarios VALUES (9,'Silvana Santos', '05/07/2023');
INSERT INTO Funcionarios VALUES (10,'Miguel Santos', '05/07/2023');
INSERT INTO projetos VALUES (10,'Lago Peyto', 'Restauração do lago azul');
INSERT INTO projetos VALUES (20,'Machu Picchu','Concervação da montanha');
INSERT INTO projetos VALUES (30,'Lapônia','Observação da Aurora Boreal');
INSERT INTO projetos VALUES (40,'Fernando de Noronha ', 'Conservação de tartarugas');
INSERT INTO projetos VALUES (50,'Lago Tekapo', 'Restauração do lago');
INSERT INTO projetos VALUES (60,'Positano', 'Povoamento das aldeias');
INSERT INTO projetos VALUES (70,'Lisse', 'Plantação de tulipas');
INSERT INTO projetos VALUES (80,'Ilha Meeru', 'Privatização da ilha');
INSERT INTO projetos VALUES (90,'Cataratas do Iguaçu', 'Analise da Biodiversidade');
INSERT INTO projetos VALUES (100,'Cataratas do Iguaçu', 'Observação das cachoeiras');
INSERT INTO funcionarios_projetos VALUES (1,60);
INSERT INTO funcionarios_projetos VALUES (2,90);
INSERT INTO funcionarios_projetos VALUES (3,80);
INSERT INTO funcionarios_projetos VALUES (4,70);
INSERT INTO funcionarios_projetos VALUES (5,100);
INSERT INTO funcionarios_projetos VALUES (6,40);
INSERT INTO funcionarios_projetos VALUES (7,10);
INSERT INTO funcionarios_projetos VALUES (8,50);
INSERT INTO funcionarios_projetos VALUES (9,10);
INSERT INTO funcionarios_projetos VALUES (10,20);

------------------------------------------------
-a)

SELECT funcionarios.nome_func, projetos.nome_projeto
FROM (projetos NATURAL INNER JOIN funcionarios_projetos)
INNER JOIN funcionarios USING (id_func)
WHERE projetos.nome_projeto = 'Cataratas do Iguaçu'

-b)

SELECT funcionarios.nome_func, projetos.nome_projeto
FROM (projetos NATURAL INNER JOIN funcionarios_projetos)
INNER JOIN funcionarios USING (id_func)
WHERE funcionarios.nome_func = 'Caique Lopes'

-c)