--DML
USE db_devconnect;
INSERT INTO tb_Usuario(NomeCompleto, NomeUsuario, Email, Senha, FotoPerfilUrl)
VALUES('Ronaldo', 'Ronaldinho', 'Ronaldinho@gmail.com', 'Ronaldo123', '');

INSERT INTO tb_Publicacao(Descricao, ImagemUrl, DataPublicacao, id_usuario)
VALUES('Jogador De Fut', 'Imagem.Img', '2020/07/22', 4);

INSERT INTO tb_Curtida(id_Usuario, id_Publicacao)
VALUES(4, 3);

INSERT INTO tb_Comentario(Texto, DataComentario, id_Usuario, id_Publicacao)
VALUES('Adoro Fut', '2021/09/23', 4, 3);


INSERT INTO tb_Seguidor(id_Usuario_Seguido, id_Usuario_Seguidor)
VALUES(2,5);
