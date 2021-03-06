/* SUBQUERIES */

/* VENDEDOR QUE VENDEU MENOS EM MARCO E O SEU NOME */

/* MENOR VENDEDOR */
SELECT NOME, MARCO AS MENOR_MAR FROM VENDEDORES
WHERE MARCO = (SELECT MIN(MARCO) FROM VENDEDORES); 

/* MAIOR VENDEDOR */
SELECT NOME, MARCO AS MAIOR_MAR FROM VENDEDORES
WHERE MARCO = (SELECT MAX(MARCO) FROM VENDEDORES);

/* VENDEU ACIMA DA MEDIA */

SELECT NOME, FEVEREIRO AS TOTAL_FEV FROM VENDEDORES V
WHERE V.FEVEREIRO > (SELECT AVG(FEVEREIRO) FROM VENDEDORES);

SELECT NOME, MARCO AS TOTAL_MAR FROM VENDEDORES V
WHERE V.MARCO > (SELECT AVG(MARCO) FROM VENDEDORES);

SELECT * FROM VENDEDORES v;

/* TRABALHANDO COM LINHAS */
SELECT NOME,
	   JANEIRO,
	   FEVEREIRO,
	   MARCO,
	   (JANEIRO + FEVEREIRO + MARCO) AS TOTAL,
	   (JANEIRO + FEVEREIRO + MARCO) * 0.25 AS DESCONTO,
	   TRUNCATE((JANEIRO + FEVEREIRO + MARCO)/3,2) AS MEDIA
FROM VENDEDORES v ;