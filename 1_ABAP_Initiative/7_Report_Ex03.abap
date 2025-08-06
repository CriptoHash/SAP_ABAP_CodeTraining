REPORT ZRMMUSER00_EX03

* Mostrando DATA x TYPES
* Executando Testes

DATA: 	lv_fname(20),
		lv_mname(20),
		lv_lname(20),
		lv_add1(20),
		lv_add2(20).
		
TYPES: ty_str(15).

DATA: 	lv_fname00 type ty_str,
		lv_mname00 type ty_str,
		lv_lname00 type ty_str,
		lv_add100  type ty_str,
		lv_add200  type ty_str.
		
TYPES: 	lv_matnr01 like mara-matnr,
		lv_matnr02 type mara-matnr.
		
DATA: 	lv_ty_matnr01 type lv_matnr01,
		lv_like_matnr02 like lv_matnr02.
		
		
* Estrutura x Tabela Interna
* O jeito mais rápido e fácil seria:

DATA: 	es_sflight type sflight,
		ti_sflight TYPE TABLE OF sflight.
		
TYPES: BEGIN OF ty_sflight.
	INCLUDE TYPE sflight.
TYPES: coluna_nova TYPE i,
		END OF ty_sflight.
		
DATA 	es_sflight_custom TYPE sflight,
		ti_sflight_custom TYPE TABLE OF sflight.
		
TYPES:  BEGIN OF ty_custom,
			num1 TYPE i,
			nome TYPE string,
		END OF ty_custom.
		
DATA: 	es_custoim TYPE ty_custom,
		ti_custom TYPE TABLE OF ty_custom.
