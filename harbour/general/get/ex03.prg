
REQUEST HB_CODEPAGE_PTISO
#include "inkey.ch"

PROCEDURE MAIN

    LOCAL GetList := {}
    LOCAL cNome := SPACE(40)
    LOCAL cCodigo := SPACE(3)
    LOCAL cObs := SPACE(40)
    
    hb_CdpSelect( "PTISO" )
    
    CLS
    #ifdef __PLATFORM__WINDOWS
        ? "Setmode : " , SetMode(50,150)
    #endif
    
    @ 05,03 SAY "Nome       : " GET cNome
    @ 07,03 SAY "Código     : " GET cCodigo VALID JanelaBusca() MESSAGE "Pressione F3 para busca"
    @ 09,03 SAY "Observação : " GET cObs
    
    SET KEY K_F3 TO PESQUISA
    READ MSG AT 20,00,79 MSG COLOR "W+/BG"
    SET KEY K_F3 TO


RETURN

PROCEDURE PESQUISA

    KEYBOARD CHR(K_ENTER)
    
    RETURN
    
FUNCTION JanelaBusca()

    IF READVAR() == "CCODIGO"
        ALERT("ATIVANDO BUSCA")
    ENDIF    

    RETURN .t.