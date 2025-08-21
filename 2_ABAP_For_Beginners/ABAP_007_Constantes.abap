* Programa que calcula a area de um circulo
* Criar programa SE38
* Program Z_CURSO_004

* E002 - programa que calcule a area de um circulo usando variáveis e constantes. 
*    O resultado deve ter 2 casas decimais.

*    PI = 3.1415926535898
*    Fórmula: Area = (raio * raio) * PI

*    A mensagem de reposta pode ser no exemplo: "A área de um circulo com raio de X é Y."

*    Use os dados abaixo para conferir se o programa está rodando corretamente
*      Raio 10 = Área 314,16
*      Raio 15 = Área 706,86
*      Raio 2 = Área 12,57
    

REPORT Z_CURSO_004

CONSTANTS lc_pi(12) TYPE p DECIMALS 13 VALUE '3.1415926535898'.

DATA ld_raio(12) TYPE p DECIMALS 2.
DATA ld_area(12) TYPE p DECIMALS 2.

ld_raio = 2.
ld_area = ( ld_raio * ld_raio ) * lc_pi.

WRITE: 'A área de um circulo com raio de' ld_raio, ' é ', ld_area.

