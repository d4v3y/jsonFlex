%{

/*
    Davey Anguiano
    Clinton Jeffery
    CS 210
    01/29/20
*/

#include <stdio.h>

%}

%option yylineno
%option noyywrap

DIGITS   [#0-9a-zA-Z.\-\+ ]+
STRLIT   [ \-\\\_a-zA-Z0-9\".\/]*

%%

[ \t\n]+        { /* skip */ }  // Ignore whitespace
{STRLIT}	    { return 4; }   // String token
{DIGITS}        { return 6; }   // Literial digit
'null'          { return 3; }
'true'          { return 1; }
'false'         { return 2; }   
\{              { return '{'; }
\}              { return '}'; }
\[              { return '['; }
\]              { return ']'; }
\,              { return ','; }
\:              { return ':'; }
.		        { printf("lexical error on line %d\n", yylineno); }

%%