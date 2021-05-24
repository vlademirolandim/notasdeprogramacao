#include <hmg.ch>
#include "vbase.ch"
#include "vdata.ch"

Function Main

    CONFIG INIT
    CONFIG LOG LEVEL INFO


    Load Window Main
    Main.Center
    Main.Activate

Return


PROCEDURE MyGrid()

    LOCAL aHeaders := { "", "Name" , "Job" }
    LOCAL anWidths := { 0, 100 , 100 }

    DEFINE WINDOW MyGrid ;
        AT 0,0 ;
        WIDTH 400 ;
        HEIGHT 200 ;
        TITLE 'Search'
        

        @ 10 , 20 TEXTBOX Text_Search
        
        @ 10 , 180 BUTTON Button_1 ;
            CAPTION 'Search' ;
            ACTION SearchGrid()       


        @ 40 ,20 ;
            GRID GridSearch;
            WIDTH 350;
            HEIGHT 100;
            HEADERS aHeaders;
            WIDTHS anWidths;
            ON DBLCLICK MyRow()

    END WINDOW
 
    CENTER WINDOW MyGrid
    ACTIVATE WINDOW MyGrid


    RETURN

PROCEDURE SearchGrid()

    LOCAL aItems 
    LOCAL lResult, cMessage := ""                 
    LOCAL cQuery := "SELECT * FROM EMP WHERE ENAME LIKE '%' || '%s' || '%'"
    
    USE DBTEST USING CONNECT "SQLITE" QUERY hb_StrFormat( cQuery , MyGrid.Text_Search.Value ) MESSAGE TO cMessage TO lResult 
    IF lResult    
        doMethod( "MyGrid" , "GridSearch" , "DELETEALLITEMS" ) 
        DO WHILE .NOT. EOF()
            doMethod( "MyGrid" , "GridSearch" , "ADDITEM" , { DBTEST->EMPNO, DBTEST->ENAME , DBTEST->JOB } )
            SKIP
        ENDDO    
    ENDIF
    
    RETURN
    

PROCEDURE MyRow()

    LOCAL nRow := MyGrid.GridSearch.Value
    LOCAL aData := MyGrid.GridSearch.Item( nRow )
    
    SetProperty( "Main" , "Text_EMPNO" , "VALUE" , VAL(aData[1]) ) 
    SetProperty( "Main" , "Text_ENAME" , "VALUE" , aData[2] )
    SetProperty( "Main" , "Text_JOB" , "VALUE" , aData[3] )
    
    MyGrid.Release
    
    RETURN    

