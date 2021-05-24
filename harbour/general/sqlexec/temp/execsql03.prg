#command MODULE EXEC SQL => LOCAL __VLJ_OSQL__ 
#command SQL EXEC CONNECT BY <cStringADO> PARAMETERS <f1>  [, <fN> ] CODE => __VLJ_OSQL__ := VExecSQL():New(  <cStringADO> , <f1>  [, <fN> ] );#pragma __text|__VLJ_OSQL__:AddCode(%s)
#xcommand END EXEC SQL [MESSAGE TO <cMessage>][ TO <lRet>] => [<lRet>:=] __VLJ_OSQL__:exec([@<cMessage>]);
//#xcommand END EXEC SQL => #pragma __endtext;__VLJ_OSQL__:exec()


REQUEST HB_CODEPAGE_PTISO
/***/

PROCEDURE MAIN

   LOCAL cDatabase := "sistemas33.mdb"
   LOCAL cStringADOSQL := "DBQ="+ hb_FNameMerge( hb_DirBase(), cDataBase ) + ";Driver={Microsoft Access Driver (*.mdb)}"
   LOCAL cMessage
   LOCAL cSQL
   MODULE EXEC SQL

   hb_cdpSelect( "PTISO" )
   
 
    SQL EXEC CONNECT BY cStringADOSQL PARAMETERS hb_RandomInt( 1000, 2000 ) , 'USUÁRIO 12' CODE
    
        INSERT INTO EMP ( EMPNO, ENAME ) VALUES ( %s , '%s' )
    #pragma __endtext //  <=======   
    END EXEC SQL MESSAGE TO cMessage TO lRet
    
    IF lRet 
        ? "Sucesso"
    ELSE
        ? "Erro"
        ? cMessage
    ENDIF    
    
    
    
    RETURN
/*********************/

#include "hbclass.ch"
CREATE CLASS VExecSQL

    HIDDEN:
    DATA aParam INIT {}
    DATA aCode INIT {}
    DATA cString INIT ""
    EXPORT:
    METHOD NEW( ... ) CONSTRUCTOR
    METHOD AddCode( cCode ) 
    METHOD GetCode()
    METHOD GetParameters() 
    METHOD Exec()

ENDCLASS

METHOD New( ... ) CLASS VExecSQL

    LOCAL x AS NUMERIC


    ::cString := hb_PValue( 1 )
    FOR x := 2 TO PCount()
        AADD( ::aParam , TRANSFORM( hb_PValue( x ) , "@x" ) )
    NEXT     

    RETURN Self

METHOD GetParameters() CLASS VExecSQL

    RETURN ::aParam

METHOD AddCode( cCode ) CLASS VExecSQL

    AADD( ::aCode , cCode )

    RETURN NIL
    
METHOD GetCode() CLASS VExecSQL

    LOCAL cCode AS CHARACTER := ""
    LOCAL x AS NUMERIC
    
    FOR x := 1 TO LEN( ::aCode )
        cCode += ::aCode[x]
    NEXT    

    RETURN cCode 


METHOD Exec() CLASS VExecSQL

    LOCAL lRet AS LOGICAL := .t.
    LOCAL oCn AS OBJECT
    LOCAL oError AS OBJECT
    LOCAL x AS NUMERIC // Contador auxiliar para percorrer o array

    oCn := win_oleCreateObject( "ADODB.Connection" )
    oCn:ConnectionString := ::cString
    oCn:Open()

    cSql := hb_StrFormat( ::getCode() , hb_ArrayToParams( ::aParam ) )  

    ? "Execute : " , cSQL // Debug
    BEGIN SEQUENCE WITH __breakblock()
       oCn:Execute( cSql )
    RECOVER USING oError
        ? oError:Description
        lRet := .f.
    ENDSEQUENCE    
    oCn:Close()

    RETURN lRet

/***/
    
