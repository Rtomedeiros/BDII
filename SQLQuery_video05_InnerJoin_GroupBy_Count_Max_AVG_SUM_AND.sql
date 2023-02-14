CREATE DATABASE Atv3

USE Atv3

CREATE TABLE Cliente (
	cod INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(50),
	data_nascimento DATE,
	cidade VARCHAR(50)
)

SELECT * FROM Cliente

CREATE TABLE Venda (
	cod INT IDENTITY(1,1) PRIMARY KEY,
	data DATE,
	cod_cliente INT,
	valor DECIMAL(9,2)
)

SELECT * FROM Venda

INSERT INTO Cliente (nome, data_nascimento, cidade)
VALUES ('Igor', '01/01/2000', 'Itumbiara')
INSERT INTO Cliente (nome, data_nascimento, cidade)
VALUES ('Maria', '01/01/2000', 'Itumbiara')
INSERT INTO Cliente (nome, data_nascimento, cidade)
VALUES ('João', '01/01/2000', 'Itumbiara')
INSERT INTO Cliente (nome, data_nascimento, cidade)
VALUES ('Patrícia', '01/01/2000', 'Itumbiara')

SELECT * FROM Cliente

INSERT INTO Venda (data, cod_cliente, valor)
VALUES ('01/01/2000', 1, 500.00)
INSERT INTO Venda (data, cod_cliente, valor)
VALUES ('01/01/2000', 1, 200.00)
INSERT INTO Venda (data, cod_cliente, valor)
VALUES ('01/01/2000', 2, 500.00)
INSERT INTO Venda (data, cod_cliente, valor)
VALUES ('01/01/2000', 1, 50.00)
INSERT INTO Venda (data, cod_cliente, valor)
VALUES ('01/01/2000', 2, 3.00)

SELECT * FROM Venda

/*INNER JOIN*/
SELECT Venda.cod, Venda.data, Cliente.nome, Venda.valor FROM Venda
INNER JOIN Cliente ON Cliente.cod = Venda.cod_cliente

/*Podem haver vários clientes com o mesmo nome.*/
INSERT INTO Cliente (nome, data_nascimento, cidade)
VALUES ('Igor', '01/01/2000', 'Itumbiara')
INSERT INTO Cliente (nome, data_nascimento, cidade)
VALUES ('Igor', '01/01/2000', 'Itumbiara')
INSERT INTO Cliente (nome, data_nascimento, cidade)
VALUES ('Igor', '01/01/2000', 'Itumbiara')

SELECT * FROM Cliente

/*Group By*/
SELECT nome FROM Cliente GROUP BY nome
SELECT data_nascimento FROM Cliente GROUP BY data_nascimento

/*SUM*/
SELECT Cliente.nome, SUM(Venda.valor) AS Total FROM Venda
INNER JOIN Cliente ON Cliente.cod = Venda.cod_cliente
GROUP BY nome

SELECT SUM(valor) FROM Venda

/*MAX e MIN*/
SELECT MAX(valor) FROM Venda
SELECT MIN(valor) FROM Venda

/*AVG (Média)*/
SELECT AVG(valor) FROM Venda

/*COUNT*/
SELECT COUNT(*) FROM Cliente
SELECT COUNT(*) FROM Venda

/*AND*/
SELECT * FROM Cliente WHERE nome = 'Igor' AND cod = 7