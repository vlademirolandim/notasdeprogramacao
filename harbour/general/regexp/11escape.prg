/*

O escape

*/
REQUEST HB_CODEPAGE_UTF8
PROCEDURE MAIN

    LOCAL cString
    LOCAL aResult
    LOCAL cRegex
    
    HB_CDPSELECT( "UTF8" )

    ? "https://aurelio.net/regex/guia/escape.html"
    
    ? "O escape escapa um metacaractere, tirando seu poder." 
    ? cRegex := "[0-9]\.[0-9]{3}\.[0-9]{3}-[0-9]" // Casar um RG no formato  n.nnn.nnn-n (O ponto não será meta-caractere por causa da \
    cRegex := HB_RegexComp( cRegex )
    FOR EACH cString IN { "9.876.765-00" , "9.876.765-040" , "9.8dd76.765-00" , "COD7770" }
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
    
  