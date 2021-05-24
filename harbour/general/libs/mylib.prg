
FUNCTION FuncaoA()

    #ifdef __FUNCAO_A__
        LOCAL cFlag := "__FUNCAO_A__ DEFINIDO AQUI"
    #else
        LOCAL cFlag := "__FUNCAO_A__ AUSENTE"
    #endif    

    ? "Funcao A : " , cFlag

    return nil