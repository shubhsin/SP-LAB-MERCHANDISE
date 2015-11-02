%{
#include "y.tab.h"
extern yylval;
%}
%%
[0-9]+ {yylval=atoi(yytext); return NUMBER;}
[a-z] {yylval=yytext[0]-'a'; return NAME;}
'$' {return 0;}
\n {return ENTER;}
. {return yytext[0];}

