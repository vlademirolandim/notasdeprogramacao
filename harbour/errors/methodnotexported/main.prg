
#include "hbclass.ch"

PROCEDURE MAIN

	LOCAL oGridItem, oGridItem2
	LOCAL oGrid := Grid():New()
	LOCAL x

	// Set objects
	FOR x := 1 TO 10
	    oGridItem := GridItem():New()
		oGridItem:SetWhatEver( "Qualquer coisa " + StrZero( x , 2 )  )
		oGrid:AddGridItem( oGridItem )
	NEXT	
	
	
	// Get values
	FOR x := 1 TO oGrid:count()
	
		oGridItem2 := oGrid:getItemByIndex( x )
		? Valtype( oGridItem2 )
		? oGridItem2:GetWhatEver() // No exported method GetWhatEver  (ERROR)
	
	NEXT

	RETURN



// Grid (Class 1)
CREATE CLASS Grid

	HIDDEN:
	DATA aGridItem INIT {}
	EXPORTED:
	METHOD AddGridItem( oGridItem )
	METHOD GetItemByIndex( n )
	METHOD Count()
	
ENDCLASS

METHOD AddGridItem( oGridItem ) CLASS Grid

	//AADD( ::aGridItem , {} ) // ERRADO (CAUSA ERRO NA LINHA 23)
	AADD( ::aGridItem , oGridItem ) // CERTO
	
	RETURN

METHOD GetItemByIndex( n )

	RETURN ::aGridItem[ n ] 

	
METHOD Count()  CLASS Grid		 

	RETURN LEN( ::aGridItem )


// GridItem (Class 2) - Embedded in class 1
CREATE CLASS GridItem

	HIDDEN:
	DATA cWhatEver INIT "" 
	EXPORTED:
	METHOD GetWhatEver()
	METHOD SetWhatEver( cWhatEver )


ENDCLASS

METHOD GetWhatEver() CLASS GridItem

	RETURN ::cWhatEver

METHOD SetWhatEver( cWhatEver ) CLASS GridItem

	::cWhatEver := cWhatEver

	RETURN 





