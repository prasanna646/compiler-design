%{
#include<stdio.h>
%}

letter  [a-zA-Z]
digit   [0-9]

%%

{letter}({letter}|{digit})*   { printf("\n%s is an identifier", yytext); }
{digit}({letter}|{digit})*    { printf("\n%s is not a valid identifier", yytext); }

%%

int yywrap() { return 0; }

int main() {
    yylex();
}
f