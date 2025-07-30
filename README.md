Projeto Locadora de Filmes - PostgreSQL
Este repositório contém o projeto de um sistema de locadora de filmes, desenvolvido como parte do curso "Bancos de Dados SQL e NoSQL do básico ao avançado" da Geek University (Módulo PostgreSQL).

Sobre o Projeto
O objetivo deste projeto foi aplicar os conceitos de modelagem de dados, criação de schemas, inserção, consulta, atualização e exclusão de dados em um banco de dados relacional PostgreSQL.

Tecnologias Utilizadas
Banco de Dados: PostgreSQL

Ferramenta de Gerenciamento: PgAdmin4

Modelagem de Dados (DER): dbdiagram.io (O Diagrama de Entidade-Relacionamento foi criado e mantido neste site.)

Estrutura do Repositório
schema.sql: Contém os comandos SQL para a criação de todas as tabelas e a definição das chaves estrangeiras (FOREIGN KEYs).

inserts.sql: Contém os comandos SQL para popular o banco de dados com dados de exemplo para todas as tabelas.

queries.sql: Contém diversas consultas SQL (SELECTs), além de exemplos comentados de comandos de atualização (UPDATE) e exclusão (DELETE) de dados.

locadora_der.dbml: O arquivo fonte do Diagrama de Entidade-Relacionamento (DER) utilizado para modelar o banco de dados.

locadora_der.png: Uma representação visual em imagem do DER.

Como Rodar o Projeto Localmente
Instale o PostgreSQL e o PgAdmin4 em sua máquina.

Crie um novo banco de dados no PostgreSQL (ex: locadora).

Conecte-se ao banco de dados locadora no PgAdmin4.

Execute o arquivo schema.sql para criar todas as tabelas.

Execute o arquivo inserts.sql para preencher as tabelas com dados de exemplo.

Explore as consultas e exemplos no arquivo queries.sql.

Desafios e Aprendizados
Durante o desenvolvimento deste projeto, enfrentei desafios práticos que foram cruciais para o aprendizado:

Ajuste de Schema em Tempo Real: A necessidade de alterar a estrutura de tabelas já existentes (como renomear a coluna clientes para nome na tabela clientes e adicionar a coluna id_dvd em filmes_emprestimo) após a inserção de dados. Isso exigiu o uso de comandos ALTER TABLE ADD COLUMN, UPDATE para preencher valores nulos e ALTER TABLE ADD CONSTRAINT para chaves estrangeiras, demonstrando a importância da manutenção e refatoração do schema.

Complexidade de Junções (JOINs): A construção de consultas complexas que envolviam múltiplas junções (INNER JOIN) para extrair dados de tabelas interligadas.

Gerenciamento de Dependências em Exclusões: A compreensão das restrições de chave estrangeira ao tentar excluir dados, que exige a remoção de registros em tabelas dependentes antes de deletar o registro principal.

A superação desses obstáculos reforçou a importância da modelagem de dados precisa, da depuração de SQL e da capacidade de adaptar o banco de dados às necessidades do projeto.
