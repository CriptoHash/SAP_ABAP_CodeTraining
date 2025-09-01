* Especificação:
* Calcular a média anual dos 4 Bimestres
* Fazer um programa que receba as 4 notas e calcule a média anual do aluno.
* Após calcular imprima o resultado na tela conforme o modelo a seguir:
* "A média anual do aluno é: 75"

REPORT ZCURSO_009.

SELECTION-SCREEN BEGIN OF BLOCK bl.
  PARAMETER: p_1bim(12) TYPE p DECIMALS 2.
  PARAMETER: p_2bim(12) TYPE p DECIMALS 2.
  PARAMETER: p_3bim(12) TYPE p DECIMALS 2.
  PARAMETER: p_4bim(12) TYPE p DECIMALS 2.
SELECTION-SCREEN END OF BLOCK bl.

START-OF-SELECTION.
  DATA ld_media(12) TYPE p DECIMALS 2.

ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim ) / 4.

WRITE 'A média anual do aluno é: '.
WRITE ld_media.

* Ajustar os nomes dos parametros (ex: p_1bim) para aparecer nota 1 Bimestre
* -> Ir para -> Text Elements -> Selection Texts (aba) -> adicionar a legenda, ex: Nota 1º Bimestre
* Lembrete: o Texto inserido sera atrelado ao idioma seleciona ao logar no SAP. caso tenha logado em Ingles inserir leganda EN e depois adicionar a tradução.
