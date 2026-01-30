# Movie Rental Project - PostgreSQL

[English](#english) • [Português](#portugues)

---

<a name="english"></a>
## 🇺🇸 English

### 📝 Project Overview
This repository contains a movie rental system project, developed as part of the "Bancos de Dados SQL e NoSQL do básico ao avançado" course by Geek University (PostgreSQL Module). The objective was to apply concepts of data modeling, schema creation, insertion, querying, updating, and deleting data in a PostgreSQL relational database.

### 🛠 Technologies Used
* **Database:** PostgreSQL
* **Management Tool:** PgAdmin4
* **Data Modeling (ERD):** [dbdiagram.io](https://dbdiagram.io)

### 📂 Repository Structure
* [schema.sql](./schema.sql): Contains SQL commands for creating all tables and defining foreign keys.
* [inserts.sql](./inserts.sql): Contains SQL commands to populate the database with sample data.
* [queries.sql](./queries.sql): Contains various SQL queries (SELECTs), along with examples of data update and delete commands.
* [locadora_der.png](./locadora_der.png): A visual image representation of the Entity-Relationship Diagram (ERD).

### 🚀 How to Run Locally
1. Install PostgreSQL and PgAdmin4.
2. Create a new database in PostgreSQL (e.g., `locadora`).
3. Run the [schema.sql](./schema.sql) file to create tables.
4. Run the [inserts.sql](./inserts.sql) file to populate data.
5. Explore queries in [queries.sql](./queries.sql).

### 🧠 Challenges and Learnings
* **Real-time Schema Adjustment:** Handled table structure changes after data insertion using `ALTER TABLE`, ensuring data integrity.
* **Join Complexity:** Developed complex queries using multiple `INNER JOIN` clauses to extract relational data.
* **Dependency Management:** Managed foreign key constraints, ensuring correct deletion order across dependent tables.

---

# Projeto Locadora de Filmes - PostgreSQL

<a name="portugues"></a>
## 🇧🇷 Português

### 📝 Sobre o Projeto
Este repositório contém o projeto de um sistema de locadora de filmes, desenvolvido como parte do curso "Bancos de Dados SQL e NoSQL do básico ao avançado" da Geek University (Módulo PostgreSQL). O foco foi aplicar conceitos de modelagem de dados, criação de schemas, inserção, consulta e manutenção de dados.

### 🛠 Tecnologias Utilizadas
* **Banco de Dados:** PostgreSQL
* **Ferramenta de Gerenciamento:** PgAdmin4
* **Modelagem de Dados (DER):** [dbdiagram.io](https://dbdiagram.io)

### 📂 Estrutura do Repositório
* [schema.sql](./schema.sql): Comandos SQL para criação de tabelas e chaves estrangeiras.
* [inserts.sql](./inserts.sql): Comandos para popular o banco de dados com dados de exemplo.
* [queries.sql](./queries.sql): Consultas SQL diversas (SELECTs) e exemplos de UPDATE/DELETE.
* [locadora_der.png](./locadora_der.png): Representação visual do Diagrama de Entidade-Relacionamento.

### 🚀 Como Rodar Localmente
1. Instale o PostgreSQL e o PgAdmin4.
2. Crie um novo banco de dados (ex: `locadora`).
3. Execute o arquivo [schema.sql](./schema.sql).
4. Execute o arquivo [inserts.sql](./inserts.sql).
5. Explore os exemplos em [queries.sql](./queries.sql).

### 🧠 Desafios e Aprendizados
* **Ajuste de Schema:** Alteração de tabelas existentes e manutenção de integridade após inserções iniciais.
* **Complexidade de JOINs:** Construção de queries avançadas com múltiplas junções para relatórios precisos.
* **Gerenciamento de Dependências:** Controle de restrições de chaves estrangeiras durante processos de exclusão de registros.

---

  👤 Author / Autor Cleverson Moura Andrade
