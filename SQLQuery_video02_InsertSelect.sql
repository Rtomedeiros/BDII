CREATE DATABASE test

USE test

CREATE TABLE Cliente (
	cod INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	data DATE DEFAULT GETDATE(),
	cpf varchar(16)
)

INSERT INTO Cliente (nome, cpf) VALUES ('Maria', '123.456.789-12')
INSERT INTO Cliente (nome, cpf) VALUES ('João', '123.456.789-13')
INSERT INTO Cliente (nome, cpf) VALUES ('Paulo', '123.456.789-19')
INSERT INTO Cliente (nome, cpf) VALUES ('Renata', '123.456.789-20')

SELECT * FROM Cliente
SELECT nome FROM Cliente
SELECT cod FROM Cliente
SELECT cpf FROM Cliente

CREATE TABLE Produto (
	cod INT PRIMARY KEY IDENTITY(1,1),
	descricao VARCHAR(50),
	preco DECIMAL(9,2)
)

INSERT INTO Produto (descricao, preco) VALUES ('Mouse Multilaser', 25.50)
INSERT INTO Produto (descricao, preco) VALUES ('Teclado Multilaser', 35.50)
INSERT INTO Produto (descricao, preco) VALUES ('Gabinete', 250.00)
INSERT INTO Produto (descricao) VALUES ('Cooler')

SELECT * FROM Produto
SELECT descricao FROM Produto
SELECT preco FROM Produto
SELECT cod FROM Produto

SELECT MAX(preco) FROM Produto
SELECT MIN(preco) FROM Produto

SELECT descricao FROM Produto ORDER BY descricao DESC
SELECT descricao FROM Produto ORDER BY descricao ASC
SELECT preco FROM Produto ORDER BY preco DESC
SELECT preco FROM Produto ORDER BY preco ASC

SELECT preco, descricao FROM Produto ORDER BY preco ASC
SELECT preco, descricao, cod FROM Produto ORDER BY preco ASC

