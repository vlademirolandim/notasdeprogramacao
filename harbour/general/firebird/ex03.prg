#require "hbfbird"

PROCEDURE Main()

   LOCAL oServer, oQuery, oRow, i, x, aTables, aStruct, aKey

   LOCAL cServer := "localhost:"
   LOCAL cDatabase := hb_Dirbase() + "temp.fdb" // Tem que informar o path completo
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
        QUIT
    ENDIF   

    ? "Connecting..."

    oServer := TFBServer():New( cServer + cDatabase, cUser, cPass, nDialect )

    IF oServer:NetErr()
        ? "Fail"
        ? oServer:Error()
        QUIT
    ELSE
        ? "Connected"
    ENDIF
    
    

    ? "Create table"
    IF oServer:TableExists( "TEST" )
      oServer:Execute( "DROP TABLE Test" )
      oServer:Execute( "DROP DOMAIN boolean_field" )
    ENDIF

    ? "Creating domain for boolean fields..."
    oServer:Execute( "create domain boolean_field as smallint default 0 not null check (value in (0,1))" )

    oServer:StartTransaction()
    ? "Creating test table..."
    cQuery := "CREATE TABLE test("
    cQuery += "     Code SmallInt not null primary key, "
    cQuery += "     dept Integer, "
    cQuery += "     Name Varchar(40), "
    cQuery += "     Sales boolean_field, "
    cQuery += "     Tax Float, "
    cQuery += "     Salary Double Precision, "
    cQuery += "     Budget Numeric(12,2), "
    cQuery += "     Discount Decimal(5,2), "
    cQuery += "     Creation Date, "
    cQuery += "     Description blob sub_type 1 segment size 40 ) "

    oServer:Execute( cQuery )

    IF oServer:NetErr()
      ? oServer:Error()
    ENDIF

    oServer:Commit()    
    
    oServer:Query( "SELECT code, dept, name, sales, salary, creation FROM test" )
    WAIT
    ? "Structure of test table : " 
    aStruct := oServer:TableStruct( "test" )
    ?? hb_ValToExp( aStruct )

    FOR i := 1 TO Len( aStruct )
      ?
      FOR x := 1 TO Len( aStruct[ i ] )
         ?? aStruct[ i, x ]
      NEXT
    NEXT    

 
    ? "End test"
    
    

   RETURN
