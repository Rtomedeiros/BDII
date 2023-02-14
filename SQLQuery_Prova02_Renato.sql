/*Criando o BD para cadastro de automóveis*/
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

/*3.2) Apresente o código e a marca do veículo com data de fabricação mais atual*/
SELECT codigo, marca FROM Veiculo WHERE ano_fab = '2015'

/*3.3) Apresente o código e a marca do veículo com data de fabricação mais antiga*/
SELECT codigo, marca FROM Veiculo WHERE ano_fab = '1980'

/*3.4) Apresente o nome das marcas em ordem alfabética*/
SELECT marca FROM Veiculo ORDER BY marca ASC

/*3.5) Altere marca do carro com código = 2*/
UPDATE Veiculo SET marca = 'Chevrolet Onix' WHERE codigo = 2
SELECT * FROM Veiculo