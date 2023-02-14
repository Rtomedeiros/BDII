/*Criando o BD para cadastro de autom�veis*/
CREATE DATABASE cadastro_veiculos

USE cadastro_veiculos

CREATE TABLE Veiculo (
	codigo INT IDENTITY(1,1) PRIMARY KEY,
	placa VARCHAR(10),
	proprietario VARCHAR(50),
	marca VARCHAR(30),
	categoria VARCHAR(30),
	ano_fab INT
)

/*3.1) Apresente todos os dados inseridos*/
SELECT * FROM Veiculo

/*3.2) Apresente o c�digo e a marca do ve�culo com data de fabrica��o mais atual*/
SELECT codigo, marca FROM Veiculo WHERE ano_fab = '2015'

/*3.3) Apresente o c�digo e a marca do ve�culo com data de fabrica��o mais antiga*/
SELECT codigo, marca FROM Veiculo WHERE ano_fab = '1980'

/*3.4) Apresente o nome das marcas em ordem alfab�tica*/
SELECT marca FROM Veiculo ORDER BY marca ASC

/*3.5) Altere marca do carro com c�digo = 2*/
UPDATE Veiculo SET marca = 'Chevrolet Onix' WHERE codigo = 2
SELECT * FROM Veiculo