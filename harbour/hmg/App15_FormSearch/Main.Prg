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

    LOCAL aHeaders := { "Name" , "Job" }
    LOCAL anWidths := { 100 , 100 }

    DEFINE WINDOW MyGrid ;
        AT 0,0 ;
        WIDTH 400 ;
        HEIGHT 200 ;
        TITLE 'Search' ;
        CHILD 

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
            ON DBLCLICK MyRow( this.CellRowIndex )

    END WINDOW
 
    CENTER WINDOW MyGrid
    ACTIVATE WINDOW MyGrid


    RETURN

PROCEDURE SearchGrid()

    LOCAL aItems    
    
    doMethod( "MyGrid" , "GridSearch" , "DELETEALLITEMS" )
	doMethod( "MyGrid" , "GridSearch" , "ADDITEM" , { "Vlademiro" , "Programmer" } )

    RETURN
    

PROCEDURE MyRow( nRow )

   LOCAL aData := MyGrid.GridSearch.Item( nRow )

   MsgInfo( hb_ValToExp( aData ) )
   MyGrid.Release
   
   UpdateForm( aData )

   return    

PROCEDURE UpdateForm( aData )
 
    SetProperty( "Main" , "Text_EMPNO" , "VALUE" , 1 ) 
    SetProperty( "Main" , "Text_ENAME" , "VALUE" , aData[1] )
    SetProperty( "Main" , "Text_JOB" , "VALUE" , aData[2] )

   return
   
