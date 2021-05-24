#require "hbfbird"

PROCEDURE Main()

   LOCAL cServer := "localhost:"
   LOCAL cDatabase := "sistemas33.fdb"
   LOCAL cUser := "SYSDBA"
   LOCAL cPass := "masterkey"
   LOCAL nPageSize := 1024
   LOCAL cCharSet := "UTF8"
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
   
   ? "Testing invalid request"
   ? tmp := FBExecute( db, "sldjfs;ldjs;djf", nDialect ), FBError( tmp )
   
/*
   trans := FBStartTransaction( db )
   IF HB_ISNUMERIC( trans )
      ? "Error:", trans, FBError( trans )
   ELSE
      ? tmp := FBQuery( db, "create table teste (code smallint)", nDialect, trans ), FBError( tmp )
      ? tmp := FBCommit( trans ), FBError( tmp )
   ENDIF

   ? "==="
   trans := FBStartTransaction( db )
   IF HB_ISNUMERIC( trans )
      ? "Error:", trans, FBError( trans )
   ELSE
      ? tmp := FBQuery( db, "CREATE TABLE customer( customer VARCHAR(20) )", nDialect, trans ), FBError( tmp )
      ? tmp := FBCommit( trans ), FBError( tmp )
   ENDIF
   ? "==="

   trans := FBStartTransaction( db )
   IF HB_ISNUMERIC( trans )
      ? "Error:", trans, FBError( trans )
   ELSE
      ? "Status Execute: ", tmp := FBExecute( db, 'insert into customer(customer) values ("test 1")', nDialect, trans ), FBError( tmp )
      ? "Status Rollback: ", tmp := FBRollback( trans ), FBError( tmp )
   ENDIF

   trans := FBStartTransaction( db )
   IF HB_ISNUMERIC( trans )
      ? "Error:", trans, FBError( trans )
   ELSE
      ? "Status Execute: ", tmp := FBExecute( db, 'insert into customer(customer) values ("test 2")', nDialect, trans ), FBError( tmp )
      ? "Status Commit: ", tmp := FBCommit( trans ), FBError( tmp )
   ENDIF

   ? "Status Execute: ", tmp := FBExecute( db, 'insert into customer(customer) values ("test 3")', nDialect ), FBError( tmp )

   // FIX WINDOWS GPF BELOW

   qry := FBQuery( db, "SELECT * FROM customer", nDialect )
   IF HB_ISNUMERIC( qry )
      ? "Error:", qry, FBError( qry )
   ELSE
      num_cols := qry[ 4 ]
      columns := qry[ 6 ]

      FOR x := 1 TO num_cols
         ? x, "> "
         FOR y := 1 TO Len( columns[ x ] )
            ?? columns[ x, y ], " "
         NEXT
      NEXT

      ? "---"

      DO WHILE ( fetch_stat := FBFetch( qry ) ) == 0
         ? fetch_stat
         FOR x := 1 TO num_cols
            ?? FBGetData( qry, x ), ", "
         NEXT
      ENDDO

      ? "Fetch code:", fetch_stat

      ? "Status Free Query: ", FBFree( qry )
   ENDIF


   // Close connection with rdbms 
   ? "Status Close Database: ", tmp := FBClose( db ), FBError( tmp )
   
*/   
   


   RETURN
