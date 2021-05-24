/* editor configuration : cp1252 */
PROCEDURE Main

    REQUEST HB_CODEPAGE_UTF8EX
    REQUEST HB_CODEPAGE_PTISO
    hb_cdpSelect( "UTF8EX" )
    ? hb_cdpTerm() 
    ? hb_cdpOS() 


	RETURN