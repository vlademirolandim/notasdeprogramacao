#include "error.ch"

PROCEDURE MAIN

    LOCAL oError
    LOCAL c
                                                                                                      
    oError := ErrorNew()

    oError:severity    := ES_ERROR
    oError:genCode     := EG_UNSUPPORTED
    oError:subSystem   := "HBNETIO"
    oError:subCode     := 0
    oError:description := hb_langErrMsg( EG_UNSUPPORTED ) + " / Mais mensagens personalizadas"
    oError:canRetry    := .F.
    oError:canDefault  := .F.
    oError:fileName    := ""
    oError:osCode      := 0

      Eval( ErrorBlock(), oError )
      
	RETURN

