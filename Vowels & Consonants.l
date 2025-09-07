%{
#include<stdio.h>
%}

vowel     [aeiouAEIOU]
consonant [a-zA-Z] 

%%

{vowel}       { printf("\n%s is a vowel", yytext); }
{consonant}   { printf("\n%s is a consonant", yytext); }

%%

int yywrap() { return 0; }

int main() {
    yylex();
}
