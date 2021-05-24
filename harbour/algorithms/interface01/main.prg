
#include "hbclass.ch"

STATIC sConnODBC 
STATIC sConnSqlite 

PROCEDURE MAIN

	LOCAL oODBC , oSQLite, oDatabase
    
    sConnODBC := "DBQ=" + hb_FNameMerge( hb_DirBase(), "sistemas33.mdb" ) + ";Driver={Microsoft Access Driver (*.mdb)}"
    sConnSqlite := hb_FNameMerge( hb_DirBase(), "sistemas33.db3" )    

    ? "----------------------------------------------"
    ? "VODBC"
    ? "----------------------------------------------"    
    oODBC := VODBC():NEW()
    oODBC:setConnect( sConnODBC )
    IF oODBC:Open()
        ? "Ok"
    ELSE
        ? "Fail"
    ENDIF
    oODBC := NIL

    ? "----------------------------------------------"
    ? "VSQLITE"
    ? "----------------------------------------------"    
    oSQLITE := VSQLITE():NEW()
    oSQLITE:setConnect( sConnSqlite )
    IF oSQLITE:Open()
        ? "Ok"
    ELSE
        ? "Fail"
    ENDIF
    oSQLITE := NIL



    ? "----------------------------------------------"
    ? "IDatabase"
    ? "----------------------------------------------"
    oDatabase := IDatabase():New()
    oDatabase:select( "SQLITE" )
    IF oDatabase:Open()
        ? "Ok IDatabase - SQLITE"
    ELSE
        ? "Fail"
    ENDIF
    
    oDatabase:select( "ODBC" )
    IF oDatabase:Open()
        ? "Ok IDatabase - ODBC"
    ELSE
        ? "Fail"
    ENDIF
        
    
	RETURN
    

//-----------------------------------------------------------
// IDatabase (Interface)
CREATE CLASS IDatabase

	HIDDEN:
    DATA oSQL
    DATA cConnect
    
    EXPORTED:
	METHOD select( cType )
	METHOD Open()
	
ENDCLASS

METHOD select( cType ) CLASS IDatabase


    IF cType == "SQLITE"
        ::cConnect := sConnSqlite
        ::oSQL := VSQLITE():New()
    ELSE
        ::cConnect := sConnODBC
        ::oSQL := VODBC():New()
    ENDIF    
	
	RETURN

METHOD Open() CLASS IDatabase

    
    
    ::oSQL:setConnect( ::cConnect )
    
    RETURN ::oSQL:Open()


//-----------------------------------------------------------
// VODBC 
CREATE CLASS VODBC

	HIDDEN:
	DATA cConnect
    DATA hEnv
    DATA db
	EXPORTED:
	METHOD setConnect( cConnect )
	METHOD Open()
	
ENDCLASS

METHOD setConnect( cConnect ) CLASS VOdbc

    ::cConnect := cConnect
	
	RETURN

METHOD Open()

    LOCAL cConstrout, nConn
    LOCAL cError1, cError2 , nError 

    SQLAllocEnv( @::hEnv  )
    SQLAllocConnect( ::hEnv, @::db )
    nConn := SQLDriverConnect( ::db, ::cConnect , @cConstrout ) 
    
    IF nConn == 1
        ? "ODBC Ok... Connected"
        lRet := .T.
    ELSE
        SQLError( , ::db,, @cError1, @nError, @cError2 )
        ? cError1, cError2 , nError 
        lRet := .F.
    ENDIF        

	RETURN lRet

	

//-----------------------------------------------------------
// VSQLITE
CREATE CLASS VSQLITE

	HIDDEN:
	DATA cDatabase
    DATA db
	EXPORTED:
	METHOD setConnect( cConnect )
	METHOD Open()
	
ENDCLASS

METHOD setConnect( cDatabase ) CLASS VSQLITE

    ::cDatabase := cDatabase
	
	RETURN

METHOD Open() CLASS VSQLITE

    LOCAL lRet

    ::db := sqlite3_open( ::cDatabase ) // Conecta ao sqlite
    IF Empty( ::db )
        ? sqlite3_errmsg( ::db ) 
        lRet := .F.
    ELSE
        lRet := .T.
        ? "Connected in sqlite"
    ENDIF

	RETURN lRet

	




