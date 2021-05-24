#require "hbodbc"

PROCEDURE Main()

   LOCAL cUsername := "SYSDBA"
   LOCAL cPassWord := "masterkey"
   LOCAL cDatabase := "localhost:" + hb_Dirbase() + "sistemas33.fdb"
   LOCAL cDb := "Driver=Firebird/InterBase(r) driver;Uid=" + cUserName + ";Pwd=" + cPassword + ";DbName=" + cDataBase + ";" 


   dsFunctions := TODBC():New( cDB )
   dsFunctions:SetSQL( "SELECT * FROM emp" )
   dsFunctions:Open()
   ? dsFunctions:FieldByName( "Ename" ):Value
   ? dsFunctions:Skip()
   ? dsFunctions:FieldByName( "Ename" ):Value
   ? dsFunctions:GoTo( 1 )
   ? dsFunctions:FieldByName( "Ename" ):Value
   ? dsFunctions:Prior()
   ? dsFunctions:FieldByName( "Ename" ):Value
   ? dsFunctions:First()
   ? dsFunctions:FieldByName( "Ename" ):Value
   ? dsFunctions:Last()
   ? dsFunctions:FieldByName( "Ename" ):Value
   ? dsFunctions:Close()

   dsFunctions:Destroy()

   RETURN

