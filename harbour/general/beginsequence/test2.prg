
PROCEDURE Test2


    BEGIN SEQUENCE WITH __breakblock()
        test3()    
    RECOVER 
        ? "Inside test2.prg"
    END SEQUENCE
    

RETURN
