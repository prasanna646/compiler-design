%{
#include<stdio.h>
%}

single_line   "//".*
multi_line    "/*"([^*]|\*+[^*/])*\*+"/"

%%

{single_line}    { printf("\n%s is a single-line comment", yytext); }
{multi_line}     { printf("\n%s is a multi-line comment", yytext); }

%%

int yywrap() { return 0; }

int main() {
    yylex();
}
