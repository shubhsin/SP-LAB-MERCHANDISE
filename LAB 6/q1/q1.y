%{
#include<stdio.h>
%}
%token OP ENTER ERROR PLUS MINUS MUL DIV
%%
S: OP PLUS OP ENTER {$$=$1+$3; printf("%d",$$);}
|OP MINUS OP ENTER {$$=$1-$3; printf("%d",$$);}
|OP MUL OP ENTER {$$=$1*$3; printf("%d",$$);}
|OP DIV OP ENTER {$$=$1/$3; printf("%d",$$);}
%%
main(){
	yyparse();
}
yyerror(){
	printf("Invalid\n");
}
