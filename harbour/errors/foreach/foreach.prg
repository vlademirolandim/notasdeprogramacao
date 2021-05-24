
/*

As propriedades das variáveis preenchidas dentro DO FOR EACH
não podem ser visíveis dentro de blocos de códigos ou macros

O exemplo abaixo simula um erro com blocos de código

*/
PROCEDURE Main

    LOCAL hMenu AS HASH
    LOCAL cCaption AS CHARACTER

    hMenu := { "KEY" => "Hi All" }

    FOR EACH cCaption IN hMenu

        Qout( cCaption:__enumkey() )
        ? EVAL( {|| Qout( cCaption:__enumkey() ) } )


    NEXT 

    RETURN
