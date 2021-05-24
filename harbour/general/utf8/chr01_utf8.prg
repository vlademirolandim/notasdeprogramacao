/* Editor configurado em utf8 */
Procedure Main()
   REQUEST HB_CODEPAGE_UTF8EX // Disponibiliza o suporte a UTF8ex
   hb_cdpSelect("UTF8EX") // Seleciona o suporte a UTF8
   Clear
   NumCar=1
   NumCol=1
   Do While NumCar<255
      Do While NumCol<10
         ?? Str(NumCar,4)+"-"+CHR(NumCar)+" "
         NumCar:=NumCar+1
         NumCol:=NumCol+1
      EndDo
      ?
      NumCol=1
   EndDo
Return 