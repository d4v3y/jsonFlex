%{
/* The quick brown fox jumped the lazy yellow dog.
All Gaul is divided into three parts. */
#include <stdio.h>
%}

%option yylineno
%option noyywrap

%%

[ \t\n]+    { /* skip */ }
[a-zA-Z]+	{ return 4; }
"{"         { return 123; }
"}"         { return 125; }
";"         { return 59; }
":"         { return 58; }
%%