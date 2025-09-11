* FORM

* O que é:
* Uma rotina (subrotina), ou seja, um bloco de código que pode ser chamado várias vezes dentro do programa.

* Função:
* É modularização a nível de execução, permitindo reuso de lógica dentro do mesmo programa (ou INCLUDE).

* Estrutura básica:

*FORM calcular_imposto USING p_valor TYPE i
*                      CHANGING p_result TYPE i.
*  p_result = p_valor * 0.1.
*ENDFORM.

* Uso típico:
* Criar trechos de lógica que podem ser chamados diversas vezes (PERFORM calcular_imposto USING ...).

* Diferença principal

* INCLUDE → organização do código (estrutura e reaproveitamento de blocos de código-fonte).
* FORM → execução de lógica (subrotina que roda dentro do programa).

* Em resumo:
*     INCLUDE = reuso de código.
*     FORM = reuso de função/lógica.

* Veja exemplo abaixo (adição de Include e Form), e compare com o da Aula 10.

REPORT ZCURSO_0010.

*TODO PARAMETRO DE SELEÇÃO DE TELA FOI MOVIDO PARA O INCLUDE ABAIXO
INCLUDE ZCURSO_0010_SEL.

*TODO PARAMETRO DE DEFINIÇÃO DE VARIAVEIS FOI MOVIDO PARA O INCLUDE ABAIXO
INCLUDE ZCURSO_0010_TOP.

*TODO PARAMETRO DO EVENTO (REGRA IF + ld_mensagem) FOI MOVIDO PARA O INCLUDE ABAIXO
INCLUDE ZCURSO_0010_SOS.

* Para o form eu posso criar um include, e adicionar o form dentro dele.
* Dentro do include eu crio o calculo da média como no ex abaixo:
* ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim ) / 4.
INCLUDE ZCURSO_0010_FRM.

* Dentro desse include eu crio um form como no modelo abaixo, e será executado quando eu chamar dentro do (START-OF-SELECTION)
* O form pode ser chamado usando o comando ex: PERFORM calcular_media.
* Dentro do INCLUDE ZCURSO_0010_FRM.

*FORM calcular_media.
*  ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim ) / 4.
*ENDFORM.
