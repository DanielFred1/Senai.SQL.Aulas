INSERT INTO GENEROS(NOME)
VALUES('Rock'),('Sertanejo'),('Pop');

SELECT * FROM GENEROS
SELECT * FROM BANDAS
SELECT * FROM ALBUNS
SELECT * FROM MUSICAS
SELECT * FROM CANTORES
SELECT * FROM BANDAS_CANTORES

INSERT INTO BANDAS(NOME, ID_GENERO)
VALUES			('Ultraje a Rigor',1),
				('Fernando e Sorocaba',2),
				('Barão Vermelho',3);

INSERT INTO ALBUNS(NOME, ID_BANDA)
VALUES			('Recomeço',1),
				('Vendaval',2),
				('Maior Abandonado',3);

INSERT INTO MUSICAS(NOME, ID_ALBUM)
VALUES			('Inútil',1),
				('Mim quer tocar',1),
				('Vendaval',2),
				('Paga Pau',2),
				('Baby Suporte',3),
				('Sem Vergonha',3);

INSERT INTO CANTORES(NOME)
VALUES			('Roger Moreira'),
				('Mingau'),
				('Bacalhau'),
				('Marcos Kleine'),
				('Fernando Zorzanello Bonifácio'),
				('Fernando Fakri de Assis'),
				('Guto Goffi'),
				('Maurício Barros'),
				('Fernando Magalhães');

INSERT INTO BANDAS_CANTORES(ID_CANTOR, ID_BANDA)
VALUES			(1,1),
				(2,1),
				(3,1),
				(4,1),
				(5,2),
				(6,2),
				(7,3),
				(8,3),
				(9,3);

