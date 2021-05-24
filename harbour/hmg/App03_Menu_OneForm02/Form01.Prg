#include <hmg.ch>


Function Form01

	IF IsWindowActive( Form01 )
		
		domethod( "Form01" , "minimize" )
		domethod( "Form01" , "restore" )
		domethod( "Form01" , "setfocus" )

	ELSE

	        Load Window Form01
        	Form01.Center
	        Form01.Activate

	ENDIF

Return

