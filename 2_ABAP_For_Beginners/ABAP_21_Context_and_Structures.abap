* Estruturas são variaveis onde podem-se armazenar informações dentro
* Podendo armazenar multiplas variaveis
* Exemplo de Report que armazena dados de um cliente

REPORT ZCURSO_0021.

START-OF-SELECTION.
  DATA: BEGIN OF ls_cliente
      , id        TYPE int4
      , nome(20)  TYPE c
      , email(50) TYPE c
      , END OF ls_cliente.

* Forma normal de declarar variaveis
  DATA ld_id    TYPE int4.
  DATA ld_nome(20)  TYPE c.
  DATA ld_email(50) TYPE c.

ls_cliente-id = 1.
ls_cliente-nome = 'João'.
ls_cliente-email = 'joao@gmail.com'.

ld_id      = 1.
ld_nome    = 'João'.
ld_email   = 'joao@gmail.com'.

WRITE ls_cliente-id.
WRITE ls_cliente-nome.
WRITE ls_cliente-email.

NEW-LINE.

WRITE ld_id.
WRITE ld_nome.
WRITE ld_email.

* Metodo de passar dados de uma unica vez para a estrutura
* Exemplo que  rebece multiplos campos

* START-OF-SELECTION.
*  DATA: BEGIN OF ls_localizacao
*      , pais(2)     TYPE c
*      , uf(2)       TYPE c
*      , cidade(20)  TYPE c
*      , END OF ls_cliente.

* ls_localizacao = 'BRPRLondrina'.

* WRITE ls_localizacao-pais.
* WRITE ls_localizacao-uf.
* WRITE ls_localizacao-cidade.

* Como cada campo tem uma quantidade de caracteres pode-se passar todos os valores juntos, sobre precisa respeitar a quantidade de campos identados, mas como nosso caso o ultimo tem 20 caracteres não interfere.

