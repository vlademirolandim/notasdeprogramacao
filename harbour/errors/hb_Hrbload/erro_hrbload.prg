
PROCEDURE MAIN

	LOCAL pHRB
	LOCAL cBuff
	LOCAL cCode := "FUNCTION HelloWorld();LOCAL x,h := {=>};h := hb_HGetDef(h,'oi','ok');FOR x := 1 TO 10;Qout(x);NEXT;FOR EACH x IN h;Qout(x,x);Qout(x,x);NEXT;RETURN 'Hello'"
	
	
	/*
	Em condi��es normais o c�digo contido em cCode n�o tem erros,
	mas como as fun��es de Hash (HB_HGetDef) n�o foram adicionadas d� um erro
    
    
	
	A solu��o provis�ria � incluir a fun��o (PROCEDURE NADA) s� para ela estar presente
	durante a linkedi��o do programa. 	Retire essa procedure e vai dar um erro!!
    
    Uma outra solu��o � colocar REQUEST HB_HGETDEF no in�cio do arquivo
    
    Caso voc� necessite incluir muitas fun��es � melhor usar :
    
         #include "hbextern.ch" // Vai incluir todas as fun��es
	

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