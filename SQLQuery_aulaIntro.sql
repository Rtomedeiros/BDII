CREATE DATABASE aulaIntro

USE aulaIntro

CREATE TABLE Cliente (
	nome VARCHAR(100),
	cpf VARCHAR(20),
	idade INT,
	data_nascimento DATE
)

INSERT INTO Cliente(nome, cpf, idade, data_nascimento)
VALUES ('Maria', '123.123.123.12', 30, '23/09/1991')

SELECT * FROM Cliente

DELETE FROM Cliente