#include <hmg.ch>

Function Main

   Load Window Main
   Main.Center
   Main.Activate

Return


#include "vbase.ch"
#include "vdata.ch"

PROCEDURE LoadEmp()

   LOCAL lFound := .F.
   
   
     LOCAL lResult, cMessage := "", cQuery

     CONFIG INIT
     CONFIG LOG LEVEL INFO

     nCod := GetProperty( "Main" , "Text_Busca" , "Value" )
     cQuery := hb_StrFormat( "SELECT * FROM EMP WHERE EMPNO = %d" , nCod )
     USE DBTEST USING CONNECT "SQLITE" QUERY cQuery TO lResult
   IF RecCount() > 0
      lFound := .T.
   ENDIF
   IF lFound

      SetProperty( "Main" , "Text_EmpNo" , "Value" , FIELD->EMPNO )
      SetProperty( "Main" , "Text_EName" , "Value" , FIELD->ENAME )   
      SetProperty( "Main" , "Text_Job" , "Value" , FIELD->JOB )    

   ELSE
      MsgStop("Employee not found : " + cQuery )      
      SetProperty( "Main" , "Text_EmpNo" , "Value" , 0 )
      SetProperty( "Main" , "Text_EName" , "Value" , "" )   
      SetProperty( "Main" , "Text_Job" , "Value" , "" )    
      
   ENDIF      
   
   CLOSE

Return
