CREATE DATABASE empresa

USE empresa

CREATE TABLE Funcionario (
	cod INT PRIMARY KEY IDENTITY (1,1),
	primNome VARCHAR(15),
	segNome VARCHAR(15),
	ultNome VARCHAR(15),
	dataNasc DATE,
	cpf VARCHAR(20),
	rg VARCHAR(20),
	endereco VARCHAR(50),
	cep VARCHAR(10),
	cidade VARCHAR(50),
	fone VARCHAR(20),
	funcao VARCHAR(50),
	salario DECIMAL (9,2),
	codigo_depart INT
)

SELECT * FROM Funcionario

CREATE TABLE Departamento (
	cod INT PRIMARY KEY IDENTITY (1,1),
	nome VARCHAR(50),
	localizacao VARCHAR(50),
	cod_func_gerente INT
)

SELECT * FROM Departamento

/*Lembrar após criar as tabelar configurar as Foreign Keys*/
/*codigo_depart é a FK na tabela Funcionario - FK_Funcionario_Departamento*/

/*Populando as Tabelas*/
INSERT INTO Departamento (nome, localizacao, cod_func_gerente)
VALUES ('Gerencia', 'Sala 58, 5º Andar', 1)
INSERT INTO Departamento (nome, localizacao, cod_func_gerente)
VALUES ('Administração', 'Sala 52, 5º Andar', 2)
INSERT INTO Departamento (nome, localizacao, cod_func_gerente)
VALUES ('Infra Estrutura', 'Sala 21, 2º Andar', 3)
INSERT INTO Departamento (nome, localizacao, cod_func_gerente)
VALUES ('Produção', 'Sala 04, 1º Andar', 4)

SELECT * FROM Departamento


INSERT INTO Funcionario (primNome, segNome, ultNome, dataNasc, cpf, rg, 
endereco, cep, cidade, fone, funcao, salario, codigo_depart)
VALUES ('João', 'Alberto', 'Silva', '08/12/1984', '123.456.789-01', '11222333', 
		'Rua 19, 21, Centro', '38300000', 'Ituiutaba', '34911112222', 'Gerente', 4500.00, 1)
INSERT INTO Funcionario (primNome, segNome, ultNome, dataNasc, cpf, rg, 
endereco, cep, cidade, fone, funcao, salario, codigo_depart)
VALUES ('Joana', 'Almeida', 'Bonanza', '14/06/1988', '123.456.789-02', '11222123', 
		'Avenida Bandeirantes, 4, Jumanji', '12345678', 'Uberlândia', '34967891011', 'Administradora', 3500.00, 2)
INSERT INTO Funcionario (primNome, segNome, ultNome, dataNasc, cpf, rg, 
endereco, cep, cidade, fone, funcao, salario, codigo_depart)
VALUES ('Paulo', 'Junqueira', 'Limoeiro', '31/12/1982', '123.456.789-03', '11222456', 
		'Rua Tomate, 1021, Palmeira', '38300456', 'Ituiutaba', '34965651212', 'Chefe de Produção', 2500.00, 4)
INSERT INTO Funcionario (primNome, segNome, ultNome, dataNasc, cpf, rg, 
endereco, cep, cidade, fone, funcao, salario, codigo_depart)
VALUES ('Julia', 'Arantes', 'Costa', '12/04/1990', '123.456.789-04', '10200300', 
		'Rua 12, 101, Centro', '38300000', 'Ituiutaba', '34963632222', 'Tecnico de TI', 3000.00, 3)
INSERT INTO Funcionario (primNome, segNome, ultNome, dataNasc, cpf, rg, 
endereco, cep, cidade, fone, funcao, salario, codigo_depart)
VALUES ('Marcos', 'Silva', 'Santos', '07/07/1983', '123.456.789-05', '10018444', 
		'Rua Jurubeba, 8536, Tapajos', '15105501', 'Uberlândia', '34988000001', 'Auxiliar de Produção', 1800.00, 4)

SELECT * FROM Funcionario


/*Listar nome e sobrenome ordenado por sobrenome.*/
SELECT segNome, primNome FROM Funcionario ORDER BY segNome ASC

/*Listar os funcionarios que tem salário superior a R$ 1.000,00 ordenados pelo nome completo.*/
SELECT primNome, segNome, ultNome, salario FROM Funcionario WHERE salario > '1000.00' ORDER BY primNome ASC

/*Liste a data de nascimento e o primeiro nome dos funcionários ordenados do mais novo para o mais velho.*/
SELECT dataNasc, primNome FROM Funcionario ORDER BY dataNasc DESC

/*Liste os funcionários como uma listagem telefônica*/
SELECT primNome, endereco, fone FROM Funcionario ORDER BY primNome ASC