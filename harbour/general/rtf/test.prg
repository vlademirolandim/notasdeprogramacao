

PROCEDURE Main

     LOCAL cStr := Memoread( "model.rtf" )
     LOCAL cOut

     cOut := StrTran( cStr , "<<Name>>" , "Smith" )

     MemoWrit( "out.rtf" , cOut )


     RETURN
