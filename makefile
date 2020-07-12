<<<<<<< HEAD
MelHa: lex.yy.c y.tab.c
	  gcc -g lex.yy.c  y.tab.c -o MelHa
lex.yy.c: MelHa.l
	 lex MelHa.l
y.tab.c: MelHa.y
	 yacc -d MelHa.y
clean: 
	 rm -rf lex.yy.c y.tab.c y.tab.h MelHa MelHa.dSYM 
=======
MelHa: lex.yy.c.tab.c
       gcc -g lex.yy.c y.tab.c -o Melha
lex.yy.c: y.tab.c MelHa.l
         lex MelHa.l
clean: 
      rm -rf lex.yy.c y.tab.c y.tab.h MelHa MelHa.dSYM 
>>>>>>> ec40879215adfe1be758c40d87684bc857b2cb0e
