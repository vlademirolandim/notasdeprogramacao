
PROCEDURE MAIN

	LOCAL pHRB
	LOCAL cBuff
	LOCAL cCode := "FUNCTION HelloWorld();LOCAL x,h := {=>};h := hb_HGetDef(h,'oi','ok');FOR x := 1 TO 10;Qout(x);NEXT;FOR EACH x IN h;Qout(x,x);Qout(x,x);NEXT;RETURN 'Hello'"
	
	
	/*
	Em condições normais o código contido em cCode não tem erros,
	mas como as funções de Hash (HB_HGetDef) não foram adicionadas dá um erro
    
    
	
	A solução provisória é incluir a função (PROCEDURE NADA) só para ela estar presente
	durante a linkedição do programa. 	Retire essa procedure e vai dar um erro!!
    
    Uma outra solução é colocar REQUEST HB_HGETDEF no início do arquivo
    
    Caso você necessite incluir muitas funções é melhor usar :
    
         #include "hbextern.ch" // Vai incluir todas as funções
	

	*/
	MemoWrit("hello.prg",cCode)
	cBuff := hb_compilebuf( "harbour", "hello.prg" , "-n" , "-w1" , "-es2" )  // Compile
    pHRB := hb_hrbLoad( cBuff )
    IF ! Empty( pHRB )
        IF TYPE( "HelloWorld()") == "UI"
        	? &("HelloWorld()")
        ENDIF
    ENDIF    	

	RETURN
	
PROCEDURE Nada

	HB_HGETDEF()
	
	RETURN	