-- Arquivo: inserts.sql
-- Contém os comandos para popular o banco de dados da Locadora com dados de exemplo.

INSERT INTO atores (nome) VALUES ('Brad Pitt');
INSERT INTO atores (nome) VALUES ('Angelina Jolie');
INSERT INTO atores (nome) VALUES ('Felicity Jones');
INSERT INTO atores (nome) VALUES ('Tom Cruise');
INSERT INTO atores (nome) VALUES ('Julia Roberts');
INSERT INTO atores (nome) VALUES ('Leonardo DiCaprio');
INSERT INTO atores (nome) VALUES ('Scarlett Johansson');

INSERT INTO generos (genero) VALUES ('Comédia');
INSERT INTO generos (genero) VALUES ('Romance');
INSERT INTO generos (genero) VALUES ('Suspense');
INSERT INTO generos (genero) VALUES ('Ação');
INSERT INTO generos (genero) VALUES ('Drama');
INSERT INTO generos (genero) VALUES ('Ficção Cientifica');
INSERT INTO generos (genero) VALUES ('Animação');

INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Tomb Raider', 3, 8.99);
INSERT INTO filmes (titulo, id_genero, valor) VALUES ('A Teoria de Tudo', 2, 12.99);
INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Sr. e Sra. Smith', 4, 9.50);
INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Missão Impossivel', 4, 14.50);
INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Uma Linda Mulher', 2, 8.50);
INSERT INTO filmes (titulo, id_genero, valor) VALUES ('A Origem', 6, 13.75);
INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Vingadores', 4, 7.50);

INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Pedro', 'Silva', '2344-3344', 'Rua 1, 34');
INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Paula', 'Diniz', '4544-3345', 'Rua 2, 35');
INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Silvana', 'Souza', '6744-3345', 'Rua 2, 36');
INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Fernando', 'Lima', '5555-1111', 'Av. do Sol, 100');
INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Mariana', 'Costa', '2222-3333', 'Rua da Lua, 200');
INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Rafael', 'Gomes', '4444-5555', 'Praça Estrela, 300');
INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Camila', 'Santos', '6666-7777', 'Alameda Mar, 400');

INSERT INTO atores_filmes (id_filme, id_ator, personagem) VALUES (1, 2, 'Lara Croft');
INSERT INTO atores_filmes (id_filme, id_ator, personagem) VALUES (2, 3, 'Jane Wilde');
INSERT INTO atores_filmes (id_filme, id_ator, personagem) VALUES (3, 1, 'John Smith');
INSERT INTO atores_filmes (id_filme, id_ator, personagem) VALUES (3, 2, 'Jane Smith');
INSERT INTO atores_filmes (id_filme, id_ator, personagem) VALUES (4, 4, 'Ethan Hunt');
INSERT INTO atores_filmes (id_filme, id_ator, personagem) VALUES (5, 5, 'Vivian Ward');
INSERT INTO atores_filmes (id_filme, id_ator, personagem) VALUES (6, 6, 'Dominick Cobb');
INSERT INTO atores_filmes (id_filme, id_ator, personagem) VALUES (7, 7, 'Natasha Romanoff');

INSERT INTO dvds (id_filme, quantidade) VALUES (1, 1);
INSERT INTO dvds (id_filme, quantidade) VALUES (2, 1);
INSERT INTO dvds (id_filme, quantidade) VALUES (3, 1);
INSERT INTO dvds (id_filme, quantidade) VALUES (4, 2);
INSERT INTO dvds (id_filme, quantidade) VALUES (5, 1);
INSERT INTO dvds (id_filme, quantidade) VALUES (6, 2);
INSERT INTO dvds (id_filme, quantidade) VALUES (7, 1);

INSERT INTO emprestimos (data, id_cliente) VALUES ('2019-03-01', 1);
INSERT INTO emprestimos (data, id_cliente) VALUES ('2019-03-15', 2);
INSERT INTO emprestimos (data, id_cliente) VALUES ('2019-06-05', 1);
INSERT INTO emprestimos (data, id_cliente) VALUES ('2025-07-01', 4);
INSERT INTO emprestimos (data, id_cliente) VALUES ('2025-07-05', 5);
INSERT INTO emprestimos (data, id_cliente) VALUES ('2025-07-10', 6);
INSERT INTO emprestimos (data, id_cliente) VALUES ('2025-07-15', 7);

INSERT INTO filmes_emprestimo (id_emprestimo, id_filme, id_dvd) VALUES (1, 1, 1);
INSERT INTO filmes_emprestimo (id_emprestimo, id_filme, id_dvd) VALUES (1, 2, 2);
INSERT INTO filmes_emprestimo (id_emprestimo, id_filme, id_dvd) VALUES (2, 3, 3);
INSERT INTO filmes_emprestimo (id_emprestimo, id_filme, id_dvd) VALUES (4, 4, 4);
INSERT INTO filmes_emprestimo (id_emprestimo, id_filme, id_dvd) VALUES (5, 5, 5);
INSERT INTO filmes_emprestimo (id_emprestimo, id_filme, id_dvd) VALUES (6, 6, 6);
INSERT INTO filmes_emprestimo (id_emprestimo, id_filme, id_dvd) VALUES (7, 7, 7);

INSERT INTO devolucoes (id_emprestimo, data) VALUES (1, '2019-03-08');
INSERT INTO devolucoes (id_emprestimo, data) VALUES (1, '2019-06-08');
INSERT INTO devolucoes (id_emprestimo, data) VALUES (2, '2019-03-08');
INSERT INTO devolucoes (id_emprestimo, data) VALUES (4, '2025-07-08');
INSERT INTO devolucoes (id_emprestimo, data) VALUES (5, '2025-07-12');
INSERT INTO devolucoes (id_emprestimo, data) VALUES (6, '2025-07-17');
INSERT INTO devolucoes (id_emprestimo, data) VALUES (7, '2025-07-22');

INSERT INTO filmes_devolucao (id_devolucao, id_filme_emprestimo) VALUES (1, 1);
INSERT INTO filmes_devolucao (id_devolucao, id_filme_emprestimo) VALUES (1, 2);
INSERT INTO filmes_devolucao (id_devolucao, id_filme_emprestimo) VALUES (2, 3);
INSERT INTO filmes_devolucao (id_devolucao, id_filme_emprestimo) VALUES (4, 4);
INSERT INTO filmes_devolucao (id_devolucao, id_filme_emprestimo) VALUES (5, 5);
INSERT INTO filmes_devolucao (id_devolucao, id_filme_emprestimo) VALUES (6, 6);
INSERT INTO filmes_devolucao (id_devolucao, id_filme_emprestimo) VALUES (7, 7);
