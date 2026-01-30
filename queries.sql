-- =============================================================================
-- Perguntas de Pesquisa SQL - Locadora | SQL Research Queries - Rental Store
-- =============================================================================

-- Como você faria para visualizar todos os dados da tabela atores?
-- How would you view all data from the actors table?

SELECT *
FROM atores;


-- Como você faria para visualizar todos os dados da tabela clientes?
-- How would you view all data from the customers table?

SELECT *
FROM clientes;


-- Como você faria para visualizar todos os dados da tabela filmes?
-- How would you view all data from the movies table?

SELECT *
FROM filmes;


-- Como você faria para visualizar todos os dados da tabela generos?
-- How would you view all data from the genres table?

SELECT *
FROM generos;


-- Como você faria para listar o ID do filme, o título do filme, o gênero do filme e o valor do filme, combinando 
-- informações das tabelas filmes e generos usando INNER JOIN?
-- How would you list the movie ID, movie title, movie genre, and movie value, combining
-- information from the movies and genres tables using INNER JOIN?

SELECT f.id, f.titulo, g.genero, f.valor
FROM filmes AS f
	INNER JOIN generos AS g
	ON g.id = f.id_genero;


-- Como você faria para listar o ID do registro em atores_filme, o título do filme, o nome do ator e o 
-- personagem que ele interpretou, combinando informações das tabelas filmes, atores e atores_filme usando INNER JOIN?
-- How would you list the record ID in actors_movie, the movie title, the actor's name, and the
-- character they played, combining information from the movies, actors, and actors_movie tables using INNER JOIN?

SELECT af.id, f.titulo, a.nome, af.personagem
FROM atores_filmes AS af
	INNER JOIN filmes AS f
ON f.id = af.id_filme
	INNER JOIN atores AS a
ON a.id = af.id_ator;


-- Como você faria para encontrar o gênero que possui o id igual a 2?
-- How would you find the genre that has the ID equal to 2?

SELECT *
FROM generos
WHERE id = 2;


-- Como você faria para encontrar o filme que possui a genero igual a 'Ação'?
-- How would you find the movie that has the genre equal to 'Action'?

SELECT *
FROM filmes AS f
	INNER JOIN generos AS g
	ON g.id = f.id_genero
	AND g.genero = 'Ação';


-- Como você faria para calcular a soma total do valor de todos os filmes?
-- How would you calculate the total sum of the value of all movies?

SELECT SUM(valor) AS Valor_Total
FROM filmes;

	
-- Como você faria para encontrar o maior valor entre todos os filmes?
-- How would you find the highest value among all movies?

SELECT MAX(valor) AS maior_valor
FROM filmes;


-- Como você faria para encontrar todos os filmes que possuem o maior valor?
-- How would you find all movies that have the highest value?

SELECT *
FROM filmes
WHERE valor = (SELECT MAX(valor) FROM filmes);


-- Como você faria para encontrar o título do filme, o gênero e o personagem de todos os filmes em 
-- que a atriz 'Felicity Jones' atuou, utilizando INNER JOIN?
-- How would you find the movie title, genre, and character of all movies in
-- which the actress 'Felicity Jones' acted, using INNER JOIN?

SELECT f.titulo, g.genero, af.personagem, a.nome 
FROM filmes AS f
	INNER JOIN atores_filmes AS af
ON af.id_filme = f.id
	INNER JOIN generos AS g
ON g.id = f.id_genero
	INNER JOIN atores AS a 
ON a.id = af.id_ator
	AND a.nome ='Felicity Jones';


-- Como você faria para encontrar o título do filme e o personagem de todos os filmes em que o 
-- ator 'Brad Pitt' atuou no gênero 'Comédia', utilizando INNER JOIN?
-- How would you find the movie title and character of all movies in which the
-- actor 'Brad Pitt' acted in the 'Comedy' genre, using INNER JOIN?

SELECT f.titulo, af.personagem, a.nome, g.genero
FROM filmes AS f
	INNER JOIN atores_filmes AS af
ON af.id_filme = f.id
	INNER JOIN atores AS a 
ON a.id = af.id_ator
	INNER JOIN generos AS g
ON g.id = f.id_genero
	AND a.nome = 'Brad Pitt'
	AND g.genero = 'Comédia';


-- Como você faria para obter detalhes de cada empréstimo, incluindo o ID do empréstimo, o nome e 
-- sobrenome do cliente, a data do empréstimo, o título do filme e o gênero do filme, utilizando 
-- INNER JOIN para combinar as tabelas emprestimos, clientes, filmes, generos, dvds e filmes_emprestimo?
-- How would you get details for each loan, including the loan ID, the customer's first and
-- last name, the loan date, the movie title, and the movie genre, using
-- INNER JOIN to combine the loans, customers, movies, genres, dvds, and movie_loans tables?

SELECT e.id, c.nome, c.sobrenome, e.data, f.titulo, g.genero
FROM emprestimos as e
	INNER JOIN clientes AS c
ON c.id = e.id_cliente
	INNER JOIN filmes_emprestimo AS fe
ON fe.id_emprestimo = e.id
	INNER JOIN filmes AS f
ON f.id = fe.id_filme
	INNER JOIN generos AS g
ON g.id = f.id_genero
	INNER JOIN dvds AS dvd
ON dvd.id = fe.id_dvd;				


-- Como você faria para verificar quais filmes os clientes devolveram, incluindo o ID da devolução, o 
-- nome e sobrenome do cliente, a data da devolução e o título do filme, utilizando INNER JOIN?
-- How would you check which movies customers returned, including the return ID, the
-- customer's first and last name, the return date, and the movie title, using INNER JOIN?

SELECT de.id, c.nome, c.sobrenome, de.data, f.titulo
FROM devolucoes AS de
	INNER JOIN emprestimos AS em
ON de.id_emprestimo = em.id
	INNER JOIN clientes AS c
ON em.id_cliente = c.id
	INNER JOIN filmes_devolucao AS fd
ON fd.id_devolucao = de.id
	INNER JOIN filmes_emprestimo AS fe
ON fd.id_filme_emprestimo = fe.id
	INNER JOIN dvds AS dvd
ON fe.id_dvd = dvd.id
	INNER JOIN filmes AS f
ON dvd.id_filmes = f.id;


-- Como você faria para calcular quanto cada cliente pagou (soma dos valores dos filmes devolvidos), 
-- mostrando o ID do empréstimo, o nome e sobrenome do cliente e o valor total pago, 
-- utilizando INNER JOIN e GROUP BY?
-- How would you calculate how much each customer paid (sum of the values of the returned movies),
-- showing the loan ID, the customer's first and last name, and the total value paid,
-- using INNER JOIN and GROUP BY?

SELECT
    e.id AS id_emprestimo, c.nome, c.sobrenome,
    SUM(f.valor) AS valor_total_pago
FROM filmes_devolucao AS fd
	INNER JOIN devolucoes AS de
ON fd.id_devolucao = de.id
	INNER JOIN emprestimos AS e
ON de.id_emprestimo = e.id
	INNER JOIN clientes AS c
ON e.id_cliente = c.id
	INNER JOIN filmes_emprestimo AS fe
ON fd.id_filme_emprestimo = fe.id
	INNER JOIN dvds AS d
ON fe.id_dvd = d.id
	INNER JOIN filmes AS f
ON d.id_filmes = f.id
	GROUP BY e.id, c.nome, c.sobrenome;
