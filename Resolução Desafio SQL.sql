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

-- QUESTÃO 4 - Buscar os filmes lançados em 1997

SELECT * FROM Filmes WHERE Ano = 1997

-- QUESTÃO 5 - Buscar os filmes lançados APÓS o ano 2000

SELECT * FROM Filmes WHERE Ano >= 2000

-- QUESTÃO 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT * FROM Filmes WHERE Duracao >= 100 AND Duracao <= 150 ORDER BY Duracao ASC

-- QUESTÃO 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- QUESTÃO 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
-- MANEIRA 1
SELECT * FROM Atores WHERE Genero = 'M'

-- MANEIRA 2
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

-- QUESTÃO 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC

-- QUESTÃO 10 - Buscar o nome do filme e o gênero

SELECT Filmes.Nome, Generos.Genero 
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- QUESTÃO 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT Filmes.Nome, Generos.Genero 
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

-- QUESTÃO 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor