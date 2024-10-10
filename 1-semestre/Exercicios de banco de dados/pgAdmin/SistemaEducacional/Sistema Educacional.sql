----------------SISTEMA EDUCACIONAL-------------------
--COMANDO DDL

-- Criação da tabela alunos
CREATE TABLE alunos (
	cpf varchar(20) PRIMARY KEY,
    nome_aluno varchar(50) not null,
    idade int,
    rua text,
    numero varchar(10),
    bairro varchar(20),
	cidade varchar(20),
	estado varchar(20),
	cep varchar(20),
	pais varchar(20)
);

-- Criação da tabela departamentos
CREATE TABLE departamentos (
	id_depto int PRIMARY KEY,
	nome_depto varchar (20)
);


-- Criação da tabela disciplinas
CREATE TABLE disciplinas (
	id_disciplina int PRIMARY KEY,
    nome_disciplina varchar(50),
    optativa varchar(10)
);

--Criação da tabela contato
CREATE TABLE contatos (
	cpf varchar(20),
	CONSTRAINT fk_alunos FOREIGN KEY(cpf) REFERENCES alunos(cpf),
    numero varchar(20),
    ddd int
);

--Criação da tabela cursos
CREATE TABLE cursos (
	id_curso int PRIMARY KEY,
	nome_curso varchar(50),
	id_depto int, 
	CONSTRAINT fk_departamentos FOREIGN KEY(id_depto) REFERENCES departamentos(id_depto)
	
);

--Criação da tabela matricula
CREATE TABLE matriculas(
	ra varchar(20) PRIMARY KEY,
	cpf varchar(20),
	CONSTRAINT fk_alunos FOREIGN KEY(cpf) REFERENCES alunos(cpf),
	status varchar(20),
	id_curso int, 
	CONSTRAINT fk_cursos FOREIGN KEY(id_curso) REFERENCES cursos(id_curso)
);

--Criação da tabela matricula_disciplina
CREATE TABLE matriculas_disciplinas(
	ra varchar(20),
	CONSTRAINT fk_matriculas FOREIGN KEY(ra) REFERENCES matriculas(ra),
	id_disciplina int,
	CONSTRAINT fk_disciplinas FOREIGN KEY(id_disciplina) REFERENCES disciplinas(id_disciplina)	
);

--Criação da tabela curso_disciplina
CREATE TABLE cursos_disciplinas(
	id_curso int,
	CONSTRAINT fk_cursos FOREIGN KEY(id_curso) REFERENCES cursos(id_curso),
	id_disciplina int,
	CONSTRAINT fk_disciplinas FOREIGN KEY(id_disciplina) REFERENCES disciplinas(id_disciplina)	
);

--COMANDO DML

