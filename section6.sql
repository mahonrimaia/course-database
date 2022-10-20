/* CRIAR DATABASE E TABELA PARA EXERCÍCIO DE FIXAÇÃO */

/* CRIAR QUERIES PARA AS SEGUINTES QUESTÕES */

/*
Considerando o que você aprendeu sobre performance, resolva os exercícios abaixo:

1. Traga os funcionários que trabalham no departamento de filmes ou no departamento de roupas

MINHA QUERY PROPOSTA: */ 

SELECT *
FROM funcionarios
WHERE departamento = 'Roupas' OR departamento = 'Filmes';

-- 74 ROWS

/*
2. O gestor de marketing pediu a lista das funcionárias que trabalham no departamento de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras desses dois setores.

MINHA QUERY PROPOSTA: */

SELECT *
FROM funcionarios
WHERE sexo LIKE 'F%'
AND (departamento = 'Lar' OR departamento = 'Filmes');

-- 73 ROWS
-- 41 ROWS

/*
3. Traga os funcionários do sexo masculino ou os funcionários que trabalham no setor jardim.

MINHA QUERY PROPOSTA: */

SELECT *
FROM funcionarios
WHERE sexo LIKE "M%" OR departamento = 'Jardim';

-- 507 ROWS

/*
OBS: Como estamos trabalhando com AND, colocamos o departamento primeiro, pois ele irá checar a segunda condição menos vezes.
 */