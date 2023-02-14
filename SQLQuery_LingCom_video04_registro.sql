CREATE DATABASE registro

USE registro

CREATE TABLE Credenciais(
	cod INT IDENTITY(1,1) PRIMARY KEY,
	login VARCHAR(50),
	senha VARCHAR(50),
	email VARCHAR(100)
)

SELECT * FROM Credenciais