--povoando tabela alunos
INSERT INTO alunos (cpf, nome_aluno, idade, rua, numero, bairro, cidade, estado, cep, pais) VALUES
('222.456.789-10', 'João Silva', 25, 'Rua da Amizade', 123, 'Centro', 'Sorocaba', 'SP', '01234-567', 'Brasil'),
('322.654.321-98', 'Maria Santos', 22, 'Avenida da Liberdade', 456, 'Jardins', 'Sorocaba', 'SP', '04567-890', 'Brasil'),
('422.789.123-00', 'Carlos Oliveira', 30, 'Rua das Flores', 789, 'Barra', 'Sorocaba', 'SP', '07890-123', 'Brasil'),
('551.654.987-32', 'Ana Pereira', 28, 'Rua do Sol', 234, 'Copacabana', 'Sorocaba', 'SP', '02345-678', 'Brasil'),
('779.193.456-54', 'Pedro Rodrigues', 24, 'Avenida Principal', 567, 'Centro', 'Sorocaba', 'SP', '05678-901', 'Brasil'),
('994.007.890-76', 'Camila Oliveira', 27, 'Rua das Palmeiras', 890, 'Vila Nova', 'Sorocaba', 'SP', '08901-234', 'Brasil'),
('114.321.987-79', 'Paula Costa', 29, 'Avenida dos Girassóis', 1234, 'Jardim América', 'Sorocaba', 'SP', '12345-678', 'Brasil'),
('778.123.456-32', 'Lucas Souza', 26, 'Rua da Paz', 5678, 'Boa Vista', 'Sorocaba', 'SP', '56789-012', 'Brasil'),
('333.987.456-65', 'Juliana Almeida', 31, 'Rua das Árvores', 9012, 'Ponta Negra', 'Sorocaba', 'SP', '90123-456', 'Brasil'),
('789.005.321-98', 'Fernando Santos', 23, 'Avenida Central', 3456, 'Centro', 'Sorocaba', 'SP', '34567-890', 'Brasil'),
('332.234.567-01', 'Mariana Lima', 26, 'Rua das Estrelas', 7890, 'Jardim Botânico', 'Sorocaba', 'SP', '78901-234', 'Brasil'),
('123.789.654-34', 'Rafaela Pereira', 28, 'Avenida da Praia', 12345, 'Copacabana', 'Sorocaba', 'SP', '23456-789', 'Brasil'),
('333.456.123-76', 'Gustavo Silva', 25, 'Rua dos Coqueiros', 6789, 'Barra da Tijuca', 'Sorocaba', 'SP', '67890-123', 'Brasil'),
('555.890.123-09', 'Diego Oliveira', 30, 'Avenida das Rosas', 23456, 'Jardim São Paulo', 'Sorocaba', 'SP', '23456-789', 'Brasil'),
('266.321.654-32', 'Amanda Santos', 22, 'Rua das Margaridas', 78901, 'Centro', 'Sorocaba', 'SP', '34567-890', 'Brasil'),
('120.987.654-65', 'Marcos Costa', 29, 'Avenida dos Ipês', 12345, 'Alphaville', 'Sorocaba', 'SP', '45678-901', 'Brasil'),
('123.341.789-98', 'Carolina Souza', 27, 'Rua das Violetas', 67890, 'Bela Vista', 'Sorocaba', 'SP', '56789-012', 'Brasil'),
('989.123.456-06', 'Bruno Almeida', 24, 'Avenida das Orquídeas', 23456, 'Centro', 'Sorocaba', 'SP', '12345-678', 'Brasil'),
('444.789.123-34', 'Fernanda Oliveira', 31, 'Rua dos Lírios', 78901, 'Boa Viagem', 'Sorocaba', 'SP', '90123-456', 'Brasil'),
('345.321.987-76', 'Rodrigo Lima', 23, 'Avenida dos Cravos', 1234, 'Jardim das Flores', 'Sorocaba', 'SP', '67890-123', 'Brasil');



--povoando tabela contatos
INSERT INTO contatos (cpf, numero, ddd) VALUES
('222.456.789-10', '998765432', '15'),
('322.654.321-98', '987654321', '15'),
('422.789.123-00', '912345678', '15'),
('551.654.987-32', '923456789', '15'),
('779.193.456-54', '934567890', '15'),
('994.007.890-76', '945678901', '15'),
('114.321.987-79', '956789012', '15'),
('778.123.456-32', '967890123', '15'),
('333.987.456-65', '978901234', '15'),
('789.005.321-98', '989012345', '15'),
('332.234.567-01', '900123456', '15'),
('123.789.654-34', '911234567', '15'),
('333.456.123-76', '922345678', '15'),
('555.890.123-09', '933456789', '15'),
('266.321.654-32', '944567890', '15'),
('120.987.654-65', '955678901', '15'),
('123.341.789-98', '966789012', '15'),
('989.123.456-06', '977890123', '15'),
('444.789.123-34', '988901234', '15'),
('345.321.987-76', '999012345', '15');



