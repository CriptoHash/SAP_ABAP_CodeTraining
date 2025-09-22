REPORT ZCURSO_0022.

START-OF-SELECTION.
	DATA lt_cliente TYPE STANDARD TABLE OF zurso_cliente_s.
	DATA ls_cliente TYPE zurso_cliente_s.
	
	ls_cliente-id 	= 10.
	ls_cliente-nome = 'Jose'.
	APPEND ls_cliente TO lt_cliente.
	
	ls_cliente-id 	= 20.
	ls_cliente-nome = 'João'.
	APPEND ls_cliente TO lt_cliente.
	
	ls_cliente-id 	= 30.
	ls_cliente-nome = 'Silva'.
	APPEND ls_cliente TO lt_cliente.
	
	
* INSTRUÇÃO PARA MODIFICAR A INFORMAÇÃO PELO NUMERO DO INDICE(NUMERO DA LINHA).
	ls_cliente-id 	= 20.
	ls_cliente-nome = 'João Silva'.
	MODIFY lt_cliente FROM lS_cliente INDEX 2.
	
	
* A INSTRUÇÃO ABAIXO LIMPA TODAS AS LINHAS DA TABELA INTERNA
	CLEAR lt_cliente.
	

* A INSTRUÇÃO ABAIXO DELETA A LINHA DA TABELA INTERNA
	DELETE lt_cliente INDEX 2.
	

* INSTRUÇÃO DE REMOVER DADOS POR FILTRO.
	DELETE lt_cliente WHERE id = 10.
	
	
* LENDO UMA LINHA DE TABELA INTERNA POR INDICE.
* 	PRIMEIRAMENTE LIMPA-SE A ESTRUTURA ANTES DE LER A LINHA DA TABELA INTERNA.
	CLEAR ls_cliente.
	READ TABLE lt_cliente INTO ls_cliente INDEX 2.
	
	
* LENDO UMA LINHA POR FILTRO.
* 	PRIMEIRAMENTE LIMPA-SE A ESTRUTURA ANTES DE LER A LINHA DA TABELA INTERNA.
	CLEAR] ls_cliente.
	READ TABLE lt_cliente INTO ls_cliente  WITH KEY id = 10.
	
	
* LENDO VARIAS LINHA DA TABELA INTERNA.
	LOOP AT lt_cliente INTO ls_cliente.
		WRITE ls_cliente-id.
		WRITE ls_cliente-nome.
		NEW-LINE.
	ENDLOOP.
	
	
* MODIFICANDO UMA LINHA EM UM LOOP.
	LOOP AT lt_cliente INTO ls_cliente.
		ls_cliente-nome = |{ls_cliente-nome }2|. "concatena o nome(todos registros ou não(aplicar filtro)) com o '2' no final'
		MODIFY lt_cliente FROM ls_cliente.
	ENDLOOP.
	
	
* ESCREVENDO CONTEUDO NA TELA.
	LOOP AT lt_cliente INTO ls_cliente.
		WRITE ls_cliente-id.
		WRITE ls_cliente-nome.
		NEW-LINE.
	ENDLOOP.
	
	
* ORDENANDO DADOS.
	SORT lt_cliente BY id DESCENDING.
* 		Ou	
*			SORT lt_cliente BY nome DESCENDING.
* 		Ou	
*			SORT lt_cliente BY nome DESCENDING id ASCENDING


* DELETANDO LINHAS DUPLICADAS.
* PRIMEIRO PRECISA ORDENAR A TABELA
	SORT lt_cliente BY id ASCENDING.
	DELETE ADJACENT DUPLICATES FROM lt_cliente COMPARING id.
	
* DEBUG
*	Dentro do Debug é possivel realizar algumas alterações direto na tabela interna, clicando com o botão direito na tabela.
*	Opções como por exemplo: 
*			Change Selected Rows
*			Delete Selected Rows
*			Append Row (APPEND)
*			Insert Row (using index)
*			Delete Whole Table/Row Area


	WRITE 'FIM'
	

* Roteiro:
* 		O que é uma tabela interna.
* 		Criando uma tabela interna standard.
* 		Criando uma linha de tabela interna.
* 		Inserindo dados.
* 		Limpando dados.
* 		Modificando dados por indice.
* 		Removendo dados por indice.
* 		Removendo dados por filtro.
* 		Lendo uma linha por filtro.
* 		Lendo varias linha de uma tabela interna.
* 		Modificando uma linha em um loop.
* 		Escrevendo conteudo na tela.
* 		Ordenando dados.
* 		Deletando linhas duplicadas.
* 		Debug (Visualizar linhas, visualizar 1 linha, inserir, atualizar e deletar)
* 		Conclusão

* Em ABAP, uma tabela interna é um objeto de dados usado para armazenar conjuntos de registros em memória, de forma temporária, durante a execução de um programa. 
*   Ela é muito utilizada para processar e manipular grandes volumes de dados vindos do banco de dados SAP (tabelas transparentes, por exemplo) ou de outras estruturas.
*   Dá para pensar nela como uma “tabela na RAM”, semelhante a um array de estruturas em outras linguagens, mas com recursos específicos para ABAP.

* Características principais:
*     Estrutura: é baseada em um work area ou estrutura de linha, ou seja, cada linha da tabela interna tem o mesmo formato (mesmos campos e tipos).
*     Dinâmica: o número de linhas pode crescer ou diminuir durante a execução do programa (não é fixo como em arrays comuns).
*     Temporária: existe apenas enquanto o programa estiver em execução; não armazena dados permanentemente no banco.
*     Operações rápidas: permitem inserir, ler, modificar, ordenar e apagar registros em memória sem acessar o banco de dados repetidamente.

* Tipos de tabelas internas:

*     Standard Table
*       Estrutura simples, semelhante a uma lista.

*     Acessada por índice.
*       Boa para percorrer dados sequencialmente.

*     Sorted Table
*       Sempre mantida em ordem de acordo com uma chave definida.
*       Pesquisa binária é usada (mais eficiente do que standard para buscas).

*     Hashed Table
*       Usa uma tabela de dispersão (hash table).
*       Ideal para acessos diretos com chave, como um dicionário/mapa.
*       Não pode ser percorrida por índice (somente por chave).
