CREATE DATABASE loja_ent03

USE loja_ent03

CREATE TABLE Cliente (
	cod INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50)
)

CREATE TABLE Produto (
	cod INT PRIMARY KEY IDENTITY(1,1),
	descricao VARCHAR(50),
	preco DECIMAL(9,2)
)

CREATE TABLE Venda (
	cod INT PRIMARY KEY IDENTITY(1,1),
	cod_cliente INT
)

CREATE TABLE ProdutoVenda (
	cod INT PRIMARY KEY IDENTITY(1,1),
	cod_venda INT,
	cod_produto INT,
	qtProduto INT
)

SELECT * FROM Cliente
SELECT * FROM Produto
SELECT * FROM Venda
SELECT * FROM ProdutoVenda

/*Criando os Relacionamentos com as Foreign Keys:
- cod_cliente na tabela Venda - FK_Venda_Cliente
- cod_venda na tabela ProdutoVenda - FK_ProdutoVenda_Venda
- cod_produto na tabela ProdutoVenda - FK_ProdutoVenda_Produto
*/

/*Populando as Tabelas*/
INSERT INTO Cliente (nome) VALUES ('João')
INSERT INTO Cliente (nome) VALUES ('Maria')
INSERT INTO Cliente (nome) VALUES ('Pedro')
INSERT INTO Cliente (nome) VALUES ('Renato')
INSERT INTO Cliente (nome) VALUES ('Tom')
SELECT * FROM Cliente

INSERT INTO Produto (descricao, preco) VALUES ('Caderno', 10.00)
INSERT INTO Produto (descricao, preco) VALUES ('Pasta', 5.50)
INSERT INTO Produto (descricao, preco) VALUES ('Fichario', 50.00)
INSERT INTO Produto (descricao, preco) VALUES ('Lápis', 0.50)
INSERT INTO Produto (descricao, preco) VALUES ('Borracha', 0.40)
SELECT * FROM Produto

INSERT INTO Venda (cod_cliente) VALUES (1)
INSERT INTO Venda (cod_cliente) VALUES (2)
INSERT INTO Venda (cod_cliente) VALUES (4)
INSERT INTO Venda (cod_cliente) VALUES (5)
INSERT INTO Venda (cod_cliente) VALUES (4)
INSERT INTO Venda (cod_cliente) VALUES (1)
INSERT INTO Venda (cod_cliente) VALUES (3)
INSERT INTO Venda (cod_cliente) VALUES (4)
SELECT * FROM Venda

INSERT INTO ProdutoVenda (cod_venda, cod_produto, qtProduto) VALUES (1, 2, 2)
INSERT INTO ProdutoVenda (cod_venda, cod_produto, qtProduto) VALUES (2, 1, 1)
INSERT INTO ProdutoVenda (cod_venda, cod_produto, qtProduto) VALUES (3, 5, 2)
INSERT INTO ProdutoVenda (cod_venda, cod_produto, qtProduto) VALUES (4, 4, 2)
INSERT INTO ProdutoVenda (cod_venda, cod_produto, qtProduto) VALUES (5, 3, 1)
INSERT INTO ProdutoVenda (cod_venda, cod_produto, qtProduto) VALUES (6, 5, 4)
INSERT INTO ProdutoVenda (cod_venda, cod_produto, qtProduto) VALUES (7, 2, 3)
INSERT INTO ProdutoVenda (cod_venda, cod_produto, qtProduto) VALUES (8, 1, 3)
SELECT * FROM ProdutoVenda

/*Apresentar, em uma mesma busca, o nome de todos os clientes cadastrados 
e o nome de todos os produtos cadastrados.*/
SELECT Cliente.nome AS 'Nome do Cliente', Produto.descricao AS 'Produto' FROM Cliente
INNER JOIN Venda ON Cliente.cod = Venda.cod_cliente
INNER JOIN ProdutoVenda ON Venda.cod = ProdutoVenda.cod_venda
INNER JOIN Produto ON Produto.cod = ProdutoVenda.cod_produto

/*Agrupando os dados pelo nome dos clientes e nome dos produtos, 
apresente o nome dos clientes, o nome dos produtos, a quantidade total 
de produtos adquiridos por cada cliente e o valor total gasto por cada cliente.*/

/*Agrupando os dados pelo nome dos clientes*/
SELECT Cliente.nome AS 'Nome do Cliente', 
SUM(ProdutoVenda.qtProduto) AS 'Quantidade Total Produtos', SUM(Produto.preco * ProdutoVenda.qtProduto) AS 'Valor Total'
FROM Cliente
INNER JOIN Venda ON Cliente.cod = Venda.cod_cliente
INNER JOIN ProdutoVenda ON Venda.cod = ProdutoVenda.cod_venda
INNER JOIN Produto ON Produto.cod = ProdutoVenda.cod_produto
GROUP BY Cliente.nome

/*Agrupando os dados pelo nome dos produtos*/
SELECT Produto.descricao AS 'Produto', 
SUM(ProdutoVenda.qtProduto) AS 'Quantidade Total Produtos', SUM(Produto.preco * ProdutoVenda.qtProduto) AS 'Valor Total'
FROM Cliente
INNER JOIN Venda ON Cliente.cod = Venda.cod_cliente
INNER JOIN ProdutoVenda ON Venda.cod = ProdutoVenda.cod_venda
INNER JOIN Produto ON Produto.cod = ProdutoVenda.cod_produto
GROUP BY Produto.descricao

/*Mostrando todos os agrupamentos juntos*/
SELECT Cliente.nome AS 'Nome do Cliente', Produto.descricao AS 'Produto',
SUM(ProdutoVenda.qtProduto) AS 'Quantidade Total Produtos', SUM(Produto.preco * ProdutoVenda.qtProduto) AS 'Valor Total'
FROM Cliente
INNER JOIN Venda ON Cliente.cod = Venda.cod_cliente
INNER JOIN ProdutoVenda ON Venda.cod = ProdutoVenda.cod_venda
INNER JOIN Produto ON Produto.cod = ProdutoVenda.cod_produto
GROUP BY Cliente.nome, Produto.descricao