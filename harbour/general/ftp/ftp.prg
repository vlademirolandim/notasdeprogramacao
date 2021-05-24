PROCEDURE MAIN

    LOCAL oUrl            := tUrl():New()
    LOCAL oFtp

    oUrl:cProto     := 'ftp'
    oUrl:cServer    := ""
    oUrl:cPath      := ''   // cRemotePath
    oUrl:cFile      := ''   // cRemoteFileName
    oUrl:cUserid    := "teste"
    oUrl:cPassword  := "senha"
    oFtp            := tIPClientFtp():New( oUrl )


    CC := 0
    DO WHILE .T.
    	IF oFtp:open()
    		EXIT
    	ELSE
          CC++
    		IF CC >= 4
             ? "Retry to connect again to FTP server? "  + hb_ValToExp( oFtp:lastErrorMessage()) 
    			RETURN .F.
    		ELSE
    			IF 'TIMEOUT' == ALLTRIM(UPPER(oFtp:lastErrorMessage()))
    				//oFtp:nConnTimeout := oFtp:nConnTimeout  + 10000    // +1000
    			ENDIF
    		ENDIF
    	ENDIF
    ENDDO

    IF .NOT. oFtp:open()
       ? oFtp:lastErrorMessage() 
    	RETURN
    ENDIF 

    oFtp:cwd( "/domains/.......com/public_html/" )	 
    ?  oFtp:cReply   
    ?  oFtp:lastErrorMessage() 
 
    aFILES_WWW  := oFtp:listFiles() // on serverside
    ? oFtp:lastErrorMessage() 
    aFILES_WWW  := ASORT(aFILES_WWW,,, { |x, y | x [F_NAME] < y [F_NAME] } )
    aFILES_WWW2 := {}

    IF LEN(aFILES_WWW) == 0
       ? 'listFiles == 0 '  
       RETURN
    ENDIF



 

    ? LEN(aFILES_WWW)
    FOR x := 1 TO LEN(aFILES_WWW)

    	IF aFILES_WWW[ x, F_NAME] == "." .OR. aFILES_WWW[ x, F_NAME ] == ".." .OR. UPPER(SUBSTR(aFILES_WWW[x, F_ATTR],1,1)) == 'D'
       ELSE

     
          IF '.PHP' $ UPPER(aFILES_WWW[ x, F_NAME] )
 
             IF 'PAR' $ UPPER(aFILES_WWW [X , F_NAME] ) .OR.  'NAK' $ UPPER(aFILES_WWW [X , F_NAME] ) 
             // delete on server side !!!!!
                oFtp:Dele(aFILES_WWW [X , F_NAME])  
             ENDIF

 
          ENDIF  
        
    	ENDIF 

    NEXT

    oFtp:close()

    /* upload * /
    RmtFileM  := "/domains/.....com/public_html/" + LOWER(cFILENAME)
    LclFileM	 := cPATH + cFILENAME


    IF .NOT. oFtp:uploadFile(LclFileM, RmtFileM)  
       ? ' NOK ' +  LclFileM  + STRVALUE( RmtFileM)  + STRVALUE(oFtp:cReply)  + STRVALUE(oFtp:lastErrorMessage())  
    ELSE
       ? 'UPDATE: ' + STRVALUE( cFILENAME) + STRVALUE(RmtFileM) + ' '  + STRVALUE( LclFileM) 
    ENDIF 
    */ 
	RETURN 