
/*

Pegando o conteúdo entre as tags

*/
REQUEST HB_VALTOSTR
REQUEST HB_CODEPAGE_UTF8
PROCEDURE MAIN( cFile )

    if emPTY( CFILE )
        ? "INFORME O NOME DO ARQUIVO"
        return
    ELSE
        IF FILE( CFILE )
        ELSE
            ? "O ARQUIVO NOA EXISTE"
            return
        ENDIF
    ENDIF    

    HB_CDPSELECT( "UTF8" )
    hb_MemoWrit( "out.html" , VLJ_ParseHTML( Hb_Memoread( cFile ) ) )
    
    RETURN

FUNCTION VLJ_ValToSTR( ... )

    LOCAL xElem
    LOCAL cRet := ""
    
    FOR EACH xElem IN hb_aParams( ... )

        cRet += hb_ValToStr( xElem )
        cRet += " "
        
    NEXT    

RETURN cRet

FUNCTION VLJ_ParseHTML( cHtml )

    LOCAL cString
    LOCAL aResult
    LOCAL cRegex
    LOCAL xBuf, cBuf

    cBuf := "#translate ??? <explist,...> => cVar += VLJ_ValToSTR( <explist> )" + hb_eol()    
    cBuf += "FUNCTION __VLJ_Buff;LOCAL cVar := ''" + hb_eol()
    

    cRegex := HB_RegexComp( "<prg>(.*?)</prg>" )
    FOR EACH cString IN hb_ATokens( cHtml , .t. )
        
        aResult := hb_Regex( cRegex, cString  ) 
        IF LEN( aResult ) > 0
            ? hb_valtoexp( aResult )
            aResult[1] := hb_Utf8StrTran( aResult[1],'"','\"')
            
            aResult[2] := hb_Utf8StrTran( aResult[2] , "? " , "??? " )
            cString := hb_Utf8StrTran(cString,'"','\"')
            cString := hb_Utf8StrTran( cString , aResult[1] , '";' + aResult[2] + ';cVar += e"' )
            cString := hb_Utf8StrTran( cString , "</prg>" , ';cVar += e"' )
        ELSE
            cString := hb_Utf8StrTran(cString,'"','\"')
        ENDIF    
        cBuf += 'cVar += e"' + cString  + '"' + hb_eol()

    NEXT
    cBuf += "RETURN cVar"
    hb_Memowrit( "out.prg" , cBuf )
    buf := hb_compileFromBuf( cBuf , "harbour" , "/n" , "/m" )

    RETURN hb_hrbRun( buf )
    
    
  