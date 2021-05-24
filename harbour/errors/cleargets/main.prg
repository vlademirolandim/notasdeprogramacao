
#include "inkey.ch"
REQUEST HB_CODEPAGE_PTISO

STATIC nVal

PROCEDURE MAIN

    LOCAL GetList := {}
    LOCAL cCPF := SPACE(11)
    
    HB_CDPSELECT( "PTISO" )
   
    nVal := 0
    
    SetMode( 50, 150 )
    CLEAR // CLS
    @ 10,10 SAY "Informe o valor (Calculadora)" GET nVal WHEN VVALIDA()
    @ 12,10 SAY "Informe o CPF do devedor    :" GET cCPF 
    READ

    RETURN
    
FUNCTION VVALIDA()    

    nVal := Calcula()

    RETURN .T.

FUNCTION CALCULA()

    LOCAL nParcela1 := 0, nParcela2 := 0
    LOCAL nTotal
    LOCAL cTela
    LOCAL GetList := {}
    
    SAVE SCREEN TO cTela
    
    CLEAR //CLS
    @ 03,03 TO 09,65
    @ 05,05 SAY "Informe a parcela 1 : " GET nParcela1
    @ 07,05 SAY "Informe a parcela 2 : " GET nParcela2
    READ
    nTotal := nParcela1 + nParcela2
    
    RESTORE SCREEN FROM cTela

    RETURN nTotal