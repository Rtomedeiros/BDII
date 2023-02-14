/*ENTREGA 04 - BD II*/
/*Aluno: Renato Medeiros Guimarães*/

/*Questão 03 - Crie o BD para o esquema abaixo:*/
CREATE DATABASE escola_02
USE escola_02

CREATE TABLE Professor (
	numero_prof INT IDENTITY(1,1) PRIMARY KEY,
	profNome VARCHAR(50),
	profRua VARCHAR(30),
	profCidade VARCHAR(30)
)
SELECT * FROM Professor

CREATE TABLE Aluno (
	numero_aluno INT IDENTITY(1,1) PRIMARY KEY,
	alunoNome VARCHAR(50),
	alunoRua VARCHAR(30),
	alunoCidade VARCHAR(30)
)
SELECT * FROM Aluno

CREATE TABLE Disciplina (
	codigo_disc INT IDENTITY(1,1) PRIMARY KEY,
	nome_disc VARCHAR(50),
	nome_curso VARCHAR(50),
	qntd_aula INT
)
SELECT * FROM Disciplina

CREATE TABLE Matricula (
	numero_aluno INT,
	codigo_disc INT,
	ano VARCHAR(10)
)
SELECT * FROM Matricula
/*Fazer as relações entre a tabela matricula com Aluno e Disciplina*/
/*FK_Matricula_Aluno*/
/*FK_Matricula_Disciplina*/

CREATE TABLE ProfDisc (
	codigo_disc INT,
	numero_prof INT,
	ano VARCHAR(10)
)
SELECT * FROM ProfDisc
/*Fazer as relações entre a tabela matricula com Aluno e Disciplina*/
/*FK_ProfDisc_Disciplina*/
/*FK_ProfDisc_Professor*/

/*Questão 04 - Insira para cada table os registros:*/
INSERT INTO Aluno VALUES (' Tiago Mateus Junior', '210', 'Palmas')
INSERT INTO Aluno VALUES ('Luciana Gomes', '202', 'Palmas')
INSERT INTO Aluno VALUES ('João Mateus', '2300', 'Gurupi')
INSERT INTO Aluno VALUES ('José Silva', '1024', 'Paraíso')
INSERT INTO Aluno VALUES ('Juraci', '106', 'Miranorte')
INSERT INTO Aluno VALUES ('Paulo', '101', 'Goianorte')
INSERT INTO Aluno VALUES ('Adriana Calcanhoto', 'rua Alvorada', 'Paraíso')
INSERT INTO Aluno VALUES ('Rosane', 'rua das flores', 'Guaraí')
INSERT INTO Aluno VALUES ('Mara', 'rua das águas', 'Porto Nacional')
INSERT INTO Aluno VALUES ('Julia', 'rua de madeira', 'Paraíso')
INSERT INTO Aluno VALUES ('Julia', 'rua de madeira', 'Palmas')
SELECT * FROM Aluno

INSERT INTO Professor VALUES ('João José', '103', 'Palmas')
INSERT INTO Professor VALUES ('Maria José', '201', 'Palmas')
INSERT INTO Professor VALUES ('Bruno', '305', 'Paraiso')
INSERT INTO Professor VALUES ('José Ricardo', '1106', 'Porto Nacional')
INSERT INTO Professor VALUES ('Manuela', '120', 'Araguaína')
INSERT INTO Professor VALUES ('Bruno', '1003', 'Porto Nacional')
INSERT INTO Professor VALUES ('Luciana', ' 100', 'Miracema')
INSERT INTO Professor VALUES ('Paulo', ' 150', 'Palmas')
INSERT INTO Professor VALUES ('Lual', '1006', 'Paraíso')
INSERT INTO Professor VALUES ('Antonio Marcos', '170', 'Araguaína')
SELECT * FROM Professor

INSERT INTO Disciplina (nome_disc, nome_curso, qntd_aula) 
VALUES ('Química', 'Ensino Médio', 4)
INSERT INTO Disciplina (nome_disc, nome_curso, qntd_aula) 
VALUES ('Biologia', 'Ensino Médio', 4)
INSERT INTO Disciplina (nome_disc, nome_curso, qntd_aula) 
VALUES ('História', 'Ensino Médio', 2)
INSERT INTO Disciplina (nome_disc, nome_curso, qntd_aula) 
VALUES ('Religião', 'Ensino Médio', 2)
INSERT INTO Disciplina (nome_disc, nome_curso, qntd_aula) 
VALUES ('Português', 'Ensino Pós Médio', 4)
INSERT INTO Disciplina (nome_disc, nome_curso, qntd_aula) 
VALUES ('Física', 'Ensino Pós Médio', 6)
INSERT INTO Disciplina (nome_disc, nome_curso, qntd_aula) 
VALUES ('Matemática', 'Ensino Pós Médio', 4)
INSERT INTO Disciplina (nome_disc, nome_curso, qntd_aula) 
VALUES ('Geografia ', 'Ensino Pós Médio', 2)
INSERT INTO Disciplina (nome_disc, nome_curso, qntd_aula) 
VALUES ('Informática Aplicada', 'CST Sistemas para Internet', 4)
INSERT INTO Disciplina (nome_disc, nome_curso, qntd_aula) 
VALUES ('Banco de dados', 'CST Sistemas para Internet', 4)
INSERT INTO Disciplina (nome_disc, nome_curso, qntd_aula) 
VALUES ('Programação de Banco de dados', 'Computação', 4)
SELECT * FROM Disciplina

