%{

#include <stdio.h>

%}

%option yylineno
%option noyywrap

DIGITS   [0-9]+
STRLIT  [\"a-zA-Z][a-zA-Z0-9\"]*

%%

[ \t\n]+        { /* skip */ }
[TRUE]          { return 1; }
[FALSE]         { return 2; }
[NULL]          { return 3; }
{STRLIT}	    { return 4; }
{DIGITS}        { return 6; }
\{              { return '{'; }
\}              { return '}'; }
\[              { return '['; }
\]              { return ']'; }
\,              { return ','; }
\:              { return ':'; }
.		        { printf("lexical error on line %d\n", yylineno); }

%%