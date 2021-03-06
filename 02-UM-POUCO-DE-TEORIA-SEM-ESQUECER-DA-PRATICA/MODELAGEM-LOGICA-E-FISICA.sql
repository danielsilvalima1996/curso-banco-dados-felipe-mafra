/* Modelagem básica - 

ENTIDADE=TABELA 
CAMPOS=ATRIBUTOS*/

CLIENTE

NOME - CARACTER(30)
CPF - CARACTER(11)
EMAIL - CARACTER(30)
TELEFONE - CARACTER(30)
ENDERECO - CARACTER(100)
SEXO - CARACTER(1)

/* PROCESSOS DE MODELAGEM */

/* FASE 01 E FASE 02 - AD ADM DE DADOS */
MODELAGEM CONCEITUAL - RASCUNHO DO PROJETO
MODELAGEM LÓGICA - QUALQUER PROGRAMA DE MODELAGEM

/* FASE 03 - DBA / AD */
MODELAGEM FÍSICA - SCRIPTS DE BANCO

/* INICIANDO A MODELAGEM FÍSICA */

/* CRIANDO O BANCO DE DADOS */

CREATE DATABASE EXEMPLO;

CREATE DATABASE PROJETO;

/* CONECTANDO AO BANCO */
SHOW DATABASES;
USE PROJETO;

/* CRIANDO A TABELA CLIENTES */

CREATE TABLE CLIENTE(
    NOME VARCHAR(30),
    SEXO CHAR(1),
    EMAIL VARCHAR(30),
    CPF INT(11),
    TELEFONE VARCHAR(30),
    ENDERECO VARCHAR(100)
);

/* VERIFICAR TABELAS */
SHOW TABLES;

/* DESCOBRINDO COMO É A ESTRUTURA DE UMA TABELA */
USE PROJETO;
DESC CLIENTE;