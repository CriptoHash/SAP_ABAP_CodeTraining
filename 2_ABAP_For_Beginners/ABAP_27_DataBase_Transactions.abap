REPORT ZCURSO_SQL_TRANSACTION.

* Transações de Banco de Dados.
" São Pacotes que enviados para que possa ser realizado os ajustes no banco.
* OBS: não usar COMMIT WORK ou ROLLBACK WORK dentro do standart

DATA: ls_header TYPE zcurso_so_header.
DATA: ls_item TYPE zcurso_so_item.

START-OF-SELECTION.
	BREAK-POINT.
	"PERFORM limpar_tabelas.
	PERFORM exemplo1 USING 1.
"	PERFORM exemplo2 USING 2.
"	PERFORM exemplo3 USING 3.
"	PERFORM exemplo4 USING 4.
"	PERFORM exemplo5 USING 5.
	
	NEW-LINE.
	WRITE ' Fim do Programa'.
	
FORM exemplo1 USING ud_soid TYPE int4.
	DATA: ls_header TYPE zcurso_so_header.
	DATA: ls_item 	TYPE zcurso_so_item.
	
	CLEAR ls_header.
	ls_header-soid = ud_soid.
	ls_header-erdat = sy-datum.
	ls_header-erzet = sy-uzeit.
	ls_header-ernam = sy-uname.
	
	CLEAR ls_item.
	ls_item-soid 	 = ud_soid.
	ls_item-posnr	 = 1.
	ls_item-matnr	 = '10'.
	ls_item-maktx	 = 'PILHA'.
	ls_item-menge	 = 2.
	ls_item-price_un = '1.99'. 
	
	Insert zcurso_so_header FROM ls_header.
	IF sy-subrc = 0.
		IF ls_item-menge > 0.
			INSERT zcurso_so_item FROM ls_item.
		ELSE.
			WRITE |O item { ls_item-posnr } tem quantidade menor ou igual a zero |.
		ENDIF.
	ENDIF.
ENDFORM.

FORM exemplo2 USING ud_soid TYPE int4.
	DATA: ls_header TYPE zcurso_so_header.
	DATA: ls_item 	TYPE zcurso_so_item.
	
	CLEAR ls_header.
	ls_header-soid = ud_soid.
	ls_header-erdat = sy-datum.
	ls_header-erzet = sy-uzeit.
	ls_header-ernam = sy-uname.
	
	CLEAR ls_item.
	ls_item-soid 	 = ud_soid.
	ls_item-posnr	 = 1.
	ls_item-matnr	 = '10'.
	ls_item-maktx	 = 'PILHA'.
	ls_item-menge	 = 0.
	ls_item-price_un = '1.99'. 
	
	Insert zcurso_so_header FROM ls_header.
	IF sy-subrc = 0.
		IF ls_item-menge > 0.
			INSERT zcurso_so_item FROM ls_item.
		ELSE.
			WRITE |O item { ls_item-posnr } tem quantidade menor ou igual a zero |.
		ENDIF.
	ENDIF.
ENDFORM.

FORM exemplo3 USING ud_soid TYPE int4.
	DATA: ls_header TYPE zcurso_so_header.
	DATA: ls_item 	TYPE zcurso_so_item.
	
	CLEAR ls_header.
	ls_header-soid = ud_soid.
	ls_header-erdat = sy-datum.
	ls_header-erzet = sy-uzeit.
	ls_header-ernam = sy-uname.
	
	CLEAR ls_item.
	ls_item-soid 	 = ud_soid.
	ls_item-posnr	 = 1.
	ls_item-matnr	 = '10'.
	ls_item-maktx	 = 'PILHA'.
	ls_item-menge	 = 2.
	ls_item-price_un = '1.99'. 
	
	Insert zcurso_so_header FROM ls_header.
	IF sy-subrc = 0.
		IF ls_item-menge > 0.
			INSERT zcurso_so_item FROM ls_item.
			COMMIT WORK.
		ELSE.
			WRITE |O item { ls_item-posnr } tem quantidade menor ou igual a zero |.
			ROLLBACK WORK.
		ENDIF.
	ELSE.
		ROLLBACK WORK.
	ENDIF.
ENDFORM.

FORM exemplo4 USING ud_soid TYPE int4.
	DATA: ls_header TYPE zcurso_so_header.
	DATA: ls_item 	TYPE zcurso_so_item.
	
	CLEAR ls_header.
	ls_header-soid = ud_soid.
	ls_header-erdat = sy-datum.
	ls_header-erzet = sy-uzeit.
	ls_header-ernam = sy-uname.
	
	CLEAR ls_item.
	ls_item-soid 	 = ud_soid.
	ls_item-posnr	 = 1.
	ls_item-matnr	 = '10'.
	ls_item-maktx	 = 'PILHA'.
	ls_item-menge	 = 0.
	ls_item-price_un = '1.99'. 
	
	Insert zcurso_so_header FROM ls_header.
	IF sy-subrc = 0.
		IF ls_item-menge > 0.
			INSERT zcurso_so_item FROM ls_item.
			COMMIT WORK.
		ELSE.
			WRITE |O item { ls_item-posnr } tem quantidade menor ou igual a zero |.
			ROLLBACK WORK.
		ENDIF.
	ELSE.
		ROLLBACK WORK.
	ENDIF.
ENDFORM.

FORM exemplo5 USING ud_soid TYPE int4.
	DATA: ls_header TYPE zcurso_so_header.
	DATA: ls_item 	TYPE zcurso_so_item.
	
	CLEAR ls_header.
	ls_header-soid = ud_soid.
	ls_header-erdat = sy-datum.
	ls_header-erzet = sy-uzeit.
	ls_header-ernam = sy-uname.
	
	CLEAR ls_item.
	ls_item-soid 	 = ud_soid.
	ls_item-posnr	 = 1.
	ls_item-matnr	 = '10'.
	ls_item-maktx	 = 'PILHA'.
	ls_item-menge	 = 0.
	ls_item-price_un = '1.99'. 
	
	Insert zcurso_so_header FROM ls_header.
	
	DATA: ld_resultado TYPE int4.
	ld_resultado = 10 / 0. " Forçando DUMP	
ENDFORM.

FORM limpar_tabelas.
	DELETE FROM zcurso_so_header.
	DELETE FROM zcurso_so_item.
	COMMIT WORK AND WAIT.
ENDFORM.
