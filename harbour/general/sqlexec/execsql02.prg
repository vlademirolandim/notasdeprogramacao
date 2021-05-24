#command EXEC CONNECT BY <cStringADO> SQL <cSQL> PARAMETERS <f1>  [, <fN> ]  [ MESSAGE TO <cMessage> ] [ TO <lRet> ] => ;
                                [<lRet> := ] VLJ_ExecSQL( <cStringADO> , <cSQL> , [ @<cMessage> ] ,  <f1> [, <fN> ] )

REQUEST HB_CODEPAGE_PTISO

PROCEDURE MAIN

   LOCAL cDatabase := "sistemas33.mdb"
   LOCAL cStringADOSQL := "DBQ="+ hb_FNameMerge( hb_DirBase(), cDataBase ) + ";Driver={Microsoft Access Driver (*.mdb)}"
   LOCAL cMessage
   LOCAL cSQL
   LOCAL nRand

   hb_cdpSelect( "PTISO" )
   
 
    cSQL := "INSERT INTO emp ( empno, ename ) VALUES ( %s , '%s' )"
    nRand := HB_RANDOMINT(1000,9999)
    EXEC CONNECT BY cStringADOSQL SQL cSQL PARAMETERS nRand , 'Exemplo 02 - 1' MESSAGE TO cMessage TO lRet
    ? IIF( .NOT. lRet , cMessage , "" )
    EXEC CONNECT BY cStringADOSQL SQL cSQL PARAMETERS nRand+1 , 'Exemplo 02 - 2' MESSAGE TO cMessage TO lRet
    ? IIF( .NOT. lRet , cMessage , "" )
    EXEC CONNECT BY cStringADOSQL SQL cSQL PARAMETERS nRand+2 , 'Exemplo 02 - 3' MESSAGE TO cMessage TO lRet
    ? IIF( .NOT. lRet , cMessage , "" )
    EXEC CONNECT BY cStringADOSQL SQL cSQL PARAMETERS nRand+3 , 'Exemplo 02 - 4' MESSAGE TO cMessage TO lRet
    ? IIF( .NOT. lRet , cMessage , "" )


    RETURN
    
/****f* VData/VLJ_ExecSQL
* NAME
*
*   VLJ_ExecSQL
*
* DESCRIPTION
*
*    Recebe uma query, coloca os parâmetros, executa
*    e retorna .t. / .f.
*
*
* SYNOPSIS
*
*   (1) Recebe os parâmetros (Query, parâmetros, etc)
*   (2) Transforma os parâmetros variáveis em texto
*   (3) Executa o comando 
*   (4) Pega o retorno do banco (.t. ou .f.) e retorna
*
* INPUTS
*   <cSQL> - String contendo o comando SQL
*   [<cMessage>] - Mensagem de retorno do banco (passada por referência)
*   [<...>] - Valores para compor a query
*
* OUTPUT
*   <lRet> - Retorno do banco de dados (.t./.f.)
*
* NOTES
*
* SOURCE
*/
FUNCTION VLJ_ExecSQL( cString, cSQL , cMessage , ... )

   LOCAL lRet AS LOGICAL := .t.
   LOCAL oCn AS OBJECT
   LOCAL oError AS OBJECT
   LOCAL aParam AS ARRAY := {} // Array que receberá os parâmetros convertidos em string
   LOCAL x AS NUMERIC // Contador auxiliar para percorrer o array
   
   oCn := win_oleCreateObject( "ADODB.Connection" )
   oCn:ConnectionString := cString
   oCn:Open()
  
    FOR x := 4 TO PCount()
        AADD( aParam , TRANSFORM( hb_PValue( x ) , "@x" ) )
    NEXT     


   cSql := hb_StrFormat( cSQL , hb_ArrayToParams( aParam ) )  
   
   ? "Execute : " , cSQL // Debug
   BEGIN SEQUENCE WITH __breakblock()
       oCn:Execute( cSql )
   RECOVER USING oError
        ? oError:Description
        lRet := .f.
   ENDSEQUENCE    
   oCn:Close()
   
   RETURN lRet