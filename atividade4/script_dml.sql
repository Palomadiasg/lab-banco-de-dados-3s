-- 1. CARGA DE DADOS (INSERTs)
-- ---------------------------------------------------------

-- usuários
INSERT INTO usuario (nome, email, senha, data_cadastro) VALUES 
('Bruno Souza', 'bruno@email.com', '123', CURRENT_TIMESTAMP),
('Carla Mendes', 'carla@email.com', '123', CURRENT_TIMESTAMP);

-- categorias
INSERT INTO categoria (nome, descricao, data_cadastro) VALUES 
('Ficção Científica', 'Livros com temas futuristas e científicos', CURRENT_TIMESTAMP),
('Fantasia', 'Mundos imaginários e mágicos', CURRENT_TIMESTAMP),
('Romance', 'Histórias centradas em relações humanas', CURRENT_TIMESTAMP),
('Clássicos', 'Obras consagradas da literatura', CURRENT_TIMESTAMP),
('Suspense', 'Narrativas de tensão e mistério', CURRENT_TIMESTAMP),
('Filosofia', 'Reflexões filosóficas', CURRENT_TIMESTAMP);

-- autores
INSERT INTO autor (nome, ano_nascimento, ano_morte, data_cadastro) VALUES 
('George Orwell', 1903, 1950, CURRENT_TIMESTAMP),
('J.R.R. Tolkien', 1892, 1973, CURRENT_TIMESTAMP),
('Jane Austen', 1775, 1817, CURRENT_TIMESTAMP),
('Machado de Assis', 1839, 1908, CURRENT_TIMESTAMP),
('Agatha Christie', 1890, 1976, CURRENT_TIMESTAMP),
('Isaac Asimov', 1920, 1992, CURRENT_TIMESTAMP),
('Fyodor Dostoevsky', 1821, 1881, CURRENT_TIMESTAMP),
('J.K. Rowling', 1965, NULL, CURRENT_TIMESTAMP),
('Stephen King', 1947, NULL, CURRENT_TIMESTAMP);

-- editoras
INSERT INTO editora (nome, cidade, estado, pais, data_cadastro) VALUES 
('Penguin Books', 'Londres', NULL, 'Reino Unido', CURRENT_TIMESTAMP),
('HarperCollins', 'Nova York', 'NY', 'EUA', CURRENT_TIMESTAMP),
('Companhia das Letras', 'São Paulo', 'SP', 'Brasil', CURRENT_TIMESTAMP),
('Editora Record', 'Rio de Janeiro', 'RJ', 'Brasil', CURRENT_TIMESTAMP),
('Rocco', 'Rio de Janeiro', 'RJ', 'Brasil', CURRENT_TIMESTAMP);

-- inserindo Livros 
INSERT INTO livro (titulo, id_autor, id_categoria, id_editora, valor, data_cadastro) VALUES
('Harry Potter e a Pedra Filosofal', 8, 2, 5, 50.00, CURRENT_TIMESTAMP),
('O Mundo de Sofia', 7, 6, 3, 40.00, CURRENT_TIMESTAMP);


-- 2. QUERIES DE CONSULTA E MANIPULAÇÃO

-- A. Retorna todos os livros da autora 'J.K. Rowling'
SELECT l.* FROM livro l
JOIN autor a ON l.id_autor = a.id_autor
WHERE a.nome = 'J.K. Rowling';

-- B. Retorna todos os livros da categoria 'Filosofia'
SELECT l.* FROM livro l
JOIN categoria c ON l.id_categoria = c.id_categoria
WHERE c.nome = 'Filosofia';

-- C. Altera o nome da categoria 'Filosofia' para 'Censurado'
UPDATE categoria 
SET nome = 'Censurado' 
WHERE nome = 'Filosofia';

-- D. Deleta todos os livros da categoria 'Censurado'
DELETE FROM livro 
WHERE id_categoria IN (SELECT id_categoria FROM categoria WHERE nome = 'Censurado');
