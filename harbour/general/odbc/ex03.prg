#require "hbodbc"

PROCEDURE Main()

   LOCAL cUsername := "SYSDBA"
   LOCAL cPassWord := "masterkey"
   LOCAL cDatabase := "localhost:" + hb_Dirbase() + "sistemas33.fdb"
   LOCAL cDb := "Driver=Firebird/InterBase(r) driver;Uid=" + cUserName + ";Pwd=" + cPassword + ";DbName=" + cDataBase + ";" 
   LOCAL x := 0


   dsFunctions := TODBC():New( cDB )
   dsFunctions:SetSQL( "SELECT * FROM emp" )
   dsFunctions:Open()
   dsFunctions:First()  // Não era para precisar, mas precisa. Senão o primeiro elemento retorna NIL
   DO WHILE .NOT. dsFunctions:Eof()
       ? ++x
       ? dsFunctions:FieldByName( "Ename" ):Value
       dsFunctions:Skip()
   ENDDO   
   dsFunctions:Close()
   dsFunctions:Destroy()

   RETURN

