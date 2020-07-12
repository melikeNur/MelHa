MelHa: lex.yy.c y.tab.c
	  gcc -g lex.yy.c  y.tab.c -o MelHa
lex.yy.c: MelHa.l
	 lex MelHa.l
y.tab.c: MelHa.y
	 yacc -d MelHa.y
clean: 
	 rm -rf lex.yy.c y.tab.c y.tab.h MelHa MelHa.dSYM 
