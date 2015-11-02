%{
#include<stdio.h>
double ubltable[26];
%}
%union { double dval; int ublno;}
%token<ublno> NAME
%token<dval> NUMBER
%token ENTER
%left '+' '-'
%left '*' '/'
%type <dval> expr
%% 
stmt_list: stmt ENTER 
| stmt_list stmt ENTER
;
stmt: NAME '=' expr {ubltable[$1]=$3;}
| expr {printf("=%f\n",$1);}
;
expr: expr '+' expr {$$=$1+$3;}
| expr '-' expr {$$=$1-$3;}
| expr '*' expr {$$=$1*$3;}
| expr '/' expr {$$=$1/$3;}
| '(' expr ')'  {$$=$2;}
| NUMBER
| NAME {$$=ubltable[$1];}
;
%%
main(){
yyparse();
}
yyerror(){
printf("Error\n");
}
