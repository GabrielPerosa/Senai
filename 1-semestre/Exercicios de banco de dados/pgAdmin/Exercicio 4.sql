CREATE TABLE departamento (
    id_depto varchar(100) PRIMARY KEY,
    nome_depto varchar(100)
);

SELECT * FROM departamento

CREATE TABLE funcionario (
    id_func serial PRIMARY KEY,
    id_depto varchar(100),
    nome_func varchar(100),
    data_adm date,
    cargo varchar(100),
    CONSTRAINT fk_departamento FOREIGN KEY(id_depto) REFERENCES departamento(id_depto)
);

SELECT * FROM funcionario

INSERT INTO departamento (id_depto, nome_depto) VALUES 
('D001', 'Produção'),
('D002', 'Expedição'),
('D003', 'Logistica'),
('D004', 'Marketing'),
('D005', 'Transporte'),
('D006', 'Vendas'),
('D007', 'Produção'),
('D008', 'TI'),
('D009', 'Limpeza'),
('D010', 'Administração');

INSERT INTO funcionario (id_func, id_depto, nome_func, data_adm, cargo) VALUES 
(1, 'D004', 'José da Silva', '15/03/2023', 'Gerente'),
(2, 'D006', 'Ana Oliveira', '16/03/2023', 'Analista de vendas'),
(3, 'D008', 'Paulo Souza', '17/03/2023', 'Gerente'),
(4, 'D010', 'Carla Santos', '18/03/2023', 'Assistente Administrativo'),
(5, 'D002', 'Fernanda Pereira', '19/03/2023', 'Analista Financeiro'),
(6, 'D005', 'Rafael Almeida', '20/03/2023', 'Gerente'),
(7, 'D001', 'Isabela Costa', '21/03/2023', 'Analista RH'),
(8, 'D003', 'Lucas Fernandes', '22/03/2023', 'Gerente'),
(9, 'D007', 'Camila Rodrigues', '23/03/2023', 'Auxiliar de produção'),
(10, 'D008', 'Renata Lima', '24/03/2023', 'Gerente');