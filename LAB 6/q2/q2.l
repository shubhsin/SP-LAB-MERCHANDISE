%{
#include "y.tab.h"
%}
%%
"if(){" {return ifstart;}
"}" {return ifend;}
[\n] {return ENTER;}

%%

