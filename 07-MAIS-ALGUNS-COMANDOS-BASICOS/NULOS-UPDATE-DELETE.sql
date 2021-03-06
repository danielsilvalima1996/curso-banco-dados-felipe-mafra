SHOW DATABASES;

USE PROJETO;

SHOW TABLES;

SELECT * FROM CLIENTE c  ;

/* FILTRANDO VALORES NULOS */

SELECT NOME, SEXO, ENDERECO 
FROM CLIENTE
WHERE SEXO = 'F';

/* NÃO FUNCIONA ASSIM */
SELECT NOME, SEXO, ENDERECO 
FROM CLIENTE
WHERE EMAIL = NULL;

SELECT NOME, SEXO, ENDERECO 
FROM CLIENTE
WHERE IS NULL;

SELECT NOME, SEXO, ENDERECO 
FROM CLIENTE
WHERE EMAIL IS NOT NULL;

/* IS NULL OU IS NOT NULL */

/* UTILIZANDO O UPDATE PARA ATUALIZAR VALORES */

SELECT NOME, EMAIL 
FROM CLIENTE;

UPDATE CLIENTE 
SET EMAIL = 'LILIAN@HOTMAIL.COM';

SELECT NOME, EMAIL 
FROM CLIENTE;

/* WHERE VAI SER O SEU MELHOR AMIGO DA VIDA PARA VIDA INTEIRA */

SELECT * FROM CLIENTE
WHERE NOME = 'LILIAN';

SELECT * FROM CLIENTE
WHERE NOME = 'JOAO';

UPDATE CLIENTE 
SET EMAIL = 'JOAO@IG.COM.BR'
WHERE NOME = 'JOAO';

UPDATE CLIENTE 
SET EMAIL = 'JORGE@IG.COM.BR'
WHERE NOME = 'JORGE';

UPDATE CLIENTE 
SET EMAIL = 'CARLA@IG.COM.BR'
WHERE NOME = 'CARLA';

/* COMMIT E ROLLBACK VOLTA ESTADOS DO BANCO */

/* DELETANDO REGISTROS COM A CLAUSULA DELETE */

DELETE FROM CLIENTE ;

SELECT COUNT(*) FROM CLIENTE; 

SELECT * FROM CLIENTE
WHERE NOME = 'ANA';

SELECT COUNT(*) FROM CLIENTE
WHERE NOME = 'ANA';

DELETE FROM CLIENTE
WHERE NOME = 'ANA';

SELECT COUNT(*) FROM CLIENTE; 

SELECT 6 * 1 - 3 + 10 * 0;

SELECT * FROM CLIENTE;

INSERT INTO CLIENTE VALUES 
('CARLA', 'F', 'C.LOPES@UOL.COM', 456312789, '23658970', 'RUA COPPER LEAF - WILLIAMBURG - KITCHENER');

SELECT * FROM CLIENTE 
WHERE NOME = 'CARLA'
AND EMAIL = 'LILIAN@HOTMAIL.COM';

DELETE FROM CLIENTE 
WHERE NOME = 'CARLA'
AND EMAIL = 'LILIAN@HOTMAIL.COM';

SELECT * FROM CLIENTE;