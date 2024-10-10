CREATE TABLE Livros(
	titulo varchar(50),
	ISBN serial PRIMARY KEY,
	editora varchar(50),
	ano_public date
)

SELECT * FROM livros

CREATE TABLE autores(
    ID_autores serial PRIMARY KEY,
	nome varchar(50)
)

SELECT * FROM autores

CREATE TABLE livros_autores(
	ISBN int,
	CONSTRAINT fk_ISBN FOREIGN KEY(ISBN) REFERENCES livros (ISBN),
	ID_autores int,
	CONSTRAINT fk_autores FOREIGN KEY(id_autores) REFERENCES autores (id_autores)
)

SELECT * FROM livros_autores

INSERT INTO livros VALUES ('A Guerra dos Tronos', '978', 'Bantam Books', '19/01/1996');
INSERT INTO livros VALUES ('1984', '234', 'Signet Classics', '24/02/1949');
INSERT INTO livros VALUES ('Orgulho e Preconceito', '518', 'Penguin Classics', '10/04/1813');
INSERT INTO livros VALUES ('Harry Potter e a Pedra Filosofal', '743', 'Bloomsbury Publishing', '25/06/1997');
INSERT INTO livros VALUES ('Cem Anos de Solidão', '728', 'Harper & Row', '02/07/1967');
INSERT INTO livros VALUES ('O Senhor dos Anéis: A Sociedade do Anel', '706', 'Mariner Books', '02/07/1954');
INSERT INTO livros VALUES ('A Revolução dos Bichos', '342', 'Signet Classics', '05/07/1945');
INSERT INTO livros VALUES ('O Pequeno Príncipe', '195', 'Harcourt, Brace & World', '05/07/1943');
INSERT INTO livros VALUES ('Crime e Castigo', '136', 'Penguin Classics', '10/07/1866');
INSERT INTO livros VALUES ('O Hobbit', '227', 'Houghton Mifflin Harcourt', '10/07/1937');
INSERT INTO autores VALUES ('1','João Silva');
INSERT INTO autores VALUES ('2','Ana Santos');
INSERT INTO autores VALUES ('4','Pedro Oliveira');
INSERT INTO autores VALUES ('3','Maria Costa');
INSERT INTO autores VALUES ('6','Carlos Pereira');
INSERT INTO autores VALUES ('5','Luana Fernandes');
INSERT INTO autores VALUES ('7','Rafael Almeida');
INSERT INTO autores VALUES ('8','Juliana Martins');
INSERT INTO autores VALUES ('10','Lucas Souza');
INSERT INTO autores VALUES ('9','Isabela Lima');
INSERT INTO livros_autores VALUES ('978', 1);
INSERT INTO livros_autores VALUES ('234', 2);
INSERT INTO livros_autores VALUES ('518', 3);
INSERT INTO livros_autores VALUES ('743', 4);
INSERT INTO livros_autores VALUES ('728', 5);
INSERT INTO livros_autores VALUES ('706', 6);
INSERT INTO livros_autores VALUES ('342', 7);
INSERT INTO livros_autores VALUES ('195', 8);
INSERT INTO livros_autores VALUES ('136', 9);
INSERT INTO livros_autores VALUES ('227', 10);
-------------------------------------------------

-a)
SELECT livros.titulo, autores.nome
FROM (autores NATURAL INNER JOIN livros_autores)
INNER JOIN livros USING (isbn)

-b)SELECT livros.titulo, autores.nome
FROM (autores NATURAL INNER JOIN livros_autores)
INNER JOIN livros USING (isbn)
WHERE 