---povoando tabela matriculas
INSERT INTO matriculas (ra, cpf, status, id_curso) VALUES
  ('2024001', '222.456.789-10', 'cursando', 21),
  ('2024002', '322.654.321-98', 'cursando', 21), 
  ('2024003', '422.789.123-00', 'cursando', 23), 
  ('2024004', '551.654.987-32', 'cursando', 23),
  ('2024005', '779.193.456-54', 'cursando', 25), 
  ('2024006', '994.007.890-76', 'cursando', 25), 
  ('2024007', '114.321.987-79', 'cursando', 27),
  ('2024008', '778.123.456-32', 'cursando', 27),
  ('2021119', '444.789.123-34', 'cursando', 28), 
  ('2021120', '345.321.987-76', 'cursando', 28),
  ('2024009', '333.987.456-65', 'cursando', 28),
  ('2024010', '789.005.321-98', 'cursando', 28),
  ('2024011', '332.234.567-01', 'formado', 24), 
  ('2024012', '123.789.654-34', 'formado', 26),
  ('2024013', '333.456.123-76', 'formado', 28),
  ('2024014', '555.890.123-09', 'formado', 28),
  ('2024015', '266.321.654-32', 'cursando', 22),
  ('2024016', '120.987.654-65', 'cursando', 22),
  ('2024017', '123.341.789-98', 'cursando', 24), 
  ('2024018', '989.123.456-06', 'cursando', 24),
  ('2024019', '444.789.123-34', 'matricula trancada', 21), 
  ('2024020', '345.321.987-76', 'matricula trancada', 23), 
  ('2024021', '444.789.123-34', 'matricula trancada', 25), 
  ('2024022', '345.321.987-76', 'matricula trancada', 27), 
  ('2024023', '444.789.123-34', 'matricula trancada', 22); 


----povoando tabela cursos
INSERT INTO cursos (id_curso, nome_curso, id_depto) VALUES
  (21, 'Medicina', 01),
  (22, 'Enfermagem', 01),
  (23, 'Ciência da Computação', 02),
  (24, 'Engenharia de Software', 02),
  (25, 'Engenharia Civil', 03),
  (26, 'Engenharia Elétrica', 03),
  (27, 'História', 04), 
  (28, 'Sociologia', 04); 


--povoando tabela departamentos
INSERT INTO departamentos (id_depto, nome_depto) VALUES 
  (01, 'Saúde'),
  (02, 'Tecnologia'),
  (03, 'Engenharia'),
  (04, 'Humanas');
  
  
---povoando tabela disciplinas
INSERT INTO disciplinas (id_disciplina, nome_disciplina, optativa) VALUES
  (101, 'Anatomia Humana', 'não'),
  (102, 'Bioquímica', 'não'),
  (103, 'Farmacologia', 'não'),
  (104, 'Fisiologia', 'não'),
  (105, 'Nutrição', 'não'),
  (106, 'Epidemiologia', 'não'),
  (107, 'Saúde Pública', 'sim'),
  (108, 'Genética Médica', 'sim'),
  (201, 'Algoritmos e Estruturas de Dados', 'não'),
  (202, 'Banco de Dados', 'não'),
  (203, 'Redes de Computadores', 'não'),
  (204, 'Inteligência Artificial', 'não'),
  (205, 'Desenvolvimento Web', 'não'),
  (206, 'Segurança da Informação', 'não'),
  (207, 'Empreendedorismo', 'sim'),
  (208, 'Gestão de Projetos de Software', 'sim'),
  (301, 'Cálculo', 'não'),
  (302, 'Física', 'não'),
  (303, 'Química', 'não'),
  (304, 'Mecânica dos Fluidos', 'não'),
  (305, 'Termodinâmica', 'não'),
  (306, 'Eletromagnetismo', 'não'),
  (307, 'Ética Profissional', 'sim'),
  (308, 'Engenharia Sustentável', 'sim'),
  (401, 'Filosofia', 'não'),
  (402, 'Geografia', 'não'),
  (403, 'Artes', 'não'),
  (404, 'Psicologia', 'não'),
  (405, 'Sociologia', 'não'),
  (406, 'Antropologia', 'não'),
  (407, 'Direitos Humanos', 'sim'),
  (408, 'Gestão Cultural', 'sim');
  

