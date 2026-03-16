USE biblioteca;
CREATE TABLE categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(128) NOT NULL,
    descricao TEXT,
    data_cadastro TIMESTAMP,
    data_atualizacao TIMESTAMP
);