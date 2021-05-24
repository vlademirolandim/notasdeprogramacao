ANNOUNCE HB_GT_SYS
REQUEST HB_GT_WIN_DEFAULT


PROCEDURE MAIN

    LOCAL GetList := {}
    LOCAL cNome := SPACE(40)
    LOCAL cPessoa := SPACE(1)
    LOCAL cObs := cObs2 := SPACE(40)
    
    
    SET( _SET_CURSOR , 0 )
        
    #ifdef __PLATFORM__WINDOWS
        ? "Setmode : " , SetMode(50,150)
    #endif
    CLS
    
    @ 05,03 SAY "Nome       : " GET cNome VALID ( ALERT( "O CURSOR E " + str(SET( _SET_CURSOR) ) ) , .T. ) 
    @ 07,03 SAY "Pessoa     : " GET cPessoa VALID ( ALERT( "O CURSOR E " + str(SET( _SET_CURSOR) ) ) , .T. ) 
    @ 09,03 SAY "Observacao : " GET cObs VALID TESTCURSOR()
    @ 11,03 say "Outra obs  : " GET cObs2 VALID ( ALERT( "O CURSOR E " + str(SET( _SET_CURSOR) ) ) , .T. ) 
    SET( _SET_CURSOR , 1 )
    ALTD()    
    READ
    SET( _SET_CURSOR , 0 )


RETURN

FUNCTION TESTCURSOR

    ALERT("VOU APAGAR  CURSOR")
    SET( _SET_CURSOR , 0 )

    RETURN .T.
