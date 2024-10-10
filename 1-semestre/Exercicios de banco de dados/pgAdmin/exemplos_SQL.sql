--****************************--
--         Preparação         --
--****************************--

-- Adicionar produtos que não foram comprados
INSERT INTO products (productname,brand,category,discount,price) VALUES
('impressora','hp','eletronicos',0.12,489.9),
('luminaria','ge','eletronicos',0.5,46.80),
('drone','dji','eletronico',0.12,9856.0)

SELECT * FROM products

--cross join
SELECT * FROM clients, products
SELECT * FROM clients CROSS JOIN products

--inner join(relaciona PK-FK)
SELECT * FROM clients INNER JOIN products 
ON clients.idclient = products.idclient
WHERE firstname='Rodrigo'

SELECT * FROM clients INNER JOIN products USING(idclient)

SELECT * FROM clients NATURAL INNER JOIN products
