CREATE PROCEDURE InserindoValores @NOME VARCHAR(250), @CPF VARCHAR(11), @ID_GRUPO INT
AS
INSERT INTO PESSOAS(NOME, CPF, ID_GRUPOS)
VALUES(@NOME, @CPF, @ID_GRUPO)

EXEC InserindoValores 'Franklin','55555555555',2

SELECT * FROM PESSOAS 

UPDATE PESSOAS SET ID_GRUPOS = 4
WHERE ID = 5