#include "adodb.ch"
    
Function Main

   LOCAL oRs , oCn, cSql
   LOCAL cUsername := "SYSDBA"
   LOCAL cPassWord := "masterkey"
   LOCAL cDatabase := hb_Dirbase() + "sistemas33.fdb"
   LOCAL cDb := "Driver=Firebird/InterBase(r) driver;Uid=" + cUserName + ";Pwd=" + cPassword + ";DbName=" + cDataBase + ";" 

   //oCn := TOleauto():New('ADODB.Connection') // Classe usada por xHarbour. Exige xhb.hbc para compilar
   oCn := win_oleCreateObject( "ADODB.Connection" ) 
   oCn:ConnectionString := cDb
   oCn:Open()


	oRs := win_oleCreateObject( "ADODB.Recordset" ) 
	//oRs := TOleAuto():New('ADODB.Recordset') // Classe usada por xHarbour. Exige xhb.hbc para compilar
	oRs:CursorLocation = adUseClient
	oRs:Open( "SELECT * FROM emp", oCn , adOpenDynamic, adLockOptimistic )
	if oCn:State = adStateClose
		? ('Failed open table EMP')
		Return
	Endif
	if oRs:recordcount > 0
		oRs:Movefirst()
		do while !oRs:eof()
			? oRs:fields("ename"):value
			oRs:movenext()
		enddo
		oRs:Movefirst() // Opcional, retorna para o primeiro registro
	endif

    RETURN NIL