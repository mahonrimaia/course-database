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
