/* É UM BLOCO DE LINGUAGEM DE PROGRAMAÇÃO.
PROGRAMAS SÃO UNIDADES QUE PODEM SER CHAMADAS DE BLOCOS
ANONIMOS. BLOCOS ANONIMOS NÃO RECEBEM NOMES, POIS NÃO 
SÃO SALVOS NO BANCO. CRIAMOS BLOCOS ANONIMOS QUANDO
IREMOS EXECUTA-LOS UMA SÓ VEZ OU TESTAR ALGO; */

/* BLOCO DE EXECUÇÃO */
BEGIN
	PRINT 'PRIMEIRO BLOCO'
END
GO

/* BLOCOS DE ATRIBUIÇÃO DE VARIAVEIS */

DECLARE
	@CONTADOR INT
BEGIN
	SET @CONTADOR = 5
	PRINT @CONTADOR
END
GO

/* NO SQL SERVER CADA COLUNA, VARIAVEL LOCAL, EXPRESSAO E PARAMETRO TEM UM TIPO. */

DECLARE
	@V_NUMERO NUMERIC(10,2) = 100.52,
	@V_DATA DATETIME = '20270207'
BEGIN
	PRINT 'VALOR NUMERICO: ' + CAST(@V_NUMERO AS VARCHAR)
	PRINT 'VALOR NUMERICO: ' + CONVERT(VARCHAR, @V_NUMERO)
	PRINT 'VALOR DE DATA: ' + CAST(@V_DATA AS VARCHAR)
	PRINT 'VALOR DE DATA: ' + CONVERT(VARCHAR, @V_DATA, 121)
	PRINT 'VALOR DE DATA: ' + CONVERT(VARCHAR, @V_DATA, 120)
	PRINT 'VALOR DE DATA: ' + CONVERT(VARCHAR, @V_DATA, 105)
END
GO

CREATE TABLE CARROS (
	CARRO VARCHAR(20),
	FABRICANTE VARCHAR(30)
)
GO

INSERT INTO CARROS VALUES
('KA', 'FORD'),
('FIESTA', 'FORD'),
('PRISMA', 'CHEVROLET'),
('CLIO', 'RENAULT'),
('SANDERO', 'RENAULT'),
('CHEVETTE', 'CHEVROLET'),
('OMEGA', 'CHEVROLET'),
('PALIO', 'FIAT'),
('DOBLO', 'FIAT'),
('UNO', 'FIAT'),
('GOL', 'FORD')
GO

SELECT FABRICANTE, COUNT(FABRICANTE) FROM CARROS 
GROUP BY FABRICANTE
GO

DECLARE 
	@V_CONT_FORD INT,
	@V_CONT_FIAT INT
	
BEGIN
	-- METODO 1 - O SELECT PRECISA RETORNA UMA SIMPLES COLUNA
	-- E UM SO RESULTADO
	
	SELECT @V_CONT_FORD = (SELECT COUNT(*) FROM CARROS WHERE FABRICANTE = 'FORD')
	
	PRINT 'QUANTIDADE FORD: ' + CAST(@V_CONT_FORD AS VARCHAR)
	
	-- METODO 2
	SELECT @V_CONT_FIAT = COUNT(*) FROM CARROS WHERE FABRICANTE = 'FIAT'
	
	PRINT 'QUANTIDADE FIAT: ' + CONVERT(VARCHAR, @V_CONT_FIAT)
	
END
GO

/* BLOCOS IF E ELSE */

DECLARE @NUMERO INT = 5

BEGIN
	IF @NUMERO = 6
		PRINT 'O VALOR É VERDADEIRO'
	ELSE
		PRINT 'O VALOR É FALSO'
END
GO

/* CASE */

DECLARE
	@CONTADOR INT
	
BEGIN
	SELECT -- O CASE REPRESENTA UMA COLUNA
	CASE
		WHEN FABRICANTE = 'FIAT' THEN 'FAIXA 1'
		WHEN FABRICANTE = 'CHEVROLET' THEN 'FAIXA 2'
		ELSE 'OUTRAS FAIXAS'
	END AS "INFORMACOES",
	*
	FROM CARROS
END
GO

SELECT -- O CASE REPRESENTA UMA COLUNA
	CASE
		WHEN FABRICANTE = 'FIAT' THEN 'FAIXA 1'
		WHEN FABRICANTE = 'CHEVROLET' THEN 'FAIXA 2'
		ELSE 'OUTRAS FAIXAS'
	END AS "INFORMACOES",
	*
	FROM CARROS
GO

DECLARE
	@CONTADOR INT
	
/* DESAFIO: TRANSFORMAR EM BLOCO NOMEADO = PROCEDURE */

CREATE PROCEDURE EH_CINCO @V_NUMERO INT
AS
	DECLARE @NUMERO INT = 5

BEGIN
	IF @V_NUMERO = 5
		PRINT 'O VALOR É VERDADEIRO'
	ELSE
		PRINT 'O VALOR É FALSO'
END
GO

EXEC EH_CINCO 5

/* LOOPS WHIEL */

DECLARE
	@I INT = 1
BEGIN
	
	WHILE (@I < 5)
	BEGIN
		PRINT 'VALOR DO @I = ' + CAST(@I AS VARCHAR)
		SET @I = @I + 1
	END
	
END
GO