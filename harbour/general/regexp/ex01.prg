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
    BEGIN SEQUENCE WITH __breakblock()
        aResult := hb_Regex( cRegex, cString )
    RECOVER USING   oError
        ? 
        ? "Erro : " , oError:Description
    ENDSEQUENCE    
    ? hb_ValToExp( aResult )
    ?
    
    RETURN