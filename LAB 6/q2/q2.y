%{
#include<stdio.h>
int ctr=0;
%}
%token ifstart ifend ENTER
%%
S: P 
P: ifstart P ifend {ctr++;}
| ; 
%%
main(){
	yyparse();
	printf("Count:%d",ctr);
}
yyerror(){
	printf("Invalid\n");
}

