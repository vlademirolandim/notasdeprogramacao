FUNCTION Main()


    HB_MemoWrit( "novo.jpg" , Imagem() )
    // Com MemoWrit tambem funciona, mas o 
    // aconselhado e HB_Memowrit para retirar o Ctrl+Z final 


    RETURN NIL

FUNCTION Imagem()

  LOCAL cReturn := ""
 
#pragma __streaminclude "imagem/01.jpg"   | cReturn := %s 
// nao é __streaminclude, mas sim __binarystreaminclude
  
RETURN cReturn
