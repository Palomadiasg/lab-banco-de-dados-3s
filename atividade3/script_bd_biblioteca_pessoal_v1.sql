DROP DATABASE IF EXISTS biblioteca_pessoal_2026;
CREATE DATABASE biblioteca_pessoal_2026;
USE biblioteca_pessoal_2026;

		
CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    data_cadastro TIMESTAMP,
    data_atualizacao TIMESTAMP
);


CREATE TABLE autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL UNIQUE, 
    ano_nascimento YEAR,
    ano_morte YEAR,
    apresentacao TEXT,
    data_cadastro TIMESTAMP,
    data_atualizacao TIMESTAMP
);


CREATE TABLE editora (
    id_editora INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL UNIQUE,
    cidade VARCHAR(64),
    estado VARCHAR(64),
    pais VARCHAR(64),
    data_cadastro TIMESTAMP,
    data_atualizacao TIMESTAMP
);


CREATE TABLE categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(128) NOT NULL UNIQUE, 
    descricao TEXT,
    data_cadastro TIMESTAMP,
    data_atualizacao TIMESTAMP
);

CREATE TABLE livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_autor INT,
    id_editora INT,
    id_categoria INT,
    titulo VARCHAR(255) NOT NULL,
    sinopse TEXT,
    ano_publicacao YEAR,
    lido BOOLEAN,
    data_cadastro TIMESTAMP,
    data_atualizacao TIMESTAMP,
    
   
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor),
    FOREIGN KEY (id_editora) REFERENCES editora(id_editora),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);
