CREATE DATABASE bd_SuperCarros
USE bd_SuperCarros

CREATE TABLE Carro (
	id INT IDENTITY(1,1) PRIMARY KEY,
	imagem VARCHAR(300) NOT NULL,
	marca VARCHAR(50) NOT NULL,
	nome VARCHAR(50) NOT NULL,
	velMax INT NOT NULL,
	potencia INT NOT NULL,
	motor INT NOT NULL,
	aceleracaoTempo DECIMAL(10,2) NOT NULL,
	peso INT NOT NULL
)

SELECT * FROM Carro

SELECT id, imagem, marca, nome, velMax, potencia, motor, aceleracaoTempo, peso FROM Carro WHERE id = 1

SELECT MAX(id) FROM Carro





DROP TABLE Carro