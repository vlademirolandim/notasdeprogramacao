#require "rddsql"

REQUEST SQLMIX

PROCEDURE Main()

   CLS

   rddSetDefault( "SQLMIX" )
   dbCreate( "persons", { { "NAME", "C", 20, 0 }, { "FAMILYNAME", "C", 20, 0 }, { "BIRTH", "D", 8, 0 }, { "AMOUNT", "N", 9, 2 } }, , .T., "persons" )

   APPEND BLANK 
   REPLACE NAME WITH ""  //-------------> some a coluna toda
   REPLACE FAMILYNAME WITH "FAMILLY 01"
   REPLACE BIRTH WITH DATE()
   REPLACE AMOUNT WITH 1000
   APPEND BLANK 
   REPLACE NAME WITH "USER 02"
   REPLACE FAMILYNAME WITH "FAMILLY 02"
   REPLACE BIRTH WITH DATE()
   REPLACE AMOUNT WITH 1200
   APPEND BLANK 
   REPLACE NAME WITH "" 
   REPLACE FAMILYNAME WITH "FAMILLY 03"
   REPLACE BIRTH WITH DATE()
   REPLACE AMOUNT WITH 1200


   
   dbGoTop()	
   Browse()

   RETURN

//PROCEDURE RDDSYS() ; RETURN  /* must be a public function */
