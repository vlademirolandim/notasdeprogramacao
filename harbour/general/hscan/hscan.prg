/**

hbmk2 hscan.prg xhb.hbc

*/
#xtranslate text into <v> [<rst:reset>]   => #pragma __text|<v>+=%s;if(<.rst.>,<v>:="",)

PROCEDURE Main

    local cJson, hTable

    TEXT INTO cJson RESET
    {
       "message": "Evento retornado",
       "status_consulta": {
             "mensagem": "[b]Lote processado com sucesso[/b]."
        }
    }
    ENDTEXT

    ? cJson
    htable := hb_jsonDecode( cjson )
    ? hb_ValToExp( hTable )
    ? HScan( hTable , "[b]Lote processado com sucesso[/b]." ) 
    ? HScan( hTable[ "status_consulta" ] , "[b]Lote processado com sucesso[/b]." ) 


    RETURN
