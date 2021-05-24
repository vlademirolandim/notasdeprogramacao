/*

Mais

*/
REQUEST HB_CODEPAGE_UTF8
PROCEDURE MAIN

    LOCAL cString
    LOCAL aResult
    LOCAL cRegex
    
    HB_CDPSELECT( "UTF8" )

    ? "https://aurelio.net/regex/guia/mais.html"
    
    ? "O mais tem funcionamento idêntico ao do asterisco, tudo o que vale para um, se aplica ao outro."
    ? "A única diferença é que o mais não é opcional, então a entidade anterior deve casar pelo menos uma vez,"
    ? " e pode ter várias."
    ? cRegex := "7+0" 
    cRegex := HB_RegexComp( cRegex )
    FOR EACH cString IN { "0" , "70" , "7777770" , "COD7770" }
        ? "String : " , cString
        aResult := hb_Regex( cRegex, cString  ) 
        ? "Resultado : " , hb_ValToExp( aResult )
    NEXT
      
    RETURN
    
/*    
O mais repete em qualquer quantidade, pelo menos uma vez.
O mais é igual ao asterisco, só mais exigente.
*/
    
  