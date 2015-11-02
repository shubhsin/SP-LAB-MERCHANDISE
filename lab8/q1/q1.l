%{
#include "y.tab.h"
%}
%%
[0-9]+\.[0-9]+ {yylval.dval=atof(yytext); return NUMBER;}
[a-z] {yylval.ublno=yytext[0]-'a'; return NAME;}
'$' {return 0;}
\n {return ENTER;}
. {return yytext[0];}

