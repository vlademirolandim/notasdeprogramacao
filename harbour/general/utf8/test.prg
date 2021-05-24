#include "hbextcdp.ch"

PROCEDURE Main()

   LOCAL cdp

   FOR EACH cdp IN hb_cdpList()
      ? cdp , hb_Valtoexp( hb_cdpUniId( cdp ) )
   NEXT
   
   RETURN


/* 
PROCEDURE Main()
   LOCAL cdp
   FOR EACH cdp IN get_list_of_real_codepages()
      ? hb_cdpUniID( cdp )
   NEXT
   RETURN
 
FUNCTION get_list_of_real_codepages()
   LOCAL s_uni := { => }
   LOCAL cdp
   s_uni := { => }
   FOR EACH cdp IN hb_cdpList()
      s_uni[ hb_cdpUniID( cdp ) ] := cdp
   NEXT
   RETURN s_uni
   
   */