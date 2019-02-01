INSERT INTO ALUNOS(NOME)
VALUES('Daniel'),('Carlos'),('Jeferson'),('Kevin');

--Lista todos os nomes da mesa
SELECT * FROM ALUNOS

--Retorna o meu registro/nome
SELECT * FROM ALUNOS WHERE ID = 1

--Retorna nomes com a letra I no meio
SELECT * FROM ALUNOS WHERE NOME LIKE '%I%'

--Retorna os nomes que contenham D
SELECT * FROM ALUNOS WHERE NOME LIKE '%D'

--Retorna os nomes que terminam com L e S, porque nenhum dos nomes na mesa termina com O ou A
SELECT * FROM ALUNOS WHERE NOME LIKE '%L' OR NOME LIKE '%S'

--Outra forma de retornar os nomes com L e S
SELECT * FROM ALUNOS WHERE NOME LIKE '%[L,S]'

--Retorna os nomes entre o ID 3 e 5
SELECT * FROM ALUNOS WHERE ID BETWEEN 3 AND 5

--Retorna os nomes em ordem alfabética
SELECT NOME FROM ALUNOS ORDER BY NOME Asc

--Retorna o nome que está no ID 3
SELECT * FROM ALUNOS WHERE ID = 3

--Apaga o nome que está no ID 3
DELETE FROM ALUNOS WHERE ID = 3

--Altera o nome no ID 2
UPDATE ALUNOS SET NOME = 'Kevin'
WHERE ID = 2

--Altera o nome no ID 4
UPDATE ALUNOS SET NOME = 'Benevides'
WHERE ID = 4

