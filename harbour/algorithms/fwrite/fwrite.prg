
#include "fileio.ch"

FUNCTION MyLog( cTexto  )

     LOCAL nHandle
     LOCAL cName := "mylog.txt"


     IF .NOT. FILE( cName )
          nHandle := FCREATE( cName )
     ELSE
          nHandle := FOPEN( cName , FO_READWRITE + FO_SHARED )
     ENDIF 

     FSEEK( nHandle  ,0,2)

     FWRITE( nHandle , cTexto + HB_EOL() )
     FCLOSE( nHandle )

     RETURN NIL