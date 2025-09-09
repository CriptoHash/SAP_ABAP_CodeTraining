* Especificação: Calcule a média anual dos 4 bimestres.
REPORT ZCURSO_0010

SELECTION-SCREEM BEGIN OF BLOCK b1.
  PARAMETER p_1bim(12) TYPE p DECIMALS 2.
  PARAMETER p_2bim(12) TYPE p DECIMALS 2.
  PARAMETER p_3bim(12) TYPE p DECIMALS 2.
  PARAMETER p_4bim(12) TYPE p DECIMALS 2.
SELECTION-SCREEM END OF BLOCK b1.

START-OF-SELECTION.
  DATA ld_media(12) TYPE p DECIMALS 2.

  ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim ) / 4.

* 1ª Resolução 
*  IF ld_media < 60.
*    WRITE: 'Sua média anual foi de ' , ld_media , ', você foi reprovado!'.
*  ELSE.
*    WRITE: 'Sua média anual foi de ' , ld_media , ', você foi aprovado, Parabéns!'.
*  END IF.

* 2ª Resolução 
  IF ld_media >= 0 AND ld_media <= 50.
    WRITE: 'Sua nota foi muito baixa, você foi reprovado!'.
  ELSEIF ld_media > 50 AND ld_media <= 59.
    WRITE: 'Você quase passou, estude um pouco mais'.
  ELSEIF ld_media >= 60 AND ld_media <= 100.
    WRITE: 'Parabéns, você passou!'.
  END IF.


* Fazer um programa que receba as 4 notas e calcule a média anual do aluno.
* Após calcular, verifique se a nota foi menor que 60.
* Se sim, escreva: "Sua média anual foi de X, você foi reprovado!"
* Se não, escreva: "Sua média anual foi de X, você foi aprovado, Parabéns!"

* Após criado, ajuste a regra para permitir 3 faixas de nota, alterando a mensagem:
* 0-50: "Sua nota foi muito baixa, você foi reprovado!"
* 51-59: "Você quase passou, estude um pouco mais"
* 60-100: "Parabéns, você passou!"
