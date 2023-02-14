CREATE DATABASE loja_pc

USE loja_pc

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

CREATE TABLE Produto (
	cod INT PRIMARY KEY IDENTITY(1,1),
	descricao VARCHAR(50),
	preco DECIMAL(9,2)
)

INSERT INTO Produto (descricao, preco) VALUES ('Mouse Multilaser', 25.50)
INSERT INTO Produto (descricao, preco) VALUES ('Teclado Multilaser', 35.50)
INSERT INTO Produto (descricao, preco) VALUES ('Gabinete CoolerMaster', 250.00)
INSERT INTO Produto (descricao, preco) VALUES ('Cooler CoolerMaster', 65.50)

SELECT * FROM Produto

/*Criando a tabela Venda, e fazendo as relações com as tabelas de Cliente e Produto*/
CREATE TABLE Venda (
	cod INT PRIMARY KEY IDENTITY(1,1),
	quantidade INT,
	data DATE DEFAULT GETDATE(),
	cod_cliente INT,
	cod_produto INT
)

INSERT INTO Venda (quantidade, cod_cliente, cod_produto) VALUES (10, 4, 3)
INSERT INTO Venda (quantidade, cod_cliente, cod_produto) VALUES (2, 1, 2)
INSERT INTO Venda (quantidade, cod_cliente, cod_produto) VALUES (1, 4, 4)
INSERT INTO Venda (quantidade, cod_cliente, cod_produto) VALUES (12, 3, 1)

SELECT * FROM Venda

/*Faça uma seleção na Tabela Venda que apresente o seguinte:
- Código da venda;
- Nome do Cliente;
- Cpf do Cliente;
- Quantidade;
*/
SELECT cod, quantidade, cod_cliente, cod_produto FROM Venda
SELECT cod, nome, cpf FROM Cliente