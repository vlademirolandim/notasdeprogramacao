#include <hmg.ch>

Function Main

        Load Window Main
        Main.Center
        Main.Activate

Return

#include "vbase.ch"
#include "vdata.ch"
Procedure DbTeste
	
     LOCAL lResult, cMessage := ""

     CONFIG INIT
     CONFIG LOG LEVEL INFO

     USE DBTEST USING CONNECT "SQLITE" QUERY "SELECT * FROM EMP" TO lResult 
     IF lResult
        
	      doMethod( "Main" , "Grid_Busca" , "DELETEALLITEMS" )

      	DO WHILE .NOT. EOF()
      	
      	    doMethod( "Main" , "Grid_Busca" , "ADDITEM" , { FIELD->ENAME , FIELD->JOB } )
      	    SKIP
      
         ENDDO
	      DBTEST->( DBCLOSEAREA() )	
	
     ELSE
	       MsgInfo("Connect Failed")	
     ENDIF

Return
