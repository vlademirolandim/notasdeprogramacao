

PROCEDURE MAIN

    LOCAL oError
    LOCAL c
                                                                                                      
     BEGIN SEQUENCE WITH __breakblock()
        ? c + "122"
     RECOVER USING oError
         ? hb_valtoexp( oError:Description) 
         ? oError:Filename
         ? oError:Severity
         ? oError:SubCode
         ? oError:Subsystem
     END SEQUENCE

	RETURN

