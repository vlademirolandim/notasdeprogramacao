
PROCEDURE Main

    ? " 1 => " , HB_TokenGet( ";2;3;4", 1, ";" ) , " It shows ''"
    ? " 2 => " , HB_TokenGet( ";2;3;4", 2, ";" ) , " It shows '2'"

    ? " 3 => " , HB_TokenGet( "2*3*4", 1, "*" ) , " It shows '2'"
    ? " 4 => " , HB_TokenGet( "2 3 4", 2, " " ) , " It shows '3'"


    RETURN
