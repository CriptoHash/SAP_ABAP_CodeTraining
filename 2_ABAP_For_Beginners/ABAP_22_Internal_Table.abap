Em ABAP, uma tabela interna é um objeto de dados usado para armazenar conjuntos de registros em memória, de forma temporária, durante a execução de um programa. 
  Ela é muito utilizada para processar e manipular grandes volumes de dados vindos do banco de dados SAP (tabelas transparentes, por exemplo) ou de outras estruturas.
  Dá para pensar nela como uma “tabela na RAM”, semelhante a um array de estruturas em outras linguagens, mas com recursos específicos para ABAP.

Características principais:

    Estrutura: é baseada em um work area ou estrutura de linha, ou seja, cada linha da tabela interna tem o mesmo formato (mesmos campos e tipos).
    Dinâmica: o número de linhas pode crescer ou diminuir durante a execução do programa (não é fixo como em arrays comuns).
    Temporária: existe apenas enquanto o programa estiver em execução; não armazena dados permanentemente no banco.
    Operações rápidas: permitem inserir, ler, modificar, ordenar e apagar registros em memória sem acessar o banco de dados repetidamente.

Tipos de tabelas internas:

    Standard Table
      Estrutura simples, semelhante a uma lista.

    Acessada por índice.
      Boa para percorrer dados sequencialmente.

    Sorted Table
      Sempre mantida em ordem de acordo com uma chave definida.
      Pesquisa binária é usada (mais eficiente do que standard para buscas).

    Hashed Table
      Usa uma tabela de dispersão (hash table).
      Ideal para acessos diretos com chave, como um dicionário/mapa.
      Não pode ser percorrida por índice (somente por chave).
