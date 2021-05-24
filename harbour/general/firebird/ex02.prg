#require "hbfbird"

PROCEDURE Main()

    LOCAL cServer := "localhost:"
    LOCAL cDatabase := hb_Dirbase() + "sistemas33.fdb"
    LOCAL cUser := "SYSDBA"
    LOCAL cPass := "masterkey"
    LOCAL nPageSize := 1024
    LOCAL cCharSet := "UTF8"
    LOCAL nDialect := 3
    LOCAL qry


    /* Connect rdbms */
    db := FBConnect( cServer + cDatabase, cUser, cPass )
    IF HB_ISNUMERIC( db )
      ? "Erro na conexao do banco" 
      ? "Error:", db, FBError( db )
      QUIT
    ELSE
      ? "Consegui conectar"
    ENDIF
    
    
    ? "select * from EMP"
    qry := FBQuery( db, "SELECT * FROM EMP", nDialect )
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

    /* Close connection with rdbms */
    ? "Status Close Database: ", tmp := FBClose( db ), FBError( tmp )   


   RETURN
