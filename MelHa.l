%{
#include <time.h>
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include "y.tab.h"  
void yyerror(char *);
int yylex();
%}
open_barcket           (\()
close_bracket           (\))

Relational Expressions             esit,nesit
Conditional Expressions            eger , aksiTakdirde,veya 



%%
"yap"                       {return DO;}
"iken"                     {return WHILE;}
"icin"                      {return FOR;} 
"dolu"                     {return TR;}
"bos"                      {return FL;}
"DoluMuBosMu"              {return boolean;}
"ve"                       {return AND;}
"veya"                       {return OR;}
"esit"                       {return EQ;}
"esitlik"                    {return ==;}
"nesit"                      {return NEQ;}
"eger"                     {return IF;}
"oyleyse"                  {return THEN;}
"aksiTakdirde"              {return ELSE;}
"print"                    {return print;}
"exit"                     {return exit_command;}
"void"                    {return VOID;}
"return"                  {return RETURN;}
","                        {return seperator;}
"yorum"                      {return comment;}
"("                        {return open_bracket;}
")"                        {return close_bracket;}
";"                         {return continue;}
[0-9]+                       {return yyval = atoi(yytext);return Number; }
[a-zA-Z]+                 {yylval.id=yytext[0]; return Hoca;}
[A-Z][0-9]+               {return yylval.num = atoi(yytext); return Derslik;}
^([0-1]?[0-9]|2[0-3]):[0-5][0-9]   {yylval.num = atoi(yytext); return saat;}
[ \t\n]                    ;
[-+=;]                     {return yytext[0];}
.                       {ECHO; yyerror ("Beklenmedik Deger");}
                     
%%
int yywrap (void) {return 1;}
