--Criando um banco de Dados
CREATE DATABASE maternidade;

--Criando as tabelas
CREATE TABLE crianca (
nome VARCHAR (50) NOT NULL,
peso DECIMAL (5,2) NOT NULL,
altura FLOAT,
datanascimento DATE NOT NULL,
id INT (10) PRIMARY KEY
);

CREATE TABLE nascimento(
id INT (10) PRIMARY KEY,
medico VARCHAR(50) NOT NULL,
idcrianca INT (10) NOT NULL,
idmae INT (10) NOT NULL
);


CREATE TABLE mae(
datanascimento DATE NOT NULL,
id INT (10) PRIMARY KEY,
nome VARCHAR (50) NOT NULL,
endereco VARCHAR (50) NOT NULL,
telefone VARCHAR(15) NOT NULL
);


CREATE TABLE medico (
 id INT (10) PRIMARY KEY,
 nome VARCHAR (50) NOT NULL,
 especialidade VARCHAR (20) NOT NULL,
 crm INT (6) NOT NULL
);


--inserindo os dados do médico
INSERT INTO medico (id, nome, especialidade, crm)
VALUES ("11245", "Juliana Alves Albuquerque", "Obstreticia", "123584"),
("11246", "Pedro  Da Silva santos", "Nutrologia e Pediatrica", "658985"),
("11546", "Vinicius Lima De Oliveira", "Neonatologia", "458755"),
("11468", "Bruna Paes Chavez", "Obstreticia", "246585");

--Deletando registro da especialidade Neonatologia
DELETE FROM medico WHERE especialidade = "Neonatologia";

--Deletando dados da tabela medico
DELETE FROM medico;

--Deletando as tabelas
DROP TABLE medico;

DROP TABLE nascimento;

DROP TABLE crianca;

DROP TABLE mae;

--Apagando banco de dados
DROP DATABASE maternidade;



