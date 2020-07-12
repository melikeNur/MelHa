
MelHa: lex.yy.c.tab.c
       gcc -g lex.yy.c y.tab.c -o Melha
lex.yy.c: y.tab.c MelHa.l
         lex MelHa.l
clean: 
      rm -rf lex.yy.c y.tab.c y.tab.h MelHa MelHa.dSYM 

