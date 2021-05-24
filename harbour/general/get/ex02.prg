
REQUEST HB_CODEPAGE_PTISO

PROCEDURE MAIN

    LOCAL GetList := {}
    LOCAL cNome := SPACE(40)
    LOCAL cPessoa := SPACE(1)
    LOCAL cObs := SPACE(40)
    
    hb_CdpSelect( "PTISO" )
    
    CLS
    #ifdef __PLATFORM__WINDOWS
        ? "Setmode : " , SetMode(50,150)
    #endif
    
    @ 05,03 SAY "Nome       : " GET cNome
    @ 07,03 SAY "Pessoa     : " GET cPessoa VALID cPessoa $ "FJ" MESSAGE "Informe o tipo de pessoa (F/J)" 
    @ 09,03 SAY "Observação : " GET cObs
    READ MSG AT 20,00,79 MSG COLOR "W+/BG"


RETURN