*Ajuste do código para variaveis Globais e locais corretamente
*Onde estiver comentado é porque foi modivo para dentro de um INCLUDE ou FORM
REPORT ZCURSO_0010

INCLUDE ZCURSO_0010_SEL.
*SELECTION-SCREEM BEGIN OF BLOCK b1.
*  PARAMETER p_1bim(12) TYPE p DECIMALS 2.
*  PARAMETER p_2bim(12) TYPE p DECIMALS 2.
*  PARAMETER p_3bim(12) TYPE p DECIMALS 2.
*  PARAMETER p_4bim(12) TYPE p DECIMALS 2.
*SELECTION-SCREEM END OF BLOCK b1.

INCLUDE ZCURSO_0010_TOP.
*  DATA gd_media(12) TYPE p DECIMALS 2.
*  DATA gd_mensagem TYPE string.

INCLUDE ZCURSO_0010_SOS.
*  START-OF-SELECTION.
*  PERFORM calcular_media 
*      USING ud_1bim ud_2bim ud_3bim ud_4bim 
*      CHANGING gd_media.       
*  PERFORM escrever_mensagem.

INCLUDE ZCURSO_0010_FRM.
*  FORM calcular_media.
*      USING ud_1bim ud_2bim ud_3bim ud_4bim * Tras cada nota para uma variavel local, como parametro
*      CHANGING cd_media.
*      DATA ld_media(12) TYPE p DECIMALS 2.
*      ld_media = ( ud_1bim + ud_2bim + ud_3bim + ud_4bim ) / 4.
*      cd_media = ld_media.
*   ENDFORM
*------------------------
*  FORM escrever_mensagem.
*    IF gd_media < 60.
*     gd_mensagem = |Sua média anual foi de ' , gd_media , ', você foi reprovado!|.
*    ELSE.
*      gd_mensagem = |Sua média anual foi de ' , gd_media , ', você foi aprovado, Parabéns!|.
*    END IF.
*    WRITE gd_mensagem.
*  ENDFORM

