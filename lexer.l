%{
#include "parser.tab.h"
%}
%option noyywrap

%%

[0] { return ZERO; }
[1] { return ONE; }
\n
.

%%
