request SQLMIX , SDDPG
#include "dbinfo.ch"

PROCEDURE MAIN

     LOCAL nConn
     LOCAL cDBHost := "localhost"
     LOCAL cDBUser := "sistema01"
     LOCAL cDBPass := "sistema01"
     LOCAL cDBName := "sistema01"
     LOCAL cDBPort := "5432"
     LOCAL cSQL := "select * from products" 

     RDDSETDEFAULT( "SQLMIX" )
     nConn := rddInfo( RDDI_CONNECT, { "PostgreSQL", cDBHost, cDBUser , cDBPass , cDBName , cDBPort  } ) 
     IF nConn == 0
       ?  "Unable connect to the server!" , RDDINFO( RDDI_ERRORNO ) ,  RDDINFO( RDDI_ERROR )
    ENDIF

     //dbUseArea( .t. , "SQLMIX" , cSQL , "aliasname" , .t.  )
     dbuseArea( , "SQLMIX" , cSQL , "aliasname" )
     ? RECCOUNT()
     ? FIELD->name
     

     RETURN
