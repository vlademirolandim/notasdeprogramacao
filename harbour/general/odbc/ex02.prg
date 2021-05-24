#require "hbodbc"

PROCEDURE Main()

   LOCAL cUsername := "SYSDBA"
   LOCAL cPassWord := "masterkey"
   LOCAL cDatabase := "localhost:" + hb_Dirbase() + "sistemas33.fdb"
   LOCAL cDb := "Driver=Firebird/InterBase(r) driver;Uid=" + cUserName + ";Pwd=" + cPassword + ";DbName=" + cDataBase + ";" 


   dsFunctions := TODBC():New( cDB )
   dsFunctions:SetSQL( "INSERT INTO EMP ( EMPNO , ENAME )VALUES ( 1001 , 'DAVID' )" )
   ? dsFunctions:ExecSQL()
   ? dsFunctions:Close()

   dsFunctions:Destroy()

   RETURN

