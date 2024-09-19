-- RESOLU��O DO DESAFIO DE SQL

-- QUEST�O 1 - Buscar o nome e ano dos filmes
SELECT * FROM Filmes

-- QUEST�O 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT * FROM Filmes ORDER BY Ano ASC

-- QUEST�O 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
-- MANEIRA 1
SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- MANEIRA 2
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- QUEST�O 4 - Buscar os filmes lan�ados em 1997

SELECT * FROM Filmes WHERE Ano = 1997

-- QUEST�O 5 - Buscar os filmes lan�ados AP�S o ano 2000

SELECT * FROM Filmes WHERE Ano >= 2000

-- QUEST�O 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT * FROM Filmes WHERE Duracao >= 100 AND Duracao <= 150 ORDER BY Duracao ASC