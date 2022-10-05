Seção 3: Elevando o nível - Comandos que você não pode deixar de saber!

Numa tabela temos linhas e colunas.
Uma linha é chamada de registro ou tupla (a junção de todas as colunas que compõe uma linha).

Cada célula do banco é chamada de campo.

Recapitulando alguns comandos aprendidos:

SHOW DATABASES; -- Para mostrar os bancos existentes.

USE <nome do banco>; -- Para selecionar aquele banco e, então, fazer operações em suas tabelas.

SHOW TABLES; -- Para mostrar as tabelas existentes naquele banco.

DESC <nome da tabela>; -- Descreve como a tabela foi criada (quais tipos são usados, quais campos podem ser nulos ou não, entre outras informações).

/* SINTAXE BÁSICA DE INSERÇÃO */
/* FORMA 1: OMITINDO AS COLUNAS, DESSA FORMA OS VALORES PRECISAM VIR NA EXATA FORMA QUE ESTÃO NA TABELA */
/* QUANDO O NOME DAS COLUNAS É OMITIDO, É NECESSÁRIO INFORMAR DADOS PARA TODAS AS COLUNAS NA ORDEM CORRETA CONTIDA NA TABELA */
INSERT INTO <nome da tabela> VALUES (...,...,...);
INSERT INTO cliente VALUES('JOAO','M','JOAO@EMAIL.COM',988638273,'22923110','MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');
INSERT INTO cliente VALUES('CELIA','F','CELIA@GMAIL.COM',541521456,'25078869','RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');
INSERT INTO cliente VALUES('JORGE','M',NULL,885755896,'58748895','OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');

/* FORMA 2: DESCREVENDO AS COLUNAS, É MAIS SEGURO */

INSERT INTO cliente(NOME, SEXO, ENDERECO, TELEFONE, CPF) VALUES('LILIAN', 'F', 'SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','947785696',887774856);

/* FORMA 3: INSERT COMPACTO (SOMENTE MYSQL) */
INSERT INTO cliente VALUES('ANA','F','ANA@GLOBO.COM',85548962,'548556985','PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP'),
                          ('CARLA','F','CARLA@TERATI.COM.BR',7745828,'66587458','SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');

INSERT INTO cliente(NOME, SEXO, ENDERECO, TELEFONE, CPF) VALUES('CLARA', 'F', 'SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','883665843',99999999999);
/* O TIPO INT TEM UM LIMITE DE NÚMERO (RANGE) E, POR ISSO, O NÚMERO 99999999999 VAI DAR ERRO AO TENTAR INSERIR */

/* Strings ficam entre aspas simples. Numéricos não ficam entre aspas. Numéricos podem ser usados para cálculos. Números que não precisam de cálculo são armazenados como string. */

/* PROJEÇÕES */
/* Em banco de dados trabalhamos exaustivamente com SELEÇÃO, PROJEÇÃO E JUNÇÃO.

O SELECT FAZ PARTE DA PROJEÇÃO (AQUILO QUE VOCÊ QUER VER)
*/

SELECT NOW(); -- MOSTRA A DATA E A HORA DE AGORA
SELECT 'MAHONRI MAIA';  -- MOSTRA A STRING PASSADA

/* ALIAS DE COLUNA
É POSSÍVEL MUDAR O NOME DA COLUNA COM O CLÁUSULA "AS" */

SELECT 'MAHONRI MAIA' AS 'DESENVOLVEDOR';

/* O SELECT NÃO APENAS SELECIONA DADOS DE UMA TABELA, ELE TAMBÉM PODE MOSTRAR DADOS QUE NÃO ESTÃO ARMAZENADOS NA TABELA MAS PASSADOS NA QUERY. POR ISSO É MAIS CORRETO AFIRMAR QUE O COMANDO SELECT PROJETA DADOS A PARTIR DE UMA QUERY. */

SELECT nome, sexo, email FROM cliente;
SELECT nome AS cliente, sexo, email FROM cliente;

/* NÃO USE 'SELECT *' EM SUA EMPRESA! */
/* MOSTRE APENAS AS INFORMÇÕES NECESSÁRIAS, NÃO TUDO */
/* O ASTERISCO (*) REALIZA UM FULLSCAN NO BANCO, ELE IGNORA ÍNDICES QUE OTIMIZAM AS BUSCAS NO BANCO, PERFORMATICAMENTE FALANDO ISSO É PÉSSIMO */

SELECT email, sexo, endereco, nome, NOW() AS data_hora FROM cliente;

/* FILTRO A NÍVEL DE LINHA (ATÉ AGORA OS SELECTS ERAM A NÍVEL DE COLUNA) */
/* PARA PROJEÇÃO TEMOS O SELECT */
/* PARA SELEÇÃO TEMOS O WHERE (ONDE) */
SELECT nome, sexo FROM cliente WHERE sexo = 'M';
SELECT nome, sexo FROM cliente WHERE sexo = 'F';

/* PARA FILTRAR POR APROXIMAÇÃO, USAMOS O LIKE NO LUGAR DA IGUALDADE, PORÉM ELE DEGRADA A PERFORMANCE */
SELECT nome, sexo FROM cliente WHERE endereco LIKE 'RJ';
SELECT nome, sexo, endereco FROM cliente WHERE endereco LIKE '%RJ';
SELECT nome, sexo, endereco FROM cliente WHERE endereco LIKE '%CENTRO%';
