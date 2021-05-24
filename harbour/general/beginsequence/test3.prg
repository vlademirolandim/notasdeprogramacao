
PROCEDURE Test3
    
    LOCAL a := 0, b := "Vlad"

    BEGIN SEQUENCE WITH __breakblock()
        ? a + b    
    RECOVER 
        ? "Inside test3.prg"
    END SEQUENCE
    

RETURN
