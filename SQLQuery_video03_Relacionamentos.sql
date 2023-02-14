CREATE DATABASE chave

USE chave

CREATE TABLE setor (
	cod INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50)
)

CREATE TABLE cargo (
	cod INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(50),
	setor INT
)

CREATE TABLE funcionario (
	cod INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	cargo INT
)

INSERT INTO setor (nome) VALUES ('Recursos Humanos')

SELECT * FROM setor

INSERT INTO cargo (titulo, setor) VALUES ('Secretaria', 1)

SELECT * FROM cargo

INSERT INTO funcionario (nome, cargo) VALUES ('Maria Andrade', 1)

SELECT * FROM funcionario

/*Usando a Interface do Management Studio, no Object Explorer, 
vai no BD criado "chave", nas tabelas, seleciona as tabelas 
que ter�o as chaves estrangeiras, que s�o a "cargo" e "funcionario".

Clica com o bot�o direito em cargo, seleciona Design.

O atributo "setor" da tabela "cargo" � chave estrangeira da tabela "setor".

Clica com o bot�o direito no atributo "setor", seleciona Relationships

Seleciona Add, vai em tabelas e colunas, abre o +, e seleciona os ...

Seleciona a primary key da tabela "setor". (cod -> setor)

A foreign key ser� o atributo "setor"na tabela "cargo". (setor -> cargo)

- FK_cargo_setor

Da OK na Relationships e Salva. (Mostra um aviso sobre as altera��es)

Seguir as mesmas instru��es para o atributo "cargo" da tabela "funcionario", 
que � chave estrangeira da tabela "cargo".

- FK_funcionario_cargo

Observa-se as altera��es nas pastas de colunas das tabelas no campo Object Explorer.*/

SELECT * FROM setor
SELECT * FROM cargo
SELECT * FROM funcionario

/*INSERT INTO funcionario (nome, cargo) VALUES ('Jo�o Andrade', 2)*/

INSERT INTO funcionario (nome, cargo) VALUES ('Jo�o Andrade', 1)

/*Usando um cargo que existe "1", � poss�vel ser inserido um funcion�rio.*/