#require "hbhttpd"

MEMVAR server, get, post, cookie, session /* These vars is not mandatory */
REQUEST HB_CODEPAGE_UTF8EX


/****************/
PROCEDURE Main

     LOCAL oServer, hConfig, hMount
     
     hb_CdpSelect("UTF8EX")

     IF hb_argCheck( "stop" )
          MemoWrit( ".uhttpd.stop", "" )
          RETURN
     ELSEIF hb_argCheck( "start" )
          ? "Init server in port 8002"
          ? "Please type localhost:8002 in your browser"
     ELSE
          ? "Usage: app [options]"
          ? "Options:"
          ? "  //start             Start server"
          ? "  //stop              Stop running server"
          RETURN
     ENDIF


     oServer := UHttpdNew()

     hMount := { => }
     hMount[ "/" ] := {|| Start() }

     hConfig := { ;
     "FirewallFilter"      => "", ;
     "Port"                => 8002, ;
     "Trace"               => {| ... | QOut( ... ) }, ;
     "Idle"                => {| o | iif( hb_vfExists( ".uhttpd.stop" ), ( hb_vfErase( ".uhttpd.stop" ), o:Stop() ), NIL ) }, ;
     "Mount"          => hMount }


     IF ! oServer:Run( hConfig )
          ? "Server error:", oServer:cError
          ErrorLevel( 1 )
          RETURN
     ENDIF


     RETURN


/***************/
FUNCTION Start()

    LOCAL cJson := '{"Result":"OK","Field":{"codplano":"1.1.2","descricao":"REALIZAÇÕES","codpai":"1.1","___pk":"1.1.2"}}'
    
    UAddHeader( "Content-Type" , 'application/json' )

    RETURN cJson
/***************/
