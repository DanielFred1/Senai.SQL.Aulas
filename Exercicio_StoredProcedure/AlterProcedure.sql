--Alterando Stored Procedure
ALTER PROCEDURE SelecionarID
@IDRECEBIDO INT
AS
BEGIN
SELECT ID,NOME FROM PESSOAS WHERE ID = @IDRECEBIDO
END

EXEC SelecionarID 2

--GO no final tem a mesma função que EXEC no início
SelecionarID 2 
GO

