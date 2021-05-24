
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
     hMount[ "/" ] := {|| Index() }
     hMount[ "/upload" ] := {|| Upload() }
     

     hConfig := { ;
     "FirewallFilter"      => "", ;
     "Port"                => 8002, ;
     "Trace"               => {| ... | MyTrace( ... ) }, ;
     "Idle"                => {| o | iif( hb_vfExists( ".uhttpd.stop" ), ( hb_vfErase( ".uhttpd.stop" ), o:Stop() ), NIL ) }, ;
     "Mount"          => hMount }


     IF ! oServer:Run( hConfig )
          ? "Server error:", oServer:cError
          ErrorLevel( 1 )
          RETURN
     ENDIF


     RETURN


/***************/
FUNCTION Index()


     RETURN HB_MemoRead( "index.html" )
/***************/

FUNCTION Upload()

   //local hPairs := AP_PostPairs()
   local cData, cFileName, nStart 

    ? hb_Memowrit( "httpd.txt" , hb_valtoexp( httpd ) )
   if Len( post ) == 0
      ? "Erro"
   else
      cData = post["file"] //HB_HValueAt( post, 1 )
      hb_MemoWrit( "C:\Temp\vlad.png" ,;
                   HB_BASE64DECODE( SubStr( cData, At( "base64,", cData ) + 7 ) ) )
      /*
      cFileName = SubStr( cData, 2, At( ";", cData ) - 3 )
      hb_MemoWrit( "C:\Temp\" + cFileName,;
                   HB_BASE64DECODE( SubStr( cData, nStart := At( "base64,", cData ) + 7,;
                   At( "------", cData ) - nStart ) ) )
      */             
   endif

RETURN ""

FUNCTION MyTrace( ... )

     LOCAL i
     // ----------------- Line command parameters checking ----------------------
     IF PCount() == 0
          RETURN
     ENDIF
     
     i := 1
     DO WHILE i <= PCount()

          GetUpload( hb_PValue( i++ ) )


     ENDDO
     

     RETURN 


#include "fileio.ch"

FUNCTION GetUpload( cTexto  )

     IF AT( "filename=" , hb_valtoexp(cTexto) ) <> 0 
         cTexto := hb_valtoexp( cTexto )
         cTexto := SubStr( cTexto, At( "base64,", cTexto ) + 7 ) 
         cTexto := SubStr( cTexto, 1 , At( "------", cTexto ) )
         hb_MemoWrit( "C:\Temp\img.png" , HB_BASE64DECODE( cTexto ) )
     ENDIF

     RETURN NIL
