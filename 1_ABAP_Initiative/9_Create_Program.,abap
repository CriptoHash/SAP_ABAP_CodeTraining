*ZTMMUSER00_EX05

* Criando um programa que vai inserior dados em uma Tabela
* Programa ZRMMUSER00_EX05 

*No SAP acessar a Tx: SE38
*	-> Inserir o codigo do programa
*	-> Tipo(Ex): Castro de Funcionarios	
*	-> Tipo: 1 Programa executavel
*	-> Verifs.unicode ativas: Flag ativo
*	-> Aritmética em ponto fixo: Flag ativo 
	
*		-> GRAVAR REQUEST E CRIAR PACOTE 

		
REPORT	ZRMMUSER00_EX05

TABLES: ZTMMUSER00_EX04

SELECTION-SCREEN BEGIN OF BLOCK bloco01 WITH FRAME.
	PARAMETERs: p_matri LIKE ZTMMUSER00_EX04-MATRICULA OBLIGATORY,
				p_nome TYPE ZMATRICULA00,
				p_data LIKE ZTMMUSER00_EX04-DataNascimento OBLIGATORY,
				p_rg TYPE ZRG00 OBLIGATORY,
				p_cpf LIKE ZTMMUSER00_EX04-CPF OBLIGATORY,
				p_sexo TYPE ZSEXO00 OBLIGATORY.
SELECTION-SCREEN END OF BLOCK bloco01

* Criando Tabela Interna
* Obs: "OCURS 0"  especifica quantas linhas a tabela pode ter.
DATA: BEGIN OF TI_ZTMMUSER_EX04 OCURS 0,
		MATRICULA		LIKE ZTMMUSER00_EX04-MATRICULA,
		Nome			LIKE ZTMMUSER00_EX04-Nome,
		DataNascimento	LIKE ZTMMUSER00_EX04-DataNascimento,
		RG				LIKE ZTMMUSER00_EX04-RG,
		CPF				LIKE ZTMMUSER00_EX04-CPF,
		SEXO			LIKE ZTMMUSER00_EX04-SEXO,
	END OF TI_ZTMMUSER_EX04.
	
	TI_ZTMMUSER_EX04-MATRICULA 		= p_matri.
	TI_ZTMMUSER_EX04-Nome 			= p_nome.
	TI_ZTMMUSER_EX04-DataNascimento = p_data.
	TI_ZTMMUSER_EX04-RG 			= p_rg.
	TI_ZTMMUSER_EX04-CPF 			= p_cpf.
	TI_ZTMMUSER_EX04-SEXO 			= p_sexo.

APPEND TI_ZTMMUSER_EX04.

MOVE:	TI_ZTMMUSER_EX04-MATRICULA 		TO ZTMMUSER00_EX04-MATRICULA,
		TI_ZTMMUSER_EX04-Nome 			TO ZTMMUSER00_EX04-Nome,
		TI_ZTMMUSER_EX04-DataNascimento TO ZTMMUSER00_EX04-DataNascimento,
		TI_ZTMMUSER_EX04-RG 			TO ZTMMUSER00_EX04-RG,
		TI_ZTMMUSER_EX04-CPF 			TO ZTMMUSER00_EX04-CPF,
		TI_ZTMMUSER_EX04-SEXO 			TO ZTMMUSER00_EX04-SEXO.
		
INSERT ZTMMUSER00_EX04

IF sy-subrc IS INITIAL.
	COMMIT WORK.
	WRITE 'Gravação realizada na tabela com sucesso!'
ENDIF.


* Ajustando os Titulos dos campos da Tabela(exemplo em 5_Report_Ex02).
* Aradução desses novos campos de desenvolvimento(exemplo em 5_Report_Ex02).


		
