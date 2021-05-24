
PROCEDURE Main

    BEGIN SEQUENCE WITH __breakblock()
        test2()    
    RECOVER 
        ? "Inside test.prg (Level 0 - Main)"
    END SEQUENCE
    ? "End program"

RETURN
