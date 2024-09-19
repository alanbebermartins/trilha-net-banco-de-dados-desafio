-- RESOLUÇÃO DO DESAFIO DE SQL

-- QUESTÃO 1 - Buscar o nome e ano dos filmes
SELECT * FROM Filmes

-- QUESTÃO 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT * FROM Filmes ORDER BY Ano ASC

-- QUESTÃO 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
-- MANEIRA 1
SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- MANEIRA 2
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'