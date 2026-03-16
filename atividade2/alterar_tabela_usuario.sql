USE biblioteca;
ALTER TABLE usuario 
    MODIFY COLUMN data_cadastro TIMESTAMP,
    ADD COLUMN data_atualizacao TIMESTAMP;