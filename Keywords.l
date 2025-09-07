%{
#include<stdio.h>
%}

keyword auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while

%%

{keyword}   { printf("\n%s is a keyword", yytext); }

%%

int yywrap() { return 0; }

int main() {
    yylex();
}
