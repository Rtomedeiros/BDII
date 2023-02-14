CREATE DATABASE escola

USE escola

CREATE TABLE Aluno (
	cod INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	data_nasc DATE,
	cidade VARCHAR(20)
)

SELECT * FROM Aluno

CREATE TABLE Matricula (
	cod INT PRIMARY KEY IDENTITY(1,1),
	credito DECIMAL(9,2),
	cod_aluno INT
)

SELECT * FROM Matricula

CREATE TABLE Disciplina (
	cod INT PRIMARY KEY IDENTITY(1,1),
	descricao VARCHAR(50),
	qtde_credito DECIMAL(9,2)
)

SELECT * FROM Disciplina

/*Populando as tabelas*/
INSERT INTO Aluno (nome, data_nasc, cidade)
VALUES ('Tuka Pereira', '31/07/1995', 'Ituiutaba'),
('João Tuta', '09/10/1992', 'Ituiutaba'),
('Joaquina Braga', '18/03/1997', 'Uberlândia'),
('Mariquinha Junqueira', '03/12/1994', 'São Simão'),
('Alberto dos Santos', '19/05/1994', 'Ituiutaba')

INSERT INTO Matricula (credito, cod_aluno)
VALUES (70.00, 5),
(98.00, 1),
(74.00, 3),
(35.00, 2),
(100.00, 4)

INSERT INTO Disciplina (descricao, qtde_credito)
VALUES ('Português', 100.00),
('Matemática', 100.00),
('Ciências', 100.00),
('História', 100.00),
('Geografia', 100.00)

/*Apresentar o nome de todos os alunos cadastrados em ordem alfabética*/
SELECT nome FROM Aluno ORDER BY nome ASC

/*Apresentar o nome de todas as disciplinas cadastradas em ordem alfabética*/
SELECT descricao FROM Disciplina ORDER BY descricao ASC

/*Apresentar o nome de todas as matriculas realizadas com os seguintes dados:
- Código da Matrícula
- Nome do aluno matriculado
- Data de nascimento do aluno matriculado
*/
SELECT cod, credito, cod_aluno FROM Matricula
SELECT nome FROM Aluno
SELECT data_nasc FROM Aluno
