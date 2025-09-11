REPORT ZTESTE

* Para criar uma classe de mensagem acessamos a transação SE91

* Tipos de mensagens
*------------------------------
* Mensagem Simples
* Mensagem com 1 parâmetro
* Mensagem com 2 parâmetros
* Mensagem com documentação
* Definir classe de mensagem no report

* Vantagens
* Lista de utilizações
* Facilidades no debug
* Compartilhamento de mensagens entre programas

START-OF-SELECTION.
  MESSAGE s000(zcurso).
* MESSAGE s001(zcurso). WITH '123'.
* MESSAGE s002(zcurso). WITH 'Curso' 'ABAP'.


* Mensagem Simples
* -----------
* Para exibir uma mensagem temos 3 comandos necessários.
* MESSAGE: Chama a função exibir mensagem.
* S (ex: s000) indica que é uma mensagem de sucesso, mas pode ser W(aviso), ou qualquer outro.
* 000 indica a posição da mensagem cadastrada na classe.
* zcurso é a classe de mensagens


* Mensagem com 1/2 parâmetros
* -----------
* Para exibir uma mensagem com 1 parâmetro precisamos adicionar o texto na classe e '&' na onde queremos que o parametro entre.
* No programa, passamos o parametro e ele subistitui o '&'  na mensagem
* Ex: Na classe ZCURSO, na linha 002 vamos adicionar o texto: O cliente & foi cadastrado com sucesso!
* Ex: passamos o parametro: MESSAGE s001(zcurso). WITH 'Paulo Lunardi'.
* A mensagem de retorno ficaria assim: O cliente Paulo Lunardi foi cadastrado com sucesso!
* A mesma logica serve para 2 parametros: Ex: (MESSAGE s002(zcurso). WITH 'Curso' 'ABAP'.)


* Mensagem com documentação
* -----------
* Ex: Podemos ter um erro ao cadastrar o cliente, e uma mensagem explanatória.
* Seleciona a Linha da mensagem: ex: 003
* Para isso -> Desflegar Self-Explanatory -> Clicar em Long Text
* Vai aparecer uma tela solicitando mais informações, e voce informa o que pode ser realizado para correção:
*    Cause:  Erro no cadastro do cliente.
*    System_response: O sistema não conseguiu cadastrar o cliente por falta de parametros.
*    What_To_Do: Informe todos os parâmetros obrigatórios para cadastrar o cliente.
*    Sys_Admin: Não há.
* AO preencher salvar e sair e executar o report novamente, e clicar na mensagem para ver as informações cadastradas acima.


* Definir classe de mensagem no report
* -----------
* No cabeçalho do report voce pode adicionar uma instrução.
* Com isso não precisa passar o parâmetro da classe no corpo do programa
* Ex: REPORT ZTESTE MESSAGE-ID zcurso
* Assim o comando fica como no modelo abaixo sem precisar especificar a classe em varias linha de código: 
* MESSAGE s003.


* Verificar em quais reports estão utilizando aquela mensagem
* -----------
* Selecionar a mensagem e clicar em Lista de Utilizações (Where-Used List) (um quadrado com 3 setas)
