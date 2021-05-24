
PROCEDURE MAIN

   FERASE( "teste.db3" )	
   IF sqlite_connect( "teste.db3" , .t. )
      ? "Database connect was made successfully!"
   ELSE
      ? "Database doesn't connected :("
   ENDIF

   RETURN 

FUNCTION sqlite_connect(dbname,lCreate)
   LOCAL oServerSQLite := sqlite3_open(dbname,lCreate)
   IF Empty( oServerSQLite )
      RETURN .f.
   ENDIF
RETURN .t.
