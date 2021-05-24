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
         MsgInfo("Connect OK")
     ELSE
	 MsgInfo("Connect Failed")	
     ENDIF

Return
