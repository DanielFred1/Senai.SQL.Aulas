
INSERT INTO PROFESSORES(NOME)
VALUES('Fernando'),('Helena'),('Possarle'),('Raquel');

SELECT * FROM PROFESSORES

SELECT * FROM CATEGORIAS

SELECT * FROM CURSOS

INSERT INTO CATEGORIAS(NOME)
VALUES('Gest�o');

UPDATE CATEGORIAS SET NOME = 'Marketing' WHERE ID = 4

--Inserindo daddos linha por linha
INSERT INTO CURSOS(NOME, TITULO, ID_CATEGORIA, ID_PROFESSORES)
VALUES('SQL','SQL B�SICO - PARTE 1',1,1);

INSERT INTO CURSOS
VALUES('SQL','SQL B�SICO - PARTE 2',1,1);

INSERT INTO CURSOS
VALUES('JAVA','JAVA B�SICO - PARTE 2',1,2);

INSERT INTO CURSOS
VALUES('REACT','REACT NATIVE - PARTE 1',1,2);

INSERT INTO CURSOS
VALUES('GEST�O','GEST�O DE PESSOAS',5,3);

/*
Pode ser feito de outra maneira, mais simples e r�pida

INSERT INTO CURSOS
VALUES			('SQL','SQL B�SICO - PARTE 1',1,1),
				('SQL','SQL B�SICO - PARTE 2',1,1),
				('JAVA','JAVA B�SICO - PARTE 2',1,2),
				('REACT','REACT NATIVE - PARTE 1',1,2),
				('GEST�O','GEST�O DE PESSOAS',5,3);
*/


SELECT NOME, TITULO FROM CURSOS

SELECT COUNT(*) FROM CURSOS

SELECT COUNT(NOME), NOME FROM CURSOS GROUP BY NOME

--Retorna o nome e a quantidade de cursos agrupando pelo nome
SELECT NOME, COUNT(NOME) AS QUANTIDADE_CURSOS FROM CURSOS GROUP BY NOME

--Retorna os t�tulos dos cursos e seus respectivos professores atrav�s do relacionamento
--usando JOIN, recomendado
SELECT CURSOS.TITULO, PROFESSORES.NOME FROM 
CURSOS INNER JOIN PROFESSORES
ON
CURSOS.ID_PROFESSORES = PROFESSORES.ID

--Retorna todos os cursos e seus respectivos professores atrav�s do relacionamento
--usando JOIN, recomendado
SELECT * FROM 
CURSOS INNER JOIN PROFESSORES
ON
CURSOS.ID_PROFESSORES = PROFESSORES.ID

--Retorna todos os cursos e seus respectivos professores atrav�s do relacionamento
--usando JOIN e abrevia��o/alia das tabelas, recomendado
-- C = CURSOS
-- P = PROFESSORES
SELECT C.TITULO, P.NOME FROM 
CURSOS C INNER JOIN PROFESSORES P
ON
C.ID_PROFESSORES = P.ID
AND P.NOME LIKE '%O%' -- Faz um filtro na query pelo nome


--Retorna todos os cursos e professores mesmo o professor n�o tendo nenhum 
--curso vinculado a ele
SELECT * FROM 
PROFESSORES LEFT JOIN CURSOS
ON
PROFESSORES.ID = CURSOS.ID_PROFESSORES


------------------------------ Exerc�cios -----------------------------------
--1
--Retorna o t�tulo de todos os cursos e o nome das categorias usando relacionamento JOIN
SELECT CS.TITULO AS TITULO_CURSO, CG.NOME AS NOME_CATEGORIA FROM
CURSOS CS INNER JOIN CATEGORIAS CG
ON
CS.ID_CATEGORIA = CG.ID

--2
--Retorna todos os t�tulos de curso e as categorias relacionadas
SELECT CS.TITULO AS TITULO_CURSO, CG.NOME AS NOME_CATEGORIA FROM
CURSOS CS LEFT JOIN CATEGORIAS CG
ON
CS.ID_CATEGORIA = CG.ID

--3
--Retorna os t�tulos de curso relacionados e todas as categorias, mesmo as que n�o
--possuem curso
SELECT CS.TITULO AS TITULO_CURSO, CG.NOME AS NOME_CATEGORIA FROM
CURSOS CS RIGHT JOIN CATEGORIAS CG
ON
CS.ID_CATEGORIA = CG.ID

--4
--Retorna o nome das categorias e o t�tulo dos cursos usando relacionamento JOIN
SELECT CG.NOME AS NOME_CATEGORIA, CS.TITULO AS TITULO_CURSO FROM
CATEGORIAS CG INNER JOIN CURSOS CS
ON
CG.ID = CS.ID_CATEGORIA

--5
--Retorna todas as categorias de curso e os titulos de curso relacionados
SELECT CG.NOME AS NOME_CATEGORIA, CS.TITULO AS TITULO_CURSO FROM
CATEGORIAS CG LEFT JOIN CURSOS CS
ON
CG.ID = CS.ID_CATEGORIA

--6
--Retorna as categorias relacionadas e todos os t�tulos de curso 
SELECT CG.NOME AS NOME_CATEGORIA, CS.TITULO AS TITULO_CURSO FROM
CATEGORIAS CG RIGHT JOIN CURSOS CS
ON
CG.ID = CS.ID_CATEGORIA