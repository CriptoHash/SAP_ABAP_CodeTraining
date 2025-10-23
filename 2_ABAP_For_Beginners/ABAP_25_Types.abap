REPORT ZCURSO_TYPES.

" Vantagens: reutilização e personalização
" Reutilização: pode-se criar um tipo e utilizar varias vezes
" Personalização: Pode criar varios tipos distintos, dentro do programa

* Tipos Simples

TYPES ly_nome TYPE char100.

DATA ld_nome1 TYPE ly_nome.
DATA ld_nome2 TYPE ly_nome.

ld_nome = 'José'.

BREAK-POINT.

* Tipos Estrutura

TYPES ly_scarr TYPE scarr.

DATA ls_scarr TYPE ly_scarr.

* Tipos para Tabela Interna

TYPES ly_scarr_tab TYPE STANDARD TABLE OF scarr.

DATA lt_scarr TYPE ly_scarr_tab.

* Tipo para Range
" Ao criar um range criamos uma tabela com 4 campos.(Row, Sign, Option, Low, High)

TYPES lu_carrid_r TYPE RANGE OF scarr-carrid.

DATA lt_carrid_r TYPE ly_carrid_r.

* Tipo para Estrutura Customizada

TYPES: BEGIUN OF ly_scarr	
		, id TYPE scarr-carrid	
		, nome TYPE scarr-carname
		, END OF ly_scarr.
		
DATA ls_scarr TYPE ly_scarr.

* Tipo de um tipo

TYPES ly_scarr TYPE scarr.
TYPES ly_scarr_tab TYPE STANDARD TABLE OD ly_scarr.

DATA ls_scarr TYPE ly_scarr.
DATA lt_scarr TYPE ly_scarr_tab.

* Tipo com Includes (com campos a mais)

TYPES: BEGIN OF lu_scarr
	, id TYPE i. "campos que não possui na estrutura"
	, INCLUDE TYPE scarr. "Todos os campos que possui na estrutura scarr"
TYPES: END OF ly_scarr.

DATA ls_scarr TYPE ly_scarr.

* Tipo com Estrutura e Tabela Interna

TPES ly_scarr_tab TYPE STANDARD TABLE OF scarr WIRH NON-UNIQUE KEY carrid.

TYPES: BEGIN OF lu_scarr
	, id TYPE i " adicionar um campos simples
	, scarr TYPE scarr " esse campo adiciona uma estrutura
	, scarr_tab TYPE " esse campo adiciona uma tabela interna
	, END OF ly_scarr.
	
Data: ls_scarr TYPE ly_scarr.
	
	
		





