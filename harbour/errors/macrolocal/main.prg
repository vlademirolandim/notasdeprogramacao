
STATIC cEval
STATIC cExpr03 
PROCEDURE MAIN

    PUBLIC cExpr01 := "1+1"
    PRIVATE cExpr02 := "1+1"
    cExpr03 := "1+1"

    cEval := "cExpr01"
    ? cExpr01 , " = " ,  &cEval
    cEval := "cExpr02"
    ? cExpr02 , " = " ,  &cEval
    cEval := "cExpr03"
    ? cExpr03 , " = " ,  &cEval  // <======= Erro ao expandir uma variável contendo uma outra variável STATIC 
                                 //                   (Se fosse LOCAL dava erro tambem)

    RETURN
    
