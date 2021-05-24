#include "hbsocket.ch"

#define ADDRESS                     "127.0.0.1"
#define PORT                        10000
#define EOT                         ( Chr( 4 ) )

procedure main()

    local hSocket

    if empty( hSocket := hb_socketOpen() )
        ? "socket create error " + hb_ntos( hb_socketGetError() )
    endif
    if !hb_socketConnect(hSocket, { HB_SOCKET_AF_INET, ADDRESS, PORT } )
        ? "socket connect error " + hb_ntos( hb_socketGetError() )
    endif

    ? hb_socketSend( hSocket, "hi" + EOT  )
    ? hb_socketSend( hSocket, "how" + EOT  )
    ? hb_socketSend( hSocket, "you doing?" + EOT  )
    ? hb_socketSend( hSocket, "exit" + EOT  )

    hb_socketShutdown( hSocket )
    hb_socketClose( hSocket )

return
