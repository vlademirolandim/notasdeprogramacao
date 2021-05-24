/*

Busca simples

*/
REQUEST HB_CODEPAGE_UTF8
PROCEDURE MAIN

    LOCAL cString
    LOCAL aResult
    LOCAL cRegex
    
    HB_CDPSELECT( "UTF8" )
    cString := "Quando o sol bater na janela do teu quarto. O SOL nasceu para todos!!"
    
    ? "Correspondência perfeita"
    ? "String ; " , cString
    cRegex := "SOL" 
    cRegex := HB_RegexComp( cRegex )
    IF hb_isRegex( cRegEx ) // <------ Verifico a expressao
        aResult := hb_Regex( cRegex, cString )
        ? hb_ValToExp( aResult )
        ?
    ELSE
        ? "Assim num vale :-)"
    ENDIF    
    
    RETURN