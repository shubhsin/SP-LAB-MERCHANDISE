%{
#include<stdio.h>
int ubltable[26];
%}
%token NAME
%token NUMBER
%token ENTER
%left '+' '-'
%left '*' '/'
%% 
stmt_list: stmt ENTER 
| stmt_list stmt ENTER
;
stmt: NAME '=' expr {ubltable[$1]=$3;}
| expr {printf("=%d\n",$1);}
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
