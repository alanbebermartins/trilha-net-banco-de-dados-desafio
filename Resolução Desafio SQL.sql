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

-- QUEST�O 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- QUEST�O 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
-- MANEIRA 1
SELECT * FROM Atores WHERE Genero = 'M'

-- MANEIRA 2
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

-- QUEST�O 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC

-- QUEST�O 10 - Buscar o nome do filme e o g�nero

SELECT Filmes.Nome, Generos.Genero 
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- QUEST�O 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"

SELECT Filmes.Nome, Generos.Genero 
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mist�rio'

-- QUEST�O 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor