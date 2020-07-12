%{
#include <time.h>
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include <ctype.h>
void yyerror(char *);
int yylex();
%}
%start        type
%token         yap
%token         iken                   
%token         icin                     
%token         dolu                     
%token         bos                      
%token          ve                       
%token          veya                  
%token          esit
%token          nesit
%token        eger                   
%token        aksiTakdirde            
%token        print                    
%token        exit                    
%token        void                    
%token        return
%left         ','
%left         '('
%left          ')'
%left          ';'
%token          yorum
%token           Hoca
%token         Derslik
%token          saat 
%token         oyleyse
%token         number
%token         esitlik


%%

type         :derslik        {$$ = $1;}                                    
             |saat           {$$ = $1;}   
             |Hoca           {$$ = $1;}

statement    : Conditional   {$$ = $1;} 
             | Relational    {$$ = $1}

Conditional  : eger          {$$ = $1; printf("eger\n");} 
             | veya          {$$ = $1; printf("veya\n");}
             |aksiTakdirde   {$$ = $1; printf("aksiTakdirde\n");}

Relational   : esit          {updateSymbolVal($1,$1);}
             | nesit         {printf("nesit");}

derslik      : Hoca          {$$ = $1; printf("Hoca\n");}
             |number         {$$ = $1;}


zaman        : saat          {$$ = $1 ':' $1 ':' $1;}
             |minutes        {$$ = $1 ':' $1;}
             |seconds        {$$ = $1;}

minutes     :number          {$$ = $1 ':' $1;}
            | number         {$$ = $1}

seconds     : number         {$$ = $1;} 

iken Statement     :iken '(' statement ')' '{' '}' {(printf("parsing succesfull");}

yap statement      : yap 
                   | iken 

DoluMuBosMu        : dolu   {$$ = $1; printf (dolu\n);}
                   | bos    {$$ = $1; printf (bos\n);}

%%
#include "lex.yy.c"
void yyerror(char *s){
fprintf(stderr,"%sn",s);
}
int main(void){
yyparse();
return 0;
}
