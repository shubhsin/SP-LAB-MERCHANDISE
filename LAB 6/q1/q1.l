%{
#include "y.tab.h"
extern yylval; 
%}
%%
[0-9]+ {yylval=atoi(yytext); return OP;}
[\n] {return ENTER;}
[+] {return PLUS;}
[-] {return MINUS;}
[\*] {return MUL;}
[\/] {return DIV;}
. {return ERROR;}
%%
