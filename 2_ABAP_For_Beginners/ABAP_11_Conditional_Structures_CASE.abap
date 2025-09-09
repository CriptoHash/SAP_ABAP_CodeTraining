* PROGRAMA QUE INFORMA O TIPO DE VEICULO QUE VOCE PODE DIRIGIR POR TIPO DE CATEGORIA

REPORT Z_CURSO_0011

SELECTION-SCREEN BEGIN OF BLOCK bl.
  PARAMETER p_cat(1) TYPE c.
SELECTION-SCREEN END OF BLOCK bl.

START-OF-SELECTION.
  DATA ld_descricao TYPE string.

CASE p_cat.
  WHEN 'A'.
    ld_descricao = 'Moto'.
  WHEN 'B'.
      ld_descricao = 'Carro'.
  WHEN 'C'.
      ld_descricao = 'Veiculo de Carga'.
  WHEN 'D'.
      ld_descricao = 'Transporte de Passageiros'.
  WHEN 'E'.
      ld_descricao = 'Caminhoes'.
ENDCASE.

WRITE ld_descricao.

* PROGRAMA PRECISA RECEBER SUA CATEGORIA DA CNH.
* O programa retorna qual categoria essa categoria pode dirigir.
* Lista de categorias
* A = Moto
* B = Carro
* C = Veiculo de Carga
* D = Transporte de Passageiros
* E = Caminhoes


