REQUEST HB_CODEPAGE_PTISO

PROCEDURE MAIN()


   LOCAL oCn, cSql
   LOCAL cDatabase := "sistemas33.mdb"
   LOCAL cDb := "DBQ="+ hb_FNameMerge( hb_DirBase(), cDataBase ) + ";Driver={Microsoft Access Driver (*.mdb)}"
   LOCAL oError
   
   hb_cdpSelect( "PTISO" )

   oCn := win_oleCreateObject( "ADODB.Connection" )
   oCn:ConnectionString := cDb
   oCn:Open()
   //cSql := "INSERT INTO empx ( empno, ename ) VALUES ( 122 , 'NOVO NOME' )"  // <-- Erro para testar
   cSql := "INSERT INTO emp ( empno, ename ) VALUES ( 122 , 'Exemplo 00' )"  // <-- Essa aqui está correta
   
   ? "Execute : " , cSQL 
   BEGIN SEQUENCE WITH __breakblock()
       oCn:Execute( cSql )
   RECOVER USING oError
        ? oError:Description
   ENDSEQUENCE    
   oCn:Close()
   
   RETURN