--povoando tabela matriculas_disciplinas
INSERT INTO matriculas_disciplinas (ra, id_disciplina) VALUES
  
  ('2024001', 101),('2024001', 102), ('2024001', 103), ('2024001', 104), ('2024001', 105), ('2024001', 106), ('2024001', 107), ('2024001', 108),
  ('2024002', 101), ('2024002', 102), ('2024002', 103), ('2024002', 104), ('2024002', 105), ('2024002', 106), ('2024002', 107), ('2024002', 108),
  ('2024003', 201), ('2024003', 202), ('2024003', 203), ('2024003', 204), ('2024003', 205), ('2024003', 206), ('2024003', 207), ('2024003', 208),
  ('2024004', 201), ('2024004', 202), ('2024004', 203), ('2024004', 204), ('2024004', 205), ('2024004', 206), ('2024004', 207), ('2024004', 208),
  ('2024005', 301), ('2024005', 302), ('2024005', 303), ('2024005', 304), ('2024005', 305), ('2024005', 306), ('2024005', 307), ('2024005', 308),
  ('2024006', 301), ('2024006', 302), ('2024006', 303), ('2024006', 304), ('2024006', 305), ('2024006', 306), ('2024006', 307), ('2024006', 308),
  ('2024007', 401), ('2024007', 402), ('2024007', 403), ('2024007', 404), ('2024007', 405), ('2024007', 406), ('2024007', 407), ('2024007', 408),
  ('2024008', 401), ('2024008', 402), ('2024008', 403), ('2024008', 404), ('2024008', 405), ('2024008', 406), ('2024008', 407), ('2024008', 408),
  ('2024011', 201), ('2024011', 202), ('2024011', 203), ('2024011', 204), ('2024011', 205), ('2024011', 206), ('2024011', 207), ('2024011', 208),
  ('2024012', 201), ('2024012', 202), ('2024012', 203), ('2024012', 204), ('2024012', 205), ('2024012', 206), ('2024012', 207), ('2024012', 208),
  ('2024013', 401), ('2024013', 402), ('2024013', 403), ('2024013', 404), ('2024013', 405), ('2024013', 406), ('2024013', 407), ('2024013', 408),
  ('2024014', 401), ('2024014', 402), ('2024014', 403), ('2024014', 404), ('2024014', 405), ('2024014', 406), ('2024014', 407), ('2024014', 408),
  ('2024015', 301), ('2024015', 302), ('2024015', 303), ('2024015', 304), ('2024015', 305), ('2024015', 306), ('2024015', 307), ('2024015', 308),
  ('2024016', 301), ('2024016', 302), ('2024016', 303), ('2024016', 304), ('2024016', 305), ('2024016', 306), ('2024016', 307), ('2024016', 308),
  ('2024017', 201), ('2024017', 202), ('2024017', 203), ('2024017', 204), ('2024017', 205), ('2024017', 206), ('2024017', 207), ('2024017', 208),
  ('2024018', 201), ('2024018', 202), ('2024018', 203), ('2024018', 204), ('2024018', 205), ('2024018', 206), ('2024018', 207), ('2024018', 208);



--povoando tabela cursos_disciplinas
INSERT INTO cursos_disciplinas (id_curso, id_disciplina) VALUES
  (21, 101), (21, 102), (21, 103), (21, 104), (21, 105), (21, 106), (21, 107), (21, 108),
  (23, 201), (23, 202), (23, 203), (23, 204), (23, 205), (23, 206), (23, 207), (23, 208),
  (25, 301), (25, 302), (25, 303), (25, 304), (25, 305), (25, 306), (25, 307), (25, 308),
  (27, 401), (27, 402), (27, 403), (27, 404), (27, 405), (27, 406), (27, 407), (27, 408),
  (24, 201), (24, 202), (24, 203), (24, 204), (24, 205), (24, 206), (24, 207), (24, 208),
  (28, 401), (28, 402), (28, 403), (28, 404), (28, 405), (28, 406), (28, 407), (28, 408),
  (22, 301), (22, 302), (22, 303), (22, 304), (22, 305), (22, 306), (22, 307), (22, 308),
  (26, 301), (26, 302), (26, 303), (26, 304), (26, 305), (26, 306), (26, 307), (26, 308);
