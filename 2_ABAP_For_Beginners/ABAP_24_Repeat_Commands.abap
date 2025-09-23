REPORT ZCURSO_0023.

" Declarando a tabela interna"
DATA: lt_plane TYPE STANDARD TABLE OF saplane.
DATA: ls_plane TYPE saplane.

DATA: lt_scarr TYPE STANDARD TABLE OF scarr.
DATA: ls_scarr TYPE scarr.

DATA: lt_spfli TYPE STANDARD TABLE OF spfli.
DATA: ls_spfli TYPE spfli.

* Carregando dados
"Aviões"
SELECT *
	INTO TABLE lt_plane
	FROM saplane.

"Companhias aéreas"
SELECT *
	INTO TABLE lt_scarr
	FROM scarr.
	
"Voos"
SELECT *
	INTO TABLE lt_spfli
	FROM spfli.
	
BREAK-POINT.


* Comando LOOP AT
* Usando quando se quer passar linha a linha da tabela
WRITE 'LOOP AT'.
NEW-LINE.
LOOP AT lt_plane INTO ls_plane. "WHERE seatmax > 200.
	WRITE: 'sy-index', sy-index.
	WRITE: 'sy-tabix', sy-tabix. "Comando para identificar a linha quando usando LOOP AT"
	
	WRITE: ls_plane-planettype, ls_plane-seatmax. " usado para percorrer  a tabela e preencher os campos dela
	
	NEW-LINE.
ENDLOOP.


* Comando WHILE
* Quando se tem uma condição(verdade ou falsa)
WHILE sy-index <= lines( lt_plane ). "Comando para identificar a vez que foi executado quando usando WHILE"
"	WRITE: 'sy-index', sy-index.
"	WRITE: 'sy-tabix', sy-tabix. 
	
	READ TABLE lt_plane INTO ls_plane INDEX sy-index.
	WRITE: ls_plane-planettype, ls_plane-seatmax.
	
	NEW-LINE.
ENDWHILE.


* Comando de Repetição DO (REALIZA O LOOP POR X VEZES)
* Quando se sabe quantas vezes precisa fazer a repetição
WRITE 'DO X TIMES'.
NEW-LINE.
DO 3 TIMES.
"	WRITE: 'sy-index', sy-index.
"	WRITE: 'sy-tabix', sy-tabix. 
	
	READ TABLE lt_plane INTO ls_plane INDEX sy-index.
	WRITE: ls_plane-planettype, ls_plane-seatmax.
	
	NEW-LINE.
ENDDO.


* Comando de LOOP dentro de LOOP
WRITE 'LOOP dentro de LOOP'.
NEW-LINE.

SKIP.
LOOP AT lt_scarr INTO ls_scarr.
	WRITE ls_scarr-carrname.
	WRITE sy-uline.
	
	LOOP AT lt_spfli INTO ls_spfli WHERE carrid = ls_scarr-carrid.
		WRITE: ls_spfli-cityfrom, ls_spfli-cityto.
		NEW-LINE.
	ENDLOOP.
	
	SKIP.
	
ENDLOOP.


* Parando um LOOP (BREAK)
WRITE 'Parando um LOOP'.
NEW-LINE.
LOOP AT lt_plane INTO ls_plane.
	WRITE: ls_plane-planettype, ls_plane-seatmax.
	
	IF ls_plane-seatmax > 200.
		EXIT.
	ENDIF.
	
	NEW-LINE.
ENDLOOP.


* Interronpendo a iteração atual (continue).
WRITE 'Interronpendo a iteração atual'.
NEW-LINE.
LOOP AT lt_plane INTO ls_plane.
	IF ls_plane-seatmax > 200. "ou seja quando encontra um valor maior que 200 a instrução não regista o valor e continua procurando"
		CONTINUE.
	ENDIF.

	WRITE: ls_plane-planettype, ls_plane-seatmax.
	
	NEW-LINE.
ENDLOOP.


* Loops Infinitos (WHILE, DO).
WRITE 'WHILE INFINITO'.
NEW-LINE.
WHILE 1 = 1.
	IF sy-index > 5.
		EXIT.
	ENDIF.

	"Verifica se o processo assincrono, exemplo, emissão de NF"
ENDWHILE.

	WRITE: ls_plane-planettype, ls_plane-seatmax.
	
	NEW-LINE.
ENDLOOP.


WRITE 'DO INFINITO'.
NEW-LINE.
DO.
	IF sy-index > 5.
		EXIT.
	ENDIF.

ENDDO.

WRITE: 'FIM'


	
