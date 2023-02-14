CREATE DATABASE aula8

USE aula8

CREATE TABLE Cliente (
	cod INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(50)
)

CREATE TABLE Produto (
	cod INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(50),
	preco DECIMAL(9,2)
)

CREATE TABLE Venda (
	cod INT IDENTITY(1,1) PRIMARY KEY,
	cod_cliente INT
)

CREATE TABLE ProdutoVenda (
	cod INT IDENTITY(1,1) PRIMARY KEY,
	cod_venda INT,
	cod_produto INT,
	qtProduto INT
)

SELECT * FROM Cliente
SELECT * FROM Produto
SELECT * FROM Venda
SELECT * FROM ProdutoVenda

INSERT INTO Cliente (nome) VALUES ('João')
INSERT INTO Cliente (nome) VALUES ('Maria')
INSERT INTO Cliente (nome) VALUES ('Pedro')
INSERT INTO Cliente (nome) VALUES ('Jessica')
SELECT * FROM Cliente

INSERT INTO Produto (nome, preco) VALUES ('Caneta', 1.00)
INSERT INTO Produto (nome, preco) VALUES ('Caderno', 10.00)
INSERT INTO Produto (nome, preco) VALUES ('Borracha', 0.50)
SELECT * FROM Produto

INSERT INTO Venda (cod_cliente) VALUES (1)
INSERT INTO Venda (cod_cliente) VALUES (1)
INSERT INTO Venda (cod_cliente) VALUES (4)
INSERT INTO Venda (cod_cliente) VALUES (3)
INSERT INTO Venda (cod_cliente) VALUES (3)
INSERT INTO Venda (cod_cliente) VALUES (3)
INSERT INTO Venda (cod_cliente) VALUES (3)
SELECT * FROM Venda

INSERT INTO ProdutoVenda (cod_venda, cod_produto, qtProduto) VALUES (1, 1, 40)
INSERT INTO ProdutoVenda (cod_venda, cod_produto, qtProduto) VALUES (2, 2, 2)
INSERT INTO ProdutoVenda (cod_venda, cod_produto, qtProduto) VALUES (3, 3, 100)
INSERT INTO ProdutoVenda (cod_venda, cod_produto, qtProduto) VALUES (4, 3, 1)
INSERT INTO ProdutoVenda (cod_venda, cod_produto, qtProduto) VALUES (5, 1, 2)
INSERT INTO ProdutoVenda (cod_venda, cod_produto, qtProduto) VALUES (6, 2, 1)
INSERT INTO ProdutoVenda (cod_venda, cod_produto, qtProduto) VALUES (7, 1, 1)
SELECT * FROM ProdutoVenda

/*Apresentar o Produto que foi vendido e quem comprou.
Os relacionamentos entre as tabelas são:
Produto -> ProdutoVenda -> Venda -> Cliente
*/
SELECT Produto.nome AS ProdutoNome, ProdutoVenda.qtProduto, Cliente.nome AS ClienteNome
FROM Produto
INNER JOIN ProdutoVenda ON Produto.cod = ProdutoVenda.cod_produto
INNER JOIN Venda ON Venda.cod = ProdutoVenda.cod_venda
INNER JOIN Cliente ON Cliente.cod = Venda.cod_cliente
