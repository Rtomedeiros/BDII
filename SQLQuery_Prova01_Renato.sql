/* Prova 01 - Banco de Dados II
Data: 15/06/2021
Aluno: Renato Medeiros Guimarães */

/* 1-Elaborar um banco de dados a partir do seguinte Diagrama
Entidade e Relacionamento (DER) de uma agência hipotética: */
CREATE DATABASE empresa_P01
USE empresa_P01

CREATE TABLE Setor (
	cod INT IDENTITY(1,1) PRIMARY KEY,
	titulo VARCHAR(50)
)
CREATE TABLE Cargo(
	cod INT IDENTITY(1,1) PRIMARY KEY,
	titulo VARCHAR(50),
	cod_setor INT
)
CREATE TABLE Funcionario (
	cod INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(50),
	cod_cargo INT,
	salario DECIMAL(9,2)
)
CREATE TABLE Dependente (
	cod INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(50),
	cod_funcionario INT
)

SELECT * FROM Setor
SELECT * FROM Cargo
SELECT * FROM Funcionario
SELECT * FROM Dependente

/* Após criar as tabelas, fazer as relações entre as tabelas através das 
chaves estrangeiras (Foreign Keys):
- Tabela Cargo: cod_setor - FK_Cargo_Setor
- Tabela Funcionario: cod_cargo - FK_Funcionario_Cargo
- Tabela Dependente: cod_funcionario - FK_Dependente_Funcionario */

/* 2-Insira, pelo menos, três itens para cada tabela e faça o seguinte: */
INSERT INTO Setor (titulo) VALUES ('Administração')
INSERT INTO Setor (titulo) VALUES ('Recursos Humanos')
INSERT INTO Setor (titulo) VALUES ('Produção')

INSERT INTO Cargo (titulo, cod_setor) VALUES ('Gerente', 1)
INSERT INTO Cargo (titulo, cod_setor) VALUES ('Secretaria', 2)
INSERT INTO Cargo (titulo, cod_setor) VALUES ('Auxiliar', 3)

INSERT INTO Funcionario (nome, cod_cargo, salario) 
VALUES ('João Pereira', 1, 4000.00)
INSERT INTO Funcionario (nome, cod_cargo, salario) 
VALUES ('Pedro Dantas', 3, 2000.00)
INSERT INTO Funcionario (nome, cod_cargo, salario) 
VALUES ('Maria da Silva', 2, 3000.00)

INSERT INTO Dependente (nome, cod_funcionario) VALUES ('Juca da Silva', 3)
INSERT INTO Dependente (nome, cod_funcionario) VALUES ('Duda Pereira', 1)
INSERT INTO Dependente (nome, cod_funcionario) VALUES ('Mariquinha da Silva', 3)

/*Apresente todos os dados inseridos em todas as tabelas*/
SELECT * FROM Setor
SELECT * FROM Cargo
SELECT * FROM Funcionario
SELECT * FROM Dependente

/*Altere o nome do funcionário com código = 2*/
UPDATE Funcionario SET nome = 'Mario Pulos' WHERE cod = 2
SELECT * FROM Funcionario

/*Apresente o nome de todos os funcionários que trabalhem no cargo com código = 1*/
SELECT nome FROM Funcionario WHERE cod_cargo = 1

/*Apresente o nome de todos os setores em ordem alfabética*/
SELECT titulo FROM Setor ORDER BY titulo ASC

/*Apresente o somatório do salário de todos os funcionários cadastrados na agência*/
SELECT SUM(salario) FROM Funcionario

/*Apresente o maior salário cadastrado no banco*/
SELECT MAX(Salario) FROM Funcionario

/*Apresente o nome de todos os funcionários que atuam no cargo de código = 3*/
SELECT nome FROM Funcionario WHERE cod_cargo = 3

/*Apresente o nome do funcionário, o título do seu cargo e o nome do(s) seu(s) dependente(s)*/
SELECT Funcionario.nome, Cargo.titulo, Dependente.nome FROM Setor
INNER JOIN Cargo ON Setor.cod = Cargo.cod_setor
INNER JOIN Funcionario ON Cargo.cod = Funcionario.cod_cargo
INNER JOIN Dependente ON Funcionario.cod = Dependente.cod_funcionario

/*Delete o nome de todos os dependentes do funcionario de código = 3*/
DELETE FROM Dependente WHERE cod_funcionario = 3
SELECT * FROM Dependente