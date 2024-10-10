-- Criação da tabela cursos
CREATE TABLE cursos (
    id_curso VARCHAR(50) PRIMARY KEY,
    nome_curso VARCHAR(50)
);

-- Exibir dados da tabela cursos
SELECT * FROM cursos;

-- Criação da tabela turmas
CREATE TABLE turmas (
    id_turma VARCHAR(50) PRIMARY KEY,
    id_curso VARCHAR(50),
	nome_professor VARCHAR(50),
    CONSTRAINT fk_curso FOREIGN KEY(id_curso) REFERENCES cursos(id_curso)
);

-- Exibir dados da tabela turmas
SELECT * FROM turmas;

-- Criação da tabela alunos

CREATE TABLE alunos (
    id_aluno VARCHAR(50) PRIMARY KEY,
    nome_aluno VARCHAR(50),
	data_nasci date
);
SELECT * FROM alunos;

CREATE TABLE alunos_turmas(
    id_aluno VARCHAR(50),
    CONSTRAINT fk_aluno FOREIGN KEY(id_aluno) REFERENCES alunos(id_aluno),
    id_turma VARCHAR(50),
    CONSTRAINT fk_turma FOREIGN KEY(id_turma) REFERENCES turmas(id_turma)
);

SELECT * FROM alunos_turmas;

INSERT INTO cursos (id_curso, nome_curso) VALUES 
('C001', 'Odontologia'),
('C002', 'Enfermagem'),
('C003', 'Dentista'),
('C004', 'Psicologia'),
('C005', 'Nutrição'),
('C006', 'Medicina'),
('C007', 'Gerontologia'),
('C008', 'Fisioterapia'),
('C009', 'Fonoaudiologia'),
('C010', 'Farmacia');

INSERT INTO turmas (id_turma, id_curso, nome_professor) VALUES 
('T001', 'C001', 'Aristoteles'),
('T002', 'C002', 'Platão'),
('T003', 'C003', 'Aristoteles'),
('T004', 'C004', 'Platão'),
('T005', 'C005', 'Rene Descartes'),
('T006', 'C006', 'Aristoteles'),
('T007', 'C007', 'Socrates'),
('T008', 'C008', 'Socrates'),
('T009', 'C009', 'Rene Descartes'),
('T010', 'C010', 'Rene Descartes');

INSERT INTO alunos (id_aluno, nome_aluno, data_nasci) VALUES 
('A001', 'Paula Roberta', '1998-05-15'),
('A002', 'Ivan Oliveira', '1997-09-20'),
('A003', 'João Paulo', '1996-02-10'),
('A004', 'Roberto Nunes', '1995-07-30'),
('A005', 'Pedro Pereira', '1994-11-25'),
('A006', 'Pedro Almeida', '1993-04-05'),
('A007', 'Roberta Pedroso', '1992-08-12'),
('A008', 'Pedro Fernandes', '1991-03-18'),
('A009', 'Lucas Henrique', '1990-06-22'),
('A010', 'Pedro Lima', '1989-10-08');

INSERT INTO alunos_turmas (id_aluno, id_turma) VALUES 
('A001', 'T003'),
('A002', 'T001'),
('A003', 'T002'),
('A004', 'T007'),
('A005', 'T005'),
('A006', 'T009'),
('A007', 'T008'),
('A008', 'T010'),
('A009', 'T004'),
('A010', 'T006');