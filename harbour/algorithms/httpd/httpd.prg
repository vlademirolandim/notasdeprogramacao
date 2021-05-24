
#require "hbhttpd"

MEMVAR server, get, post, cookie, session /* These vars is not mandatory */

/****************/
PROCEDURE Main

     LOCAL oServer, hConfig, hMount

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


     RETURN "Hello World"
/***************/
