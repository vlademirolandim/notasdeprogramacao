
PROCEDURE MAIN

     LOCAL h1 := {1=>{"ID_SETOR"=>"LIA", "DE"=>"LIA"}} 
     LOCAL h2 := {"1"=>{"ID_SETOR"=>"LIA", "DE"=>"LIA"}} 


     ? hb_JsonEncode( h1 )
     ? hb_JsonEncode( h2 )

     RETURN
