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

     UpdateGrid() 

Return

#define INDICE_EMPNO 1
PROCEDURE FrmEmp( nRow )

   LOCAL aData := Main.Grid_Busca.Item( nRow )
   LOCAL cQuery

   IF nRow == 0
      RETURN
   ENDIF
   cQuery := hb_StrFormat( "SELECT * FROM EMP WHERE EMPNO = %s" , aData[ INDICE_EMPNO ] )
   USE DBTEST USING CONNECT "SQLITE" QUERY cQuery TO lResult 
   IF lResult

      Load Window FrmEmp
    
      SetProperty( "FrmEmp" , "Text_EMPNO" , "VALUE" , DBTEST->EMPNO )
      SetProperty( "FrmEmp" , "Text_ENAME" , "VALUE" , DBTEST->ENAME )
      SetProperty( "FrmEmp" , "Text_JOB" , "VALUE" , DBTEST->JOB )
      DBTEST->( DBCLOSEAREA() )	
                  
      FrmEmp.Center
      FrmEmp.Activate
      
      

    ELSE
       MsgInfo("Connect Failed")	
    ENDIF

   return
   
PROCEDURE FrmEmpSave()

   LOCAL cEname := GetProperty( "FrmEmp" , "Text_ENAME" , "VALUE" )
   LOCAL cJob := GetProperty( "FrmEmp" , "Text_JOB" , "VALUE" )
   LOCAL lResult
   
   UPDATE USING CONNECT "SQLITE" emp  SET ENAME = cEname , JOB = cJob WHERE EMPNO = GetProperty( "FrmEmp" , "Text_EMPNO" , "VALUE" )  TO lResult 

   //cQuery := hb_StrFormat( "SELECT * FROM EMP WHERE EMPNO = %s" , aData[ INDICE_EMPNO ] )      
   IF lResult
      
        // Atualiza grid com altera��es
        UpdateGrid()      
        FrmEmp.Release
   ELSE
        MsgStop("Error while updating.")     
   ENDIF


   return   

PROCEDURE UpdateGrid

   LOCAL lResult

        USE DBTEST USING CONNECT "SQLITE" QUERY "SELECT * FROM EMP" TO lResult 
        IF lResult
           
   	      doMethod( "Main" , "Grid_Busca" , "DELETEALLITEMS" )
   
         	DO WHILE .NOT. EOF()
         	
         	    doMethod( "Main" , "Grid_Busca" , "ADDITEM" , { FIELD->EMPNO , FIELD->ENAME , FIELD->JOB } )
         	    SKIP
         
            ENDDO
   	      DBTEST->( DBCLOSEAREA() )	
   	
        ELSE
   	       MsgInfo("Connect Failed while updating grid")	
        ENDIF



   RETURN   
   