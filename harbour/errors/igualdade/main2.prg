
PROCEDURE MAIN

    LOCAL aStruct := { { "NOME" , "C" , 30 , 0 } }
    LOCAL aNome := {}
    
    //SET SOFTSEEK On  // <== Depois descomente e veja que ele vai achar o nome mais proximo

    //     
    DBCREATE( "BUSCA" , aStruct )
    USE BUSCA
    INDEX ON NOME TO BUSCA
    //
    AADD( aNome , "Isabelly Luisa" )
    AADD( aNome , "Gabriela Maria" )
    AADD( aNome , "Gabriel Kevin" )
    FOR x := 1 TO LEN( aNome )
        APPEND BLANK
        REPLACE NOME WITH aNome[x]
    NEXT
    
    
    SEEK "Roger"
    ? FOUND() , FIELD->NOME  // Não achou
    
    SEEK "Gabriel"
    ? FOUND() , FIELD->NOME  // Gabriel Kevin
    
    SEEK "Gab"
    ? FOUND() , FIELD->NOME  // Gabriel Kevin
    
    SEEK "Gabriela"
    ? FOUND() , FIELD->NOME  // Gabriela Maria   

    SEEK "Gabriela de Souza"
    ? FOUND() , FIELD->NOME  // Não achou

    SEEK "Isabel"
    ? FOUND() , FIELD->NOME  // Isabelly Luisa

    
    RETURN