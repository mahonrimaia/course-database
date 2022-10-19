/* Modelagem básica
Entidade = Tabela
Campo = Atributo
Registro = União dos campos
*/

CLIENTE

NOME - CARACTER(30)
CPF - NUMERICO(11)
EMAIL - CARACTER(30)
TELEFONE - CARACTER(30)
ENDERECO - CARACTER(100)
SEXO - CARACTER(1)

/* PROCESSOS DE MODELAGEM */

HÁ TRÊS ETAPAS DE MODELAGEM:

/* Geralmente as duas primeiras fases são feitas pelo administrador de dados (AD). Ele sabe onde estão as tabelas, se precisa criar uma nova tabela. */

- MODELAGEM CONCEITUAL - RASCUNHO
- MODELAGEM LÓGICA - TRAZ O RASCUNHO PARA UM PROGRAMA DE MODELAGEM (BRMODELO, WORKBENCH, STARUML)

/* Já a modelagem física fica a critério do DBA, mas também pode ser feita pelo AD. */

- MODELAGEM FÍSICA - SCRIPTS DE BANCO
/* Um SGBD possui vários bancos de dados.
   Os bancos de dados possuem tabelas. */

/* CRIANDO O BANCO DE DADOS */
CREATE DATABASE exemplo;

CREATE DATABASE projeto;

/* CONECTANDO-SE AO BANCO */
USE projeto;

/* CRIANDO A TABELA DE CLIENTES */
CREATE TABLE cliente(
  nome VARCHAR(30),
  sexo CHAR(1),
  email VARCHAR(30),
  cpf INT(11),
  telefone VARCHAR(30),
  endereco VARCHAR(100)
);

/* É muito importante usar os tipos corretos de dados para ajudar o algoritmo de busca a processar os dados o quanto antes.
Bancos ou tabelas muito grandes tendem a consumir muito tempo processando uma consulta.

AD - Administrador - Cuida dos dados
DBA - Administrador de banco de dados - Cuida da infraestrutura do banco de dados (segurança)
TUNNING - Cuida da performance/rapidez das consultas no banco, deixando as queries mais rápidas
BI - O que ocorreu no passado
DS - Data Science - O que vai acontecer no futuro
Mineração de dados - Que é ligado a Data Science


OLTP - AD, DBA
OLAP - BI
*/

/* VERIFICANDO AS TABELAS DO BANCO */
SHOW TABLES;

/* DESCOBRINDO COMO É A ESTRUTURA DE UMA TABELA */
DESC cliente;

/* TIPAGEM */
/* A tipagem em banco de dados é muito importante pois pode ajudar as consultas ao banco de dados a serem mais performáticas, ou seja, a trazerem os resultados da consulta mais rápido.

Para cada tipo de dado existe um tipo que o define. E o uso do tipo certo para o dado certo pode fazer toda a diferença.

Para palavras existe os tipos CHAR, VARCHAR e TEXT; para arquivos e imagens, o tipo BLOB, para números os tipos FLOAT e INT.

VARCHAR é um tipo de dado variável. O CHAR não varia. Ele sempre ocupa o mesmo espaço especificado na criação da tabela. O VARCHAR pode ocupar menos espaço e esse trabalho para se adequar ao tamanho da palavra que ele armazena pode diminuir a performance do banco. Então em casos onde se sabe que a palavra não vai variar no número de caracteres, é ideal que se use o tipo CHAR.

Por exemplo: colunas de gênero (M ou F), colunas de verdadeiro ou falso (1 ou 0) ou ainda colunas de UF (Unidade Federativa), onde os valores são sempre duas letras que representam as siglas de cada Estado do Brasil (CE, BA, SP, RJ, etc). */

/* TIPO ENUM (Enumeração) */
/* O tipo ENUM só existe no MySQL. Em outros bancos temos que criar Constraints que aprenderemos mais a frente! */
/* Utilizamos o tipo ENUM quando queremos limitar os dados em uma coluna. Mais a frente veremos comandos de agregação como o comando COUNT e o comando GROUP BY, que contam e agrupam registros, respectivamente.

Por exemplo: o gênero pode ser armazenado de várias formas, M, Masc, Masculino, F, Fem, Feminino. Todas essas possibilidades podem acabam gerando confusão na hora de armazenar esses valores. Por isso existe o ENUM. Ele vai listar as possíveis opções de modo a controlar quais valores são permitidos naquela coluna. Por exemplo, a coluna pode ser limitada a aceitar apenas M ou F ao invés de aceitar Masculino e Feminino. Ele funciona como um ComboBox, onde aparecem as opções possíveis e o usuário não tem que digitar nada. Ou seja, os dados que entrarão naquela coluna não estarão fora do conjunto definido.
 */

/* TIPOS NUMÉRICOS: INT e FLOAT
O FLOAT é o tipo numérico usado para representar números reais (números com casas decimais). Serve para representar números com precisão. Quanto mais casas decimais mais precisão. A quantidade de casas é passada por parâmetro. Exemplo: FLOAT(10,2) quer dizer que haverá números com até 10 casas onde 2 ficarão à direita da vírgula. FLOAT(7,3) quer dizer que haverá números com até 7 casas onde 3 casas ficarão à direita da vírgula.

O INT é usado para representar números inteiros. E ele possui um limite de no máximo 11 caracteres. Para números que não são usados para cálculos, o ideal é não usar o INT e sim outro tipo como o VARCHAR. Exemplo: usar VARCHAR para armazenar CPFs e CNPJs.
 */