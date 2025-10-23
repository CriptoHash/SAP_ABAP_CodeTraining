REPORT ZCURSO_OPEN_SQL.

* INTRODUÇÃO
" O sap utiliza alguns bancos de dados e em cada banco especifico ele utiliza uma linguagen, mas utilizando o Open SQL o SAP traduz a consulta e envia para o banco na linguagem nativa, sem que você precise entender de todos os tipos

* Quais bancos de dados o SAP utiliza?
" O SAP pode utilizar muitas opções de bancos de dados nas versões mais antigas(SAP Sybase, SAP MaxDB, IBM DB2, Microsoft SQL Server, Oracle), ja no SAP HANA ele utiliza o proprio banco do HANA(SAP HANA).

* O que é Open SQL
" É um conjunto de comando de consultas que o SAP utiliza como uma linguagem para se comunicar com outras linguagens de consultas de outros tipos de bancos

* Select (exemplos)

DATA: lt_Scarr TYPE STANDARD TABLE OF scarr. " criando a tabela interna
DATA: ls_scarr TYPE scarr. " criando a estrutura para receber o Loop da tabela

SELECT *
	INTO TABLE lt_scarr " No SAP precisa especificar a tabela interna que voce deseja ver esses dados
	FROM scarr
	
LOOP AT lt_scarr INTO ls_scarr. "Percorre linha a linha da tabela e joga na estrutura
	WRITE ls_scarr-carrid. " escreve o id
	WRITE ls_scarr-carname. " escreve o nome do carro
	NEW-LINE.
ENDLOOP.
	

* Insert (exemplos)
" Insere uma linha na tabela do banco de dados 

DATA: lt_Scarr TYPE STANDARD TABLE OF scarr. 
DATA: ls_scarr TYPE scarr. 

CLEAR ls_scarr.
ls_scarr-carrid = 'Z1'.
ls_scarr-carname = 'Gol Linha Aéreas'
INSERT scarr FROM ls_scarr.

* Update (exemplos)
" Atualiza uma ou mais linha de dados na tabela do banco de dados.

CLEAR ls_scarr.
ls_scarr-carrid = 'Z1'.
ls_scarr-carname = 'Gol Linhas Aéreas 2'.
ls_scarr-currcode = 'BRL'.
MODIFY scarr FROM ls_scarr.

"pode se atualizar a tabela utilizando o Update podem precisa remover a linha do MODIFY acima
UPDATE scarr
	SET carnname = ls_scarr-carrname
		currcode = ls_scarr-currcode
	WHERE carrid = ls_scarr-carrid

* Delete (exemplos)
" Deleta todos os registos para a chave indicada

DELETY FROM scarr WHERE carrid = 'Z1'. 

* 
