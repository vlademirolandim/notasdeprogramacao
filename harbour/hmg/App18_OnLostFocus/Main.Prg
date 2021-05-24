#include <hmg.ch>

Function Main

        Load Window Main 
        Main.Center
        Main.Activate

Return

PROCEDURE Valid( cCtrlName )  // Chamada por OnLostFocus de Text_1

	
	DO CASE
	CASE cCtrlName == "Text_1"
		SetProperty( "Main" , "Label_1" , "Value" , cCtrlName )
	CASE cCtrlName == "Text_2"
		SetProperty( "Main" , "Label_1" , "Value" , cCtrlName )
	CASE cCtrlName == "Text_3"
		SetProperty( "Main" , "Label_1" , "Value" , cCtrlName )
	ENDCASE
	
	RETURN