INSERT INTO Matricula (numero_aluno, codigo_disc, ano) VALUES (1, 10, '2018')
INSERT INTO Matricula (numero_aluno, codigo_disc, ano) VALUES (1, 4, '2018')
INSERT INTO Matricula (numero_aluno, codigo_disc, ano) VALUES (1, 6, '2018')
INSERT INTO Matricula (numero_aluno, codigo_disc, ano) VALUES (5, 3, '2018')
INSERT INTO Matricula (numero_aluno, codigo_disc, ano) VALUES (6, 1, '2018')
INSERT INTO Matricula (numero_aluno, codigo_disc, ano) VALUES (2, 6, '2018')
INSERT INTO Matricula (numero_aluno, codigo_disc, ano) VALUES (7, 9, '2018')
INSERT INTO Matricula (numero_aluno, codigo_disc, ano) VALUES (8, 10, '2018')
INSERT INTO Matricula (numero_aluno, codigo_disc, ano) VALUES (9, 1, '2018')
INSERT INTO Matricula (numero_aluno, codigo_disc, ano) VALUES (2, 2, '2018')
INSERT INTO Matricula (numero_aluno, codigo_disc, ano) VALUES (11, 11, '2018')
SELECT * FROM Matricula

INSERT INTO ProfDisc (codigo_disc, numero_prof, ano) VALUES (1, 10, '2018')
INSERT INTO ProfDisc (codigo_disc, numero_prof, ano) VALUES (2, 5, '2018')
INSERT INTO ProfDisc (codigo_disc, numero_prof, ano) VALUES (3, 7, '2018')
INSERT INTO ProfDisc (codigo_disc, numero_prof, ano) VALUES (4, 4, '2018')
INSERT INTO ProfDisc (codigo_disc, numero_prof, ano) VALUES (5, 9, '2018')
INSERT INTO ProfDisc (codigo_disc, numero_prof, ano) VALUES (6, 2, '2018')
INSERT INTO ProfDisc (codigo_disc, numero_prof, ano) VALUES (7, 3, '2018')
INSERT INTO ProfDisc (codigo_disc, numero_prof, ano) VALUES (8, 9, '2018')
INSERT INTO ProfDisc (codigo_disc, numero_prof, ano) VALUES (9, 6, '2018')
INSERT INTO ProfDisc (codigo_disc, numero_prof, ano) VALUES (10, 3, '2018')
INSERT INTO ProfDisc (codigo_disc, numero_prof, ano) VALUES (11, 5, '2018')
SELECT * FROM ProfDisc

/*Questão 05 - Realize as seguintes consultas:*/

/*- Crie uma consulta que mostre todos os nomes dos professores do curso 
de CST Sistemas para Internet*/
SELECT Professor.profNome FROM Professor
INNER JOIN ProfDisc ON Professor.numero_prof = ProfDisc.numero_prof
INNER JOIN Disciplina ON ProfDisc.codigo_disc = Disciplina.codigo_disc
WHERE Disciplina.nome_curso = 'CST Sistemas para Internet'

/*- Crie uma consulta com todos os nomes de alunos matriculados no ano de 2018*/
SELECT Aluno.alunoNome FROM Aluno
INNER JOIN Matricula ON Aluno.numero_aluno = Matricula.numero_aluno
WHERE Matricula.ano = '2018'
GROUP BY Aluno.alunoNome

/*- Crie uma consulta que mostre o nome dos professores e a média de aulas 
que ministram*/
SELECT Professor.profNome, AVG(Disciplina.qntd_aula)  AS 'Média Aula' FROM Professor
INNER JOIN ProfDisc ON Professor.numero_prof = ProfDisc.numero_prof
INNER JOIN Disciplina ON ProfDisc.codigo_disc = Disciplina.codigo_disc
GROUP BY Professor.profNome

/*- Crie uma consulta que mostre todos os professores que moram em Palmas*/
SELECT profNome FROM Professor WHERE profCidade = 'Palmas'

/*- Crie uma consulta que mostre o nome do aluno, nome do curso, 
código e nome das disciplinas matriculadas de todos os alunos*/
SELECT Aluno.alunoNome, Disciplina.nome_curso, Disciplina.codigo_disc,
Disciplina.nome_disc FROM Aluno
INNER JOIN Matricula ON Aluno.numero_aluno = Matricula.numero_aluno
INNER JOIN Disciplina ON Matricula.codigo_disc = Disciplina.codigo_disc
