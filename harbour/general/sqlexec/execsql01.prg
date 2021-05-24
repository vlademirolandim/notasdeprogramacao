REQUEST HB_CODEPAGE_PTISO

PROCEDURE MAIN

   LOCAL cDatabase := "sistemas33.mdb"
   LOCAL cStringADO := "DBQ="+ hb_FNameMerge( hb_DirBase(), cDataBase ) + ";Driver={Microsoft Access Driver (*.mdb)}"
   LOCAL cMessage
   LOCAL cSQL

   hb_cdpSelect( "PTISO" )
   
 
   cSQL := "INSERT INTO emp ( empno, ename ) VALUES ( %s , '%s' )"
   IF VLJ_ExecSQL( cStringADO , cSQL , @cMessage , STR(hb_RandomInt(1000,9999),4) , 'Exemplo01' ) 
        ? "Operação realizada com sucesso"
   ELSE
        ? cMessage
   ENDIF     


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
   LOCAL oCn
   LOCAL oError
   
   oCn := win_oleCreateObject( "ADODB.Connection" )
   oCn:ConnectionString := cString
   oCn:Open()
  

   cSql := hb_StrFormat( cSQL , ... )  
   
   ? "Execute : " , cSQL // Debug
   BEGIN SEQUENCE WITH __breakblock()
       oCn:Execute( cSql )
   RECOVER USING oError
        ? oError:Description
        lRet := .f.
   ENDSEQUENCE    
   oCn:Close()
   
   RETURN lRet