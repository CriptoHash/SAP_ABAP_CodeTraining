REPORT ZRMMUSER00_EX02

* Declaração de Parametros
PARAMETERs: p_nome TYPE string,
            p_end TYPE char15,
            p_data TYPE D,
            p_data TYPE T.

* Escrevendo na Tela
WRITE:/ 'Nome:', p_nome,
      / 'Endereço:' p_end,
      / 'Data:', p_data,
      / 'Hora:', p_hora ENVIRONMENT TIME FORMAT.

* Ajustando os Titulos escritos acima
*   No editor > Ir para > Elementos de Texto > Textos de Seleção
*   nos campos acima adiconar os nomes referente a cada campos e ativar, veja exemplos abaixo:
*     Nome   /  Texto
*     P_NOME /  Nome
*     P_DATA /  Data
*     P_HORA /  Hora
*     P_END  /  Endereço

* Também podemos adicionar tradução desses novos campos de desenvolvimento.
* Na Tela do Editor > Ir Para > Tradução
* Ou inda na Tela de Textos de Seleção > Ir para > Tradução
*   - Nesta tela de tradução temos os objetos, exemplos:
*   - Select P_NOME /  Nome / Name
*   - Select P_DATA /  Data / Date
*   - Select P_HORA /  Hora  / Hour
*   - Select  P_END  /  Endereço  / Address
*   - Title  /  Paramentros de Tela / Screen Parameters


            
