* Programa exemplo de variavel
* Especificação: Programa que declare e armazene campos de um clinete e escreva na tela.
* Obs: Cada campos será uma variavel
*    - As variáveis deverão ser declaradas primneiro e depois populadas com informações abaixo.
*    - No final o relatório devera escrever as informações na tela:
* Ex: Dados do cliente(titulo), ID, Nome, Nascimento, Peso, Descrição e Login.

* Acesso pela SE38
* Programa: ZCURSO_003

* Campo     / Tipo   / Tamanho  / Decimais
* Id_id     / i      / 
* Id_nome   / c      /
* Id_dtnasc / d      /
* Id_hrnasc / t      /
* Id_peso   / p      /  6        /  3
* Id_desc   / string /
* Id_login  / n      /  5

REPORT ZCURSO_003

DATA ld_id     TYPE i.             " número
DATA ld_nome   TYPE c.             " texto
DATA ld_dtnasc TYPE d.             " data
DATA ld_hrnasc TYPE t.             " hora
DATA ld_peso   TYPE p DECIMALS 3.  " número com decimais 
DATA ld_desc   TYPE string.        " texto
DATA ld_login   TYPE n.            " número

* Preenchendo as variáveis
ld_id      = 1.
ld_nome    = 'José da Silva'.
ld_dtnasc  = '19900201'
ld_hrnasc  = '153512' " hora/min/segundo
ld_peso    = `80.000`.
ld_desc    = 'Um cliente que compra em grande volume'.
ld_login   = 1.

* Escrevendo dados na tela
WRITE 'Dados do Cliente'.
NEW-LINE.

WRITE (12) 'Id:'.
WRITE ld_id LEFT-JUSTIFIELD.
NEW-LINE.

WRITE (12) 'Nome:'.
WRITE ld_nome.
NEW-LINE.

WRITE (12) 'Nascimento:'.
WRITE ld_dtnasc DD/MM/YYYY.
WRITE: ld_hrnasc+0(2), ':', ld_hrnasc+2(2), ':', ld_hrnasc+4(2).
NEW-LINE.

WRITE (12) 'Peso:'.
WRITE ld_peso LEFT-JUSTIFIELD.
NEW-LINE.

WRITE (12) 'Descrição:'.
WRITE ld_desc.
NEW-LINE.

WRITE (12) 'Login:'.
WRITE ld_login.
NEW-LINE.
