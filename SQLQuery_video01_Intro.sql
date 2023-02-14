CREATE DATABASE nomeBanco

USE nomeBanco

CREATE TABLE Cliente (
	nome VARCHAR(100),
	cpf VARCHAR(20),
	idade INT,
	data_nascimento DATE
)

INSERT INTO Cliente (nome, cpf, idade, data_nascimento)
VALUES ('João', '123.123.123-12', 30, '01/01/1990')

SELECT * FROM Cliente

INSERT INTO Cliente (nome, cpf, idade, data_nascimento)
VALUES ('Maria', '123.123.123-10', 30, '15/01/1990')

INSERT INTO Cliente (nome, cpf, idade, data_nascimento)
VALUES ('Pedro', '123.456.789-10', 30, '17/09/1990')


