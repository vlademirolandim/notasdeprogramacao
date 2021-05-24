#include <hmg.ch>
STATIC nContador 
Function Main

	
	IS_OK := .T.
    nContador := 0

    Load Window Main
    Main.Center
    Main.Activate
        

Return

PROCEDURE Text01  // Chamada por OnLostFocus de Text_1

	SetProperty( "Main" , "Label_1" , "Value" , "Um erro : " + STRZERO( ++nContador , 2 ) + " / " + GetControlNameByIndex(GetLastActiveControlIndex() )  )
	doMethod( "Main" , "Text_1" , "SetFocus" ) // Foco no campo 

	RETURN
		
PROCEDURE Text02  // Chamada por OnLostFocus de Text_2

	setProperty( "Main" , "Label_2" , "Value" , "Eu não deveria ser executado : "  + STRZERO( ++nContador , 2 ) + " / " + GetControlNameByIndex(GetLastActiveControlIndex() ))
	
	RETURN	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	cCPF := STRZERO
