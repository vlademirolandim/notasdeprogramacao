
/*

Pegando o conteúdo entre as tags

*/
REQUEST HB_CODEPAGE_UTF8
PROCEDURE MAIN

    LOCAL cString
    LOCAL aResult
    LOCAL cRegex
    
    SET DEVICE TO PRINT
    SET PRINTER TO out.prg
    SetPrc(0,0)
    @ PROW()+1,0 SAY "PROCEDURE MAIN;LOCAL cVar := ''"
    
    HB_CDPSELECT( "UTF8" )
    cRegex := HB_RegexComp( "<prg>(.*?)</prg>" )
    FOR EACH cString IN hb_ATokens( Hb_Memoread( "innertags.html" ) , .t. )
        @ PROW()+1,0 SAY 'cVar += e"' + hb_Utf8StrTran(cString,'"','\"') + '"'
        aResult := hb_Regex( cRegex, cString  ) 
        ? "Resultado : " , hb_ValToExp( aResult )
    NEXT
    @ PROW()+1,0 SAY "? cVar"
    
    SET DEVICE TO SCREEN
    SET PRINTER TO
    
 
    RETURN
    
    
  