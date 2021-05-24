#require "hbfbird"

PROCEDURE Main()

   LOCAL oServer, oQuery, oRow, i, x, aTables, aStruct, aKey

   LOCAL cServer := "localhost:"
   LOCAL cDatabase := hb_DirTemp() + "temp.fdb" // Tem que informar o path completo
   LOCAL cUser := "SYSDBA"
   LOCAL cPass := "masterkey"
   LOCAL nPageSize := 1024
   LOCAL cCharSet := "UTF8"
   LOCAL nDialect := 3
   LOCAL cQuery, cName


    ? cDatabase , "Ini test"
   IF hb_FileExists( cDatabase )
      FErase( cDatabase )
   ENDIF

   ? FBCreateDB( cServer + cDatabase, cUser, cPass, nPageSize, cCharSet, nDialect )
   
   IF FILE( cDatabase )
       ? "Success"
       ? "Open with IBExpert or you favorite client"
    ELSE
        ? "Fail"
    ENDIF    
    ? "End test"

   RETURN
