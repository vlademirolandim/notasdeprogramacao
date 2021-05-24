#require "hbfbird"

PROCEDURE Main()

   LOCAL cServer := "localhost:"
   LOCAL cDatabase := "sistemas33.fdb"
   LOCAL cUser := "SYSDBA"
   LOCAL cPass := "masterkey"
   LOCAL nPageSize := 1024
   LOCAL cCharSet := "ASCII"
   LOCAL nDialect := 1

   /* Connect rdbms */
   db := FBConnect( cServer + cDatabase, cUser, cPass )
   IF HB_ISNUMERIC( db )
      ? "Erro na conexao do banco" 
      ? "Error:", db, FBError( db )
      QUIT
   ELSE
      ? "Consegui conectar"
   ENDIF


   RETURN
