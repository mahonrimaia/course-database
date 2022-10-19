/* SEÇÃO 4: EXERCÍCIOS DE FIXAÇÃO */
CREATE DATABASE livraria;
CREATE TABLE livros(
  livro_titulo VARCHAR(50),
  livro_autor VARCHAR(30),
  autor_sexo CHAR(9),
  livro_paginas INT,
  editora VARCHAR(30),
  livro_valor FLOAT(5,2),
  editora_uf CHAR(2),
  livro_ano CHAR(4)
);

INSERT INTO livros VALUES
('Cavaleiro Real','Ana Claudia','Feminino',465,'Atlas',49.9,'RJ',2009),
('SQL para leigos','João Nunes','Masculino',450,'Addison',98,'SP',2018),
('Receitas Caseiras','Célia Tavares','Feminino',210,'Atlas',45,'RJ',2008),
('Pessoas Efetivas','Eduardo Santos','Masculino',390,'Beta',78.99,'RJ',2018),
('Hábitos Saudáveis','Eduardo Santos','Masculino',630,'Beta',150.98,'RJ',2019),
('A Casa Marrom','Hermes Macedo','Masculino',250,'Bubba',60,'MG',2016),
('Estácio Querido','Geraldo Francisco','Masculino',310,'Insignia',100,'ES',2015),
('Para sempre amigas','Leda Silva','Feminino',510,'Insignia',78.98,'ES',2011),
('Copas Inesquecíveis','Marco Alcântara','Masculino',200,'Larson',130.98,'RS',2018),
('O poder da mente','Clara Mafra','Feminino',120,'Continental',56.58,'SP',2017);

-- 1 – Trazer todos os dados.
SELECT * FROM livros; -- NÃO USAR EM EMPRESA
SELECT livro_titulo, livro_autor, autor_sexo, livro_paginas, editora, livro_valor, editora_uf, livro_ano FROM livros;

-- 2 – Trazer o nome do livro e o nome da editora
SELECT livro_titulo AS nome_do_livro, editora AS nome_da_editora FROM livros;
SELECT livro_titulo nome_do_livro, editora nome_da_editora FROM livros; -- CLÁUSULA AS OMITIDA

-- 3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
SELECT livro_titulo, editora_uf FROM livros WHERE autor_sexo = 'Masculino';
SELECT livro_titulo, editora_uf FROM livros WHERE autor_sexo LIKE 'M%';

-- 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.
SELECT livro_titulo, livro_paginas FROM livros WHERE autor_sexo = 'Feminino';
SELECT livro_titulo, livro_paginas FROM livros WHERE autor_sexo LIKE 'F%';

-- 5 – Trazer os valores dos livros das editoras de São Paulo.
SELECT livro_valor FROM livros WHERE editora_uf = 'SP';

-- 6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).
SELECT livro_autor, autor_sexo FROM livros WHERE editora_uf = 'SP' || 'RJ';
