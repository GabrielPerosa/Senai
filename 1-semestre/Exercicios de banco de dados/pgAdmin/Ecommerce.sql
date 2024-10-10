--**********--
--         Preparação         --
--**********--

-- Adicionar produtos que não foram comprados
INSERT INTO products (productname,brand,category,discount,price) VALUES
('impressora','hp','eletronicos',0.12,489.9),
('luminaria','ge','eletronicos',0.5,46.80),
('drone','dji','eletronico',0.12,9856.0)

SELECT * FROM products
SELECT * FROM clients


-- Cross join 
SELECT * FROM clients, products
SELECT * FROM products, clients
SELECT * FROM clients CROSS JOIN products

-- Inner Join(relaciona por PK/FK)
SELECT firstname, productname FROM clients INNER JOIN products 
ON clients.idclient = products.idclient
WHERE firstname = 'Rodrigo' OR firstname = 'rodrigo'

-- alternativos de Inner Join
SELECT * FROM clients INNER JOIN products USING (idclient)
SELECT * FROM clients NATURAL INNER JOIN products

-- ---------------------------- --
SELECT * FROM Products

SELECT products.productname, clients.firstname
FROM products FULL JOIN clients USING (idclient)

--- --- --- --- --- --- --- --- --- ---
-- 1. Quais clientes compraram produtos da categoria eletrônicos?
SELECT clients.firstname, clients.lastname, products.productname, products.category 
FROM clients INNER JOIN products USING (idclient)
WHERE products.category = 'eletronicos'

----------------------------------------
-- 2. Quais clientes não compraram nenhum produto?
SELECT clients.firstname, clients.lastname
FROM clients LEFT JOIN products USING (idclient)
WHERE products.idproduct IS null

-------------------------------------------
-- 3. Quais produtos não foram vendidos?
SELECT products.productname, products.idclient
FROM products LEFT JOIN clients USING (idclient)
WHERE products.idclient IS null

-------------------------------------------
-- 4. Quais produtos Rodrigo comprou?
SELECT products.productname, clients.firstname
FROM products LEFT JOIN clients USING (idclient)
WHERE clients.firstname = 'Rodrigo'

------------------------------------------
-- 5. Quais clientes compraram produtos da marca DELL?
SELECT products.productname, clients.firstname,
FROM products LEFT JOIN clients USING (idclient)
WHERE products.brand = 'dell'
