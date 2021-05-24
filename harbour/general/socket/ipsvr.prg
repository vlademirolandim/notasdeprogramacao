#include "hbsocket.ch"

#define ADDRESS                     "0.0.0.0"
#define PORT                        10000
#define EOT                         ( Chr( 4 ) )
#define LISTEN_TIMEOUT              3000            // 3s
#define RECV_TIMEOUT                10000           // 10s

request HB_MT

procedure main()

    local hListen
    local hSocket

    if !hb_mtvm()
        ? "multithread support required"
        return
    endif

    ? "create listening socket..."
    if empty( hListen := hb_socketOpen() )
        ? "socket create error " + hb_ntos( hb_socketGetError() )
    endif
    if !hb_socketBind( hListen, { HB_SOCKET_AF_INET, ADDRESS, PORT } )
        ? "bind error " + hb_ntos( hb_socketGetError() )
    endif
    if !hb_socketListen( hListen )
        ? "listen error " + hb_ntos( hb_socketGetError() )
    endif
    do while .t.
        if empty( hSocket := hb_socketAccept( hListen, , LISTEN_TIMEOUT ) )
            if hb_socketGetError() == HB_SOCKET_ERR_TIMEOUT
                ? "loop..."
            else
                ? "accept error " + hb_ntos( hb_socketGetError() )
            endif
        else
            ? "accept socket request"
            hb_threadDetach( hb_threadStart( @process(), hSocket ) )
        endif
        if inkey() == 27
            ? "quitting - esc pressed"
            exit
        endif
    enddo
    ? "close listening socket..."
    hb_socketShutdown( hListen )
    hb_socketClose( hListen )

return


procedure process( hSocket )

    local cRequest
    local nLen
    local cBuf

    do while .t.
        cRequest := ""
        nLen := 1
        do while at( EOT, cRequest ) == 0 .and. nLen > 0
            cBuf := space( 4096 )
            if ( nLen := hb_socketRecv( hSocket, @cBuf, , , RECV_TIMEOUT ) ) > 0
                cRequest += left( cBuf, nLen )
            else
                if nLen == -1 .AND. hb_socketGetError() == HB_SOCKET_ERR_TIMEOUT
                    nLen := 0
                endif
            endif
        enddo

        if nLen == -1
            ? "hb_socketRecv error " + hb_ntos( hb_socketGetError() )
        elseif nLen == 0
            ? "connection closed"
            exit
        else
            ? cRequest
            if "exit" $ cRequest
                ? "exit"
                exit
            endif
        endif
    enddo
    ? "close socket..."
    hb_socketShutdown( hSocket )
    hb_socketClose( hSocket )

return
