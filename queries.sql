-- Perguntas de Pesquisa SQL - Locadora:

-- Como você faria para visualizar todos os dados da tabela atores?

-- SELECT *
-- FROM atores;

-- Como você faria para visualizar todos os dados da tabela clientes?

-- SELECT *
-- FROM clientes;

-- Como você faria para visualizar todos os dados da tabela filmes?

-- SELECT *
-- FROM filmes;

-- Como você faria para visualizar todos os dados da tabela generos?

-- SELECT *
-- FROM generos;

-- Como você faria para listar o ID do filme, o título do filme, o gênero do filme e o valor do filme, combinando 
-- informações das tabelas filmes e generos usando INNER JOIN?
/*
SELECT f.id, f.titulo, g.genero, f.valor
FROM filmes AS f
	INNER JOIN generos AS g
	ON g.id = f.id_genero;
*/

-- Como você faria para listar o ID do registro em atores_filme, o título do filme, o nome do ator e o 
-- personagem que ele interpretou, combinando informações das tabelas filmes, atores e atores_filme usando INNER JOIN?
/*
SELECT af.id, f.titulo, a.nome, af.personagem
FROM atores_filmes AS af
	INNER JOIN filmes AS f
ON f.id = af.id_filme
	INNER JOIN atores AS a
ON a.id = af.id_ator;
*/

-- Como você faria para encontrar o gênero que possui o id igual a 2?

/*
SELECT *
FROM generos
WHERE id = 2;
*/

-- Como você faria para encontrar o filme que possui a genero igual a 'Ação'?
/*
SELECT *
FROM filmes AS f
	INNER JOIN generos AS g
	ON g.id = f.id_genero
	AND g.genero = 'Ação';
*/

-- Como você faria para calcular a soma total do valor de todos os filmes?

-- SELECT  SUM(valor) AS Valor_Total
-- FROM filmes;
	
-- Como você faria para encontrar o maior valor entre todos os filmes?

--SELECT MAX(valor) AS maior_valor
--FROM filmes;

-- Como você faria para encontrar todos os filmes que possuem o maior valor?
/*
SELECT *
FROM filmes
WHERE valor = (SELECT MAX(valor) FROM filmes);
*/

-- Como você faria para encontrar o título do filme, o gênero e o personagem de todos os filmes em 
-- que a atriz 'Felicity Jones' atuou, utilizando INNER JOIN?

/*
SELECT f.titulo, g.genero, af.personagem, a.nome 
FROM filmes AS f
	INNER JOIN atores_filmes AS af
ON af.id_filme = f.id
	INNER JOIN generos AS g
ON g.id = f.id_genero
	INNER JOIN atores AS a 
ON a.id = af.id_ator
	AND a.nome ='Felicity Jones';
*/

-- Como você faria para encontrar o título do filme e o personagem de todos os filmes em que o 
-- ator 'Brad Pitt' atuou no gênero 'Comédia', utilizando INNER JOIN?

/*
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
*/

-- Como você faria para obter detalhes de cada empréstimo, incluindo o ID do empréstimo, o nome e 
-- sobrenome do cliente, a data do empréstimo, o título do filme e o gênero do filme, utilizando 
-- INNER JOIN para combinar as tabelas emprestimos, clientes, filmes, generos, dvds e filmes_emprestimo?

/*
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
*/

--Como você faria para verificar quais filmes os clientes devolveram, incluindo o ID da devolução, o 
--nome e sobrenome do cliente, a data da devolução e o título do filme, utilizando INNER JOIN?
/*
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
*/

--Como você faria para calcular quanto cada cliente pagou (soma dos valores dos filmes devolvidos), 
--mostrando o ID do empréstimo, o nome e sobrenome do cliente e o valor total pago, 
--utilizando INNER JOIN e GROUP BY?
/*
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
*/
