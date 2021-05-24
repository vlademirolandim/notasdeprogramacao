
Esse documento tem por objetivo identificar o comportamento de uma funcao definida 
dentro de uma lib e o seu uso dentro do programa principal

Programas
---------

* main.prg -> programa principal ( Usa funcaoA() )
* mylib.prg -> lib usada por main.prg ( libmylib.a )

* simbolo definido __FUNCAO_A__ que, se definido, inclui a funcaoA() dentro de mylib
Nota: __FUNCAO_A__ , se definido, define a funcaoA() dentro de mylib.prg

Quero saber :
-------------

* se eu definir se eu preciso definir a __FUNCAO_A__ no programa main.prg também.


Caso 1
------

   main -> com __FUNCAO_A__ 
   mylib-> sem __FUNCAO_A__

   del main.exe
   del libmylib.a
  
   hbmk2 mylib -hblib 
   hbmk2 main.prg -d__FUNCAO_A__ -L. -lmylib
   main
   
   Conclusão : __FUNCAO_A__ ausente
   
Caso 2 : Vamos inverter
------   --------------

   main -> sem __FUNCAO_A__ 
   mylib-> com __FUNCAO_A__

   del main.exe
   del libmylib.a
  
   hbmk2 mylib -hblib -d__FUNCAO_A__ 
   hbmk2 main.prg -L. -lmylib
   main
   
   Conclusão : __FUNCAO_A__ DEFINIDO AQUI  
   
Conclusão
---------

As definições devem ser feitas a nível de LIB   
   
