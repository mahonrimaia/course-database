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