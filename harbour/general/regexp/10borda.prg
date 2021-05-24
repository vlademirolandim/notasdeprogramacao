/*

O fim

*/
REQUEST HB_CODEPAGE_UTF8
PROCEDURE MAIN

    LOCAL cString
    LOCAL aResult
    LOCAL cRegex
    
    HB_CDPSELECT( "UTF8" )

    ? "https://aurelio.net/regex/guia/borda.html"
    
    ? "Ela marca os limites de uma palavra, ou seja, onde ela começa e/ou termina." 
    ? "Muito útil para casar palavras exatas, e não partes de palavras."
    ? cRegex := "\bdia\b" // Tag #
    cRegex := HB_RegexComp( cRegex )
    FOR EACH cString IN { "Ini   dia fragma  Fim" , "70 bom-dia pessoal" , "77  diafragma 77770" , "COD7770" }
        ? "String : " , cString
        aResult := hb_Regex( cRegex, cString  ) 
        ? "Resultado : " , hb_ValToExp( aResult )
    NEXT
      
    RETURN
    
/*    
Assim vimos que a borda força um começo ou terminação de palavra. 
Entenda que "palavra" aqui é um conceito que engloba [A-Za-z0-9_] apenas, ou seja, 
letras, números e o sublinhado. 
Por isso \bdia\b também casa bom-dia! pois o traço e a exclamação 
não são parte de uma palavra.*/
    
  