CREATE DATABASE BUGMUSIC;

USE BUGMUSIC;

CREATE TABLE GENEROS (
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR(250) UNIQUE NOT NULL
);

CREATE TABLE BANDAS (
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR(250) UNIQUE NOT NULL
	,ID_GENERO INT NOT NULL FOREIGN KEY REFERENCES GENEROS(ID) 
);

CREATE TABLE ALBUNS (
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR(250) UNIQUE NOT NULL
	,ID_BANDA INT NOT NULL FOREIGN KEY REFERENCES BANDAS(ID)
);

CREATE TABLE MUSICAS (
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR(250) UNIQUE NOT NULL
	,ID_ALBUM INT NOT NULL FOREIGN KEY REFERENCES ALBUNS(ID)
);

CREATE TABLE CANTORES(
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR(250) UNIQUE NOT NULL
);

CREATE TABLE BANDAS_CANTORES(
	ID_CANTOR INT NOT NULL FOREIGN KEY REFERENCES CANTORES(ID) 
	,ID_BANDA INT NOT NULL FOREIGN KEY REFERENCES BANDAS(ID)
);