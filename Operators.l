%{
#include<stdio.h>
%}

arithmetic   "+"|"-"|"*"|"/"|"%"
logical      "&&"|"||"|"!"
assignment   "="|"+="|"-="|"*="|"/="|"%="
relational   "=="|">"|">="|"<"|"<="|"!="
incdecop     "++"|"--"
bitwise      "&"|"|"|"^"|"<<"|">>"|"~"

%%

{arithmetic}   { printf("\n%s is an arithmetic operator", yytext); }
{logical}      { printf("\n%s is a logical operator", yytext); }
{assignment}   { printf("\n%s is an assignment operator", yytext); }
{relational}   { printf("\n%s is a relational operator", yytext); }
{incdecop}     { printf("\n%s is an increment/decrement operator", yytext); }
{bitwise}      { printf("\n%s is a bitwise operator", yytext); }

%%

int yywrap() { return 0; }

int main() {
    yylex();
}
