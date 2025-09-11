* O que é:
* Um recurso para inserir código fonte de outro programa/arquivo dentro do programa atual.

* Função:
* É modularização a nível de código-fonte (reuso de trechos inteiros de programas).

* Exemplo prático:
* Um INCLUDE pode conter declarações de variáveis globais, definições de estruturas, FORM routines ou mesmo código de processamento.
* Include pode ser usado para armazenar variaveis, constantes, tipos, calculos, condições, telas de seleções, etc...

* Uso típico:
* Separar programas grandes em partes menores (ex: TOP, F01, F02), facilitando manutenção.

* Analogia:
* É como um "copiar e colar automático" de outro arquivo ABAP para dentro do programa.

* Para criar um Include, pode criar pela SE38 com o type = Include ( I INCLUDE program).
* Pode ser criado também dentro do report.
* Pelo parâmetro: INCLUDE + (o nome do programa include); 
* Ex: INCLUDE Z_CURSO_011

