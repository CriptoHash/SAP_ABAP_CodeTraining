* Programa ZRMMUSERXX_EX07

* Exercicio Variaves de Sistemas
* No SAP acessar a tx SE11
* Banco de dados = SYST
* 	-> para ver as estruturas da tabela usar "SYST-" + o componente (ex: "TABIX"); ficaria: SYST-TABIX
* Acessar a SE38 e criar o programa ZRMMUSER00_EX07

REPORT ZRMMUSER00_EX07

WRITE: 	/'SY-ABCDE', SY-ABCDE,
		/'SY-UNAME', SY-UNAME,
		/'SY-DATUM', SY-DATUM,
		/'SY-LANGU', SY-LANGU,
		/'SY-TCODE', SY-TCODE,
		/'SY-SAPPLR', SY-SAPPLR,
		/'SY-SYSID', SY-SYSID,
		/'SY-OPSYS', SY-OPSYS,
		/'SY-MANDT', SY-MANDT,
		/'SY-UZEIT', SY-UZEIT.
		
* Após finalizado, acionar "F8" ou "Direto/Executar"
