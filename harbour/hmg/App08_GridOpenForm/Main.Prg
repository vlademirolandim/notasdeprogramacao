#include <hmg.ch>

Function Main

        Load Window Main
        Main.Center
        Main.Activate

Return

//Declare Window Main

Procedure Buscar()

	doMethod( "Main" , "Grid_Busca" , "DELETEALLITEMS" )
	
	doMethod( "Main" , "Grid_Busca" , "ADDITEM" , { "Vlademiro" , "R. Tereza Cristina" } )
	doMethod( "Main" , "Grid_Busca" , "ADDITEM" , { "Vlader" , "R. Tereza Cristina" } )

Return

Procedure DuploClick()

    LOCAL nRow := Main.Grid_Busca.Value

	MsgInfo( hb_StrFormat( "Duplo click em %d" , nRow )  )

        Load Window MyForm

	SetProperty( "MyForm" , "MyLabel" , "Value" , nRow )


        MyForm.Center
        MyForm.Activate

	
Return
