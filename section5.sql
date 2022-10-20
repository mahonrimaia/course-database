-- SEÇÃO 5: LÓGICA DE PREDICADOS

AND E OR

-- SUMARIZANDO DADOS
-- FUNÇÕES DE AGREGAÇÃO
-- CLÁUSULA COUNT
SELECT COUNT(*) FROM cliente;
SELECT COUNT(*) AS "Quantidade de registros da tabela cliente" FROM cliente;
SELECT COUNT(*) TOTAL FROM cliente;

--CLÁUSULA GROUP BY
SELECT sexo, COUNT(*)
FROM cliente
GROUP BY sexo;
-- ESSA QUERY RETORNA A QUANTIDADE DE PESSOAS COM SEXO F E M SEPARADAMENTE, NÃO O TOTAL NUMA LINHA SÓ. NO CASO DE OUTRAS COLUNAS COM MAIS VALORES, ESSA QUERY VAI TRAZER UMA QUANTIDADE DE LINHAS IGUAL A NUMERO DE OPÇÕES REGISTRADAS E A QUANTIDADE DE CADA UM

/* PERFORMANCE COM OPERADORES LÓGICOS */
/* Uma dica importante para quando buscar registros usando operadores lógicos (OR e AND) é tentar saber a porcentagem de chance dos dados serem verdadeiros.

Numa query usando OR, coloquei como primeiro statement o campo que tem maior porcentagem de ser encontrado, isso vai diminuir uma segunda verificação em uma mesma linha já que pela lógica ou basta um dos dois ser verdadeiro para entrar como resultado da consulta.

Usando o AND, a lógica é a inversa, pois para entrar como resultado em uma lógica AND, os dois campos precisam ser verdadeiros. Por exemplo, se numa tabela estamos procurando por registros onde o sexo seja feminino e a cidade seja RJ, e sabemos que toda a base 70% são do sexo feminino e 30% são da cidade RJ, então colocamos RJ como primeiro statement para deixar a query mais performática (mais rápida).
*/