CREATE table livro(
	id_livro INT AUTO_INCREMENT PRIMARY KEY,
    tituo VARCHAR(255) NOT NULL,
    sinopse TEXT,
    autor VARCHAR(128) 	NOT NULL,
    editora VARCHAR(128) NOT NULL,
    categoria VARCHAR(128) 	NOT NULL,
    ano_publicacao YEAR
 )
