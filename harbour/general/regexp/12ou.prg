/*

O escape

*/
REQUEST HB_CODEPAGE_UTF8
PROCEDURE MAIN

    LOCAL cString
    LOCAL aResult
    LOCAL cRegex
    
    HB_CDPSELECT( "UTF8" )

    ? "https://aurelio.net/regex/guia/ou.html"
    
    ? "O escape escapa um metacaractere, tirando seu poder." 
    ? cRegex := "^http://|ftp://" // não aceita https://
    cRegex := HB_RegexComp( cRegex )
    FOR EACH cString IN { "https://www.google.com.br" , "http://www.google.com.br" , "ssh://9.8dd76.765-00" , "ftp://COD7770" }
        ? "String : " , cString
        aResult := hb_Regex( cRegex, cString  ) 
        ? "Resultado : " , hb_ValToExp( aResult )
    NEXT
      
    RETURN
    
/*    
O ou indica alternativas.
Lista para um caractere, ou para vários.
*/
    
  