-----------------------------------------------------------------------------------------
---COMANDO DQL 

SELECT * FROM alunos
SELECT * FROM contatos
SELECT * FROM matriculas
SELECT * FROM disciplinas
SELECT * FROM cursos
SELECT * FROM departamentos
SELECT * FROM matriculas_disciplinas
SELECT * FROM cursos_disciplinas


--Perguntas

--Dado o RA ou o Nome do Aluno, buscar no BD todos os demais dados do aluno.
SELECT * FROM (matriculas INNER JOIN alunos USING (cpf)) INNER JOIN contatos USING (cpf) 
WHERE nome_aluno = 'Fernanda Oliveira';

--Dado o nome de um departamento, exibir o nome de todos os cursos associados a ele.
SELECT cursos.nome_curso FROM cursos
INNER JOIN departamentos ON cursos.id_depto = departamentos.id_depto
WHERE departamentos.nome_depto = 'Tecnologia';


--Dado o nome de uma disciplina, exibir a qual ou quais cursos ela pertence.

SELECT nome_curso FROM cursos_disciplinas 
INNER JOIN cursos ON cursos_disciplinas.id_curso = cursos.id_curso 
INNER JOIN disciplinas ON cursos_disciplinas.id_disciplina = disciplinas.id_disciplina 
WHERE nome_disciplina = 'Desenvolvimento Web';


--Dado o CPF de um aluno, exibir quais disciplinas ele está cursando.
SELECT disciplinas.nome_disciplina FROM matriculas 
INNER JOIN matriculas_disciplinas ON matriculas.ra = matriculas_disciplinas.ra 
INNER JOIN disciplinas ON matriculas_disciplinas.id_disciplina = disciplinas.id_disciplina 
WHERE matriculas.cpf = '551.654.987-32';

--Filtrar todos os alunos matriculados em um determinado curso.

SELECT nome_aluno, status FROM (cursos NATURAL INNER JOIN matriculas)
                NATURAL INNER JOIN alunos
WHERE nome_curso='Enfermagem'


--Filtrar todos os alunos matriculados em determinada disciplina.

SELECT alunos.nome_aluno FROM alunos 
INNER JOIN matriculas ON alunos.cpf = matriculas.cpf 
INNER JOIN matriculas_disciplinas ON matriculas.ra = matriculas_disciplinas.ra 
INNER JOIN disciplinas ON matriculas_disciplinas.id_disciplina = disciplinas.id_disciplina 
WHERE disciplinas.nome_disciplina = 'Engenharia Sustentável';


--Filtrar alunos formados.
SELECT nome_aluno FROM alunos WHERE cpf IN (SELECT cpf FROM matriculas WHERE status = 'formado');


--Filtrar alunos ativos.
SELECT nome_aluno FROM alunos WHERE cpf IN (SELECT cpf FROM matriculas WHERE status = 'cursando');


--Apresentar a quantidade de alunos ativos por curso.

SELECT cursos.nome_curso, COUNT(alunos.cpf) AS quantidade_alunos_ativos FROM cursos 
INNER JOIN matriculas ON cursos.id_curso = matriculas.id_curso 
INNER JOIN alunos ON matriculas.cpf = alunos.cpf 
WHERE matriculas.status = 'cursando' 
GROUP BY cursos.nome_curso;



--Apresentar a quantidade de alunos ativos por disciplina.
SELECT disciplinas.nome_disciplina, COUNT(alunos.cpf) AS quantidade_alunos_ativos 
FROM disciplinas 
INNER JOIN matriculas_disciplinas ON disciplinas.id_disciplina = matriculas_disciplinas.id_disciplina 
INNER JOIN matriculas ON matriculas_disciplinas.ra = matriculas.ra 
INNER JOIN alunos ON matriculas.cpf = alunos.cpf 
WHERE matriculas.status = 'cursando' 
GROUP BY disciplinas.nome_disciplina;