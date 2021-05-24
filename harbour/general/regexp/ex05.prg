/*

Busca case insensitive

*/
REQUEST HB_CODEPAGE_UTF8
PROCEDURE MAIN

    LOCAL cString
    LOCAL aResult
    LOCAL cRegex
    
    HB_CDPSELECT( "UTF8" )

    ? "https://aurelio.net/regex/guia/utilidade.html"
    
    ? "Rato, pato ou gato"
    ? "Rato"
    ? cString := "O rato roeu a roupa do rei de roma"
    ? "String ; " , cString
    
    cRegex := "[RrPpGg]ato" 
    cRegex := HB_RegexComp( cRegex )
    IF hb_isRegex( cRegEx ) // <------ Verifico a expressao
        aResult := hb_Regex( cRegex, cString  ) 
        ? hb_ValToExp( aResult )
        ?
    ELSE
        ? "Assim num vale :-)"
    ENDIF    

    //-----------------------------------
    ? "Rato, pato ou gato"
    ? "pato"
    ? cString := "O pato bicou a roupa do rei de roma"
    ? "String ; " , cString
    
    ? cRegex := "[RrPpGg]ato" 
    cRegex := HB_RegexComp( cRegex )
    IF hb_isRegex( cRegEx ) // <------ Verifico a expressao
        aResult := hb_Regex( cRegex, cString  ) 
        ? hb_ValToExp( aResult )
        ?
    ELSE
        ? "Assim num vale :-)"
    ENDIF    

    //-------------------------------------
    ? "Rato, pato ou gato"
    ? "gato"
    ? cString := "O gato arranhou a roupa do rei de roma"
    ? "String ; " , cString
    
    ? cRegex := "[RrPpGg]ato" 
    cRegex := HB_RegexComp( cRegex )
    IF hb_isRegex( cRegEx ) // <------ Verifico a expressao
        aResult := hb_Regex( cRegex, cString  ) 
        ? hb_ValToExp( aResult )
        ?
    ELSE
        ? "Assim num vale :-)"
    ENDIF    

    
    RETURN