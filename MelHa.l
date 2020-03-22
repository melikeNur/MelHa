%{
#include "y.tab.h"
#include<stdio.h>
#include<stdlib.h>
#include<string.h>  
void yyerror(char *);
int yylex();
%}
%%
"yap"                       {return DO;}
"iken"                     {return WHILE;}
"icin"                      {return FOR;} 
"dolu"                     {return TR;}
"bos"                      {return FL;}
"&&"                       {return AND;}
"||"                       {return OR;}
"=="                       {return EQ;}  
"eger"                     {return if;}
"aksiTakdirde"              {return else;}
"print"                    {return print;}
"exit"                     {return exit_command;}
"void"                    {return VOID;}
"return"                  {return RETURN;}  
[a-zA-Z]+                 {yylval.id=yytext[0]; return Hoca;}
[A-Z][0-9]+               {return yylval.num = atoi(yytext); return Derslik;}
^([0-1]?[0-9]|2[0-3]):[0-5][0-9]   {yylval.num = atoi(yytext); return saat;}
[ \t\n]                    ;
[-+=;]                     {return yytext[0];}
.                       {ECHO; yyerror ("Beklenmedik Deger");}
                     
%%
int yywrap (void) {return 1;}
