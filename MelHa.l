%{
#include <time.h>
<<<<<<< HEAD
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


=======
#include "y.tab.h"
#include<stdio.h>
#include<stdlib.h>
#include<string.h>  
void yyerror(char *);
int yylex();
%}

//brackets
open_bracket           (\()
close_bracket           (\))

//conditional statements
yap               yap
iken              iken
icin              icin
eger              eger
aksiTakdirde     aksiTakdirde

//comment
****      

//logical operators
AND           (\&&)
OR             (\||)
EQ             (\==)

//null statements
dolu
bos

//Variables and constants
String     [a-zA-Z]+
Hoca       [a-zA-Z]+
Derslik   [A-Z][0-9]+
saat         ^([0-1]?[0-9]|2[0-3]):[0-5][0-9]
>>>>>>> ec40879215adfe1be758c40d87684bc857b2cb0e

%%
"yap"                       {return DO;}
"iken"                     {return WHILE;}
"icin"                      {return FOR;} 
"dolu"                     {return TR;}
"bos"                      {return FL;}
<<<<<<< HEAD
"DoluMuBosMu"              {return boolean;}
"ve"                       {return AND;}
"veya"                       {return OR;}
"esit"                       {return EQ;}
"esitlik"                    {return ==;}
"nesit"                      {return NEQ;}
"eger"                     {return IF;}
"oyleyse"                  {return THEN;}
"aksiTakdirde"              {return ELSE;}
=======
"&&"                       {return AND;}
"||"                       {return OR;}
"=="                       {return EQ;}  
"eger"                     {return if;}
"aksiTakdirde"              {return else;}
>>>>>>> ec40879215adfe1be758c40d87684bc857b2cb0e
"print"                    {return print;}
"exit"                     {return exit_command;}
"void"                    {return VOID;}
"return"                  {return RETURN;}
","                        {return seperator;}
<<<<<<< HEAD
"yorum"                      {return comment;}
"("                        {return open_bracket;}
")"                        {return close_bracket;}
";"                         {return continue;}
[0-9]+                       {return yyval = atoi(yytext);return Number; }
=======
"****"                      {return comment;}
"("                        {return open_bracket;}
")"                        {return close_bracket;}
";"                         {return continue;}
[a-zA-Z]+                  {return String;}
>>>>>>> ec40879215adfe1be758c40d87684bc857b2cb0e
[a-zA-Z]+                 {yylval.id=yytext[0]; return Hoca;}
[A-Z][0-9]+               {return yylval.num = atoi(yytext); return Derslik;}
^([0-1]?[0-9]|2[0-3]):[0-5][0-9]   {yylval.num = atoi(yytext); return saat;}
[ \t\n]                    ;
[-+=;]                     {return yytext[0];}
.                       {ECHO; yyerror ("Beklenmedik Deger");}
                     
%%
int yywrap (void) {return 1;}
