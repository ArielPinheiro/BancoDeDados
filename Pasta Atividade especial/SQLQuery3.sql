--DDL
CREATE DATABASE db_devconnect;

USE db_devconnect;

CREATE TABLE tb_usuario(
 id INT IDENTITY(1,1) PRIMARY KEY
,NomeCompleto NVARCHAR(255) NOT NULL
,NomeUsuario NVARCHAR(50) UNIQUE NOT NULL
,Email NVARCHAR(255) UNIQUE NOT NULL
,Senha NVARCHAR(50) NOT NULL
,FotoPerfilUrl NVARCHAR(255) NOT NULL);


CREATE TABLE tb_Publicacao(
id INT IDENTITY(1,1) PRIMARY KEY
,Descricao NVARCHAR(255) NOT NULL
,ImagemUrl NVARCHAR(255) NOT NULL
,DataPublicacao DATE NOT NULL
,id_Usuario INT NOT NULL
,FOREIGN KEY (id_Usuario) REFERENCES tb_Usuario(id));
GO 

CREATE TABLE tb_Curtida(
 id INT IDENTITY(1,1) PRIMARY KEY
,id_Usuario INT NOT NULL
,id_Publicacao INT NOT NULL
,FOREIGN KEY (id_Usuario) REFERENCES tb_Usuario(id)
,FOREIGN KEY (id_Publicacao) REFERENCES tb_Publicacao(id)
);
GO

CREATE TABLE tb_Comentario(
 id INT IDENTITY(1,1) PRIMARY KEY
,Texto NVARCHAR(250) NOT NULL
,DataComentario DATE NOT NULL
,id_Usuario INT NOT NULL
,id_Publicacao INT NOT NULL
,FOREIGN KEY (id_Usuario) REFERENCES tb_Usuario(id)
,FOREIGN KEY (id_Publicacao) REFERENCES tb_Publicacao(id)
);
GO

CREATE TABLE tb_Seguidor(
	id_Usuario_Seguido	INT	NOT NULL 
	,id_Usuario_Seguidor	INT	NOT NULL,

	PRIMARY KEY(id_Usuario_Seguido, id_Usuario_Seguidor)
);
GO