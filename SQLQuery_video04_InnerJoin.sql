CREATE DATABASE testeJoin

USE testeJoin

CREATE TABLE Cliente (
	cod INT IDENTITY (1,1),
	nome VARCHAR(50)
)

CREATE TABLE Venda (
	cod INT IDENTITY (1,1),
	cod_cliente INT,
	valor DECIMAL (9,2)
)

SELECT * FROM Cliente
SELECT * FROM Venda

/*Para o exemplo, não é necessário fazer a relaçao entre as duas tabelas com o codigo do cliente*/
/*FK_Venda_Cliente*/

INSERT INTO Cliente (nome) VALUES ('Igor')
INSERT INTO Cliente (nome) VALUES ('Maria')
INSERT INTO Cliente (nome) VALUES ('Pedro')
INSERT INTO Cliente (nome) VALUES ('Renato')
INSERT INTO Cliente (nome) VALUES ('João')

SELECT * FROM Cliente

INSERT INTO Venda (cod_cliente, valor) VALUES (4, 550.00)
INSERT INTO Venda (cod_cliente, valor) VALUES (5, 3550.00)

SELECT * FROM Venda

SELECT * FROM Venda INNER JOIN Cliente ON Venda.cod_cliente = Cliente.cod

/*Junta-se os atributos das duas tabelas,
usando a relação entre elas através da "foreign key" (FK)*/

SELECT Venda.valor, Cliente.nome FROM Venda INNER JOIN Cliente ON Venda.cod_cliente = Cliente.cod

SELECT Venda.valor, Cliente.cod, Cliente.nome FROM Venda
INNER JOIN Cliente ON Venda.cod_cliente = Cliente.cod

SELECT Cliente.cod, Cliente.nome, Venda.valor FROM Venda
INNER JOIN Cliente ON Venda.cod_cliente = Cliente.cod