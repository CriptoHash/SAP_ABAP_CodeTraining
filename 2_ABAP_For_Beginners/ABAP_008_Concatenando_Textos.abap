* Exemplo de criação de programa que concatena informações
* SE38 (inserir informações nome do programa, legenda, pacote e request)

REPORT ZCURSO_005.

DATA ld_nome(100)           TYPE c.
DATA ld_sobrenome(100)      TYPE c.
DATA ld_nomecompleto(201)   TYPE c.

ld_nome = 'Lula'
ld_sobrenome = 'Ladrão'

* CONCATENATE ld_nome ld_sobrenome
*        INTO ld_nomecompleto.

* A concatenação pode ser realizada tanto como no modelo acima como no modelo abaixo.

ld_nomecompleto = | { ld_nome } { ld_sobrenome }!|.

WRITE 'Convite para festa'.
NEW-LINE.
SKIP.

WRITE: 'Olá ', ld_nomecompleto '!'
NEW-LINE.
SKIP.

WRITE 'Você foi convidado para a festa de fim de ano, contamos com a sua presença!'
NEW-LINE.
SKIP.

WRITE 'Atenciosamente,'
SKIP.

WRITE 'Empresa XYZ,'
SKIP.



* Descrições:
* Crie um programa para receber nome e sobrenome do convidado.
* Ao executar, voce vai concatenar o nome e sobrenome e armazenar em uma variável com nome completo.
* Depois imprima o convite conforme o template abaixo
* ----------------------------------------------------
* Convite para festa
* Olá Cicrano!
* Você foi convidado para a festa de fim de ano, contamos com a sua presença!
* Atenciosamente,
* Empresa XYZ
