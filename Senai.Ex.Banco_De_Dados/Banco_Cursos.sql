--CREATE DATABASE HCURSOS_MANHA;

USE HCURSOS_MANHA

CREATE TABLE CATEGORIAS(
	ID INT IDENTITY PRIMARY KEY 
	,NOME VARCHAR(250) UNIQUE NOT NULL
);

CREATE TABLE ALUNOS(
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR(250) NOT NULL 
);

CREATE TABLE PROFESSORES(
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR(250) NOT NULL
);

CREATE TABLE CURSOS(
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR(250) NOT NULL
	,TITULO VARCHAR(250) NOT NULL
	,ID_CATEGORIA INT FOREIGN KEY REFERENCES CATEGORIAS(ID)
	,ID_PROFESSORES INT FOREIGN KEY REFERENCES PROFESSORES(ID)
);

CREATE TABLE CURSOS_ALUNOS(
	ID_CURSOS INT FOREIGN KEY REFERENCES CURSOS(ID)
	,ID_ALUNO INT FOREIGN KEY REFERENCES ALUNOS(ID)
);