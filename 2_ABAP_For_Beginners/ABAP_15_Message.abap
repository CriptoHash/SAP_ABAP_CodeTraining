REPORT ZTESTE.

* Tipos
* ----------------
* S = Sucesso
* E = Erro
* W = Aviso
* I = Informação
* A = Abortar
* x = Cancelar (DUMP)

* Comportamento das Mensagens

* Usos
* ----------------
* MESSAGE 'teste' TYPE 'S'.
* MESSAGE 'teste' TYPE 'S' DISPLAY LIKE 'E'.
* MESSAGE s000(ztest) WITH 'Paulo'.

* sy-msgid = 'ZTEST'.
* MESSAGE ID sy-msgid TYPE 'S' NUMBER 000 WITH 'Paulo'.

* DATA: ld_message TYPE string.
* MESSAGE s000(ztest) WITH 'Paulo' INTO ld_message.
* WRITE ld_message.
* SKIP.

SELECTION-SCREEN BEGIN OF BLOCK bl.
	PARAMETERS p_msg(60) TYPE c OBLIGATORY DEFALT 'Isso é uma mensagem'.
	PARAMETERS p_type 	 TYPE C OBLIGATORY.
SELECTION-SCREEN END OF BLOCK bl.

* AT SELECTION-SCREEN.
*	IF p_type = 'W'.
*		MESSAGE 'Isso é um aviso TYPE 'W'.
*	ENDIF.
	
START-OF-SELECTION.
	MESSAGE p_msg TYPE p_type.
	
	WRITE 'Fim do programa'.
