/*
Esse exemplo serve para mostrar
que se você mandar uma expressao errada
vai ocasionar um erro de execucao
*/
PROCEDURE MAIN

    LOCAL cString := "Quando o sol bater na janela do teu quarto."
    LOCAL aResult
    LOCAL cRegex
    
    LOCAL oError
    
    cRegex := "(+sol)" // <--------- Expressao errada
    cRegex := Hb_RegexComp( cRegex )
    IF hb_isRegex( cRegEx ) // <------ Verifico a expressao
        aResult := hb_Regex( cRegex, cString )
        ? hb_ValToExp( aResult )
        ?
    ELSE
        ? "Assim num vale :-)"
    ENDIF        
    
    RETURN