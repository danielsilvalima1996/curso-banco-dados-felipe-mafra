/* CRIANDO BANCO DE DADOS */
CREATE DATABASE LIVRARIA;

/* MOSTRAR BANCOS DE DADOS */
SHOW DATABASES;

/* MOSTRAR TABELAS */
SHOW TABLES;

/* SELECIONANDO BANCO DE DADOS */
USE LIVRARIA;

/* CRIANDO TABELA */
CREATE TABLE LIVROS(
    NOME_LIVRO VARCHAR(100),
    NOME_AUTOR VARCHAR(100),
    SEXO_AUTOR CHAR(1),
    NUMEROS_PAGINAS INT(5),
    NOME_EDITORA VARCHAR(30),
    VALOR_LIVRO FLOAT(10,2),
    ESTADO_EDITORA CHAR(2),
    ANO_PUBLICACAO INT(4)
);

/* DESCREVENDO TABELA */
DESC LIVROS;

/* MOSTRAR TABELAS */
SHOW TABLES;

/* INSERINDO DADOS NA TABELA */
INSERT INTO LIVROS (
    NOME_LIVRO,
    NOME_AUTOR,
    SEXO_AUTOR,
    NUMEROS_PAGINAS,
    NOME_EDITORA,
    VALOR_LIVRO,
    ESTADO_EDITORA,
    ANO_PUBLICACAO)
VALUES 
    ('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009),
    ('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018),
    ('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008),
    ('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78.99,'RJ',2018),
    ('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150.98,'RJ',2019),
    ('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016),
    ('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015),
    ('Pra sempre amigas','Leda Silva','F',510,'Insignia',78.98,'ES',2011),
    ('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130.98,'RS',2018),
    ('O poder da mente','Clara Mafra','F',120,'Continental',56.58,'SP',2017);

/* 1 – Trazer todos os dados. */
SELECT * FROM LIVROS;

/*2 – Trazer o nome do livro e o nome da editora*/
SELECT NOME_LIVRO, NOME_EDITORA
FROM LIVROS;

/*3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo M.*/
SELECT NOME_LIVRO, ESTADO_EDITORA 
FROM LIVROS
WHERE SEXO_AUTOR = 'M';

/*VERIFICANDO*/
SELECT NOME_AUTOR, SEXO_AUTOR, NOME_LIVRO, ESTADO_EDITORA 
FROM LIVROS
WHERE SEXO_AUTOR = 'M';

/*4 - Trazer o nome do livro e o número de páginas dos livros publicados por
  autores do sexo F.*/
SELECT NOME_LIVRO, NUMEROS_PAGINAS 
FROM LIVROS
WHERE SEXO_AUTOR = 'F';

/*VERIFICANDO*/
SELECT NOME_AUTOR, NOME_LIVRO, NUMEROS_PAGINAS 
FROM LIVROS
WHERE SEXO_AUTOR = 'F';

/*5 – Trazer os valores dos livros das editoras de São Paulo.*/
SELECT VALOR_LIVRO 
FROM LIVROS
WHERE ESTADO_EDITORA = 'SP';

/*VERIFICANDO*/
SELECT NOME_LIVRO, VALOR_LIVRO, ESTADO_EDITORA
FROM LIVROS
WHERE ESTADO_EDITORA = 'SP';

/*6 – Trazer os dados dos autores do sexo M que tiveram 
 livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).*/
SELECT NOME_AUTOR, SEXO_AUTOR 
FROM LIVROS
WHERE SEXO_AUTOR = 'M'
AND ESTADO_EDITORA IN ('SP', 'RJ');

/*VERIFICANDO*/
SELECT NOME_AUTOR, SEXO_AUTOR, ESTADO_EDITORA 
FROM LIVROS
WHERE SEXO_AUTOR = 'M'
AND ESTADO_EDITORA IN ('SP', 'RJ');