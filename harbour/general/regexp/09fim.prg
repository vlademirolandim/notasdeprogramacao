﻿/*

O fim

*/
REQUEST HB_CODEPAGE_UTF8
PROCEDURE MAIN

    LOCAL cString
    LOCAL aResult
    LOCAL cRegex
    
    HB_CDPSELECT( "UTF8" )

    ? "https://aurelio.net/regex/guia/cifrao.html"
    
    ? " As chaves são a solução para uma quantificação mais controlada,"
    ? " onde se pode especificar exatamente quantas repetições se quer da entidade anterior."
    ? cRegex := "[x]$" // Termina com x
    cRegex := HB_RegexComp( cRegex )
    FOR EACH cString IN { "0x" , "70" , "7777770" , "COD7770" }
        ? "String : " , cString
        aResult := hb_Regex( cRegex, cString  ) 
        ? "Resultado : " , hb_ValToExp( aResult )
    NEXT
      
    RETURN
    
/*    
Chaves são precisas.
Você pode especificar um número exato, um mínimo, um máximo, ou uma faixa numérica.
*/
    
  