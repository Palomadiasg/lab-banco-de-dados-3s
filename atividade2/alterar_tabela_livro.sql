
ALTER TABLE livro 
    -- deleta o livro se o usuário for deletado (CASCADE)
    ADD CONSTRAINT fk_livro_usuario 
        FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) 
        ON DELETE CASCADE,

    -- não deixa apagar o autor se ele tiver livros (RESTRICT)
    ADD CONSTRAINT fk_livro_autor 
        FOREIGN KEY (id_autor) REFERENCES autor(id_autor) 
        ON DELETE RESTRICT,

    -- não deixa apagar (RESTRICT)
    ADD CONSTRAINT fk_livro_editora 
        FOREIGN KEY (id_editora) REFERENCES editora(id_editora) 
        ON DELETE RESTRICT,

    -- não deixa apagar
    ADD CONSTRAINT fk_livro_categoria 
        FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria) 
        ON DELETE RESTRICT;