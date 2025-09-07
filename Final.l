%{
#include <stdio.h>
%}

letter      [a-zA-Z]
digit       [0-9]

keyword     auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while

arithmetic  "+"|"-"|"*"|"/"|"%"
logical     "&&"|"||"|"!"
assignment  "="|"+="|"-="|"*="|"/="|"%="
relational  "=="|">"|">="|"<"|"<="|"!="
incdecop    "++"|"--"
bitwise     "&"|"|"|"^"|"<<"|">>"|"~"

single_line "//".*
multi_line  "/*"([^*]|\*+[^*/])*\*+"/"

vowel       [aeiouAEIOU]
consonant   [a-zA-Z]

integer     {digit}+
float       {digit}+"."{digit}+
character   \'([^\\\n]|(\\.))\'
string      \"([^\\\n]|(\\.))*\"

%%

{keyword}                   { printf("\n%s is a keyword", yytext); }
{letter}({letter}|{digit})* { printf("\n%s is an identifier", yytext); }
{digit}({letter}|{digit})*  { printf("\n%s is not a valid identifier", yytext); }

{integer}                   { printf("\n%s is an integer constant", yytext); }
{float}                     { printf("\n%s is a floating-point constant", yytext); }
{character}                 { printf("\n%s is a character constant", yytext); }
{string}                    { printf("\n%s is a string constant", yytext); }

{arithmetic}                { printf("\n%s is an arithmetic operator", yytext); }
{logical}                   { printf("\n%s is a logical operator", yytext); }
{assignment}                { printf("\n%s is an assignment operator", yytext); }
{relational}                { printf("\n%s is a relational operator", yytext); }
{incdecop}                  { printf("\n%s is an increment/decrement operator", yytext); }
{bitwise}                   { printf("\n%s is a bitwise operator", yytext); }

{single_line}               { printf("\n%s is a single-line comment", yytext); }
{multi_line}                { printf("\n%s is a multi-line comment", yytext); }

{vowel}                     { printf("\n%s is a vowel", yytext); }
{consonant}                 { printf("\n%s is a consonant", yytext); }

%%

int yywrap() { return 0; }

int main() {
    printf("Enter some input (Ctrl+D to end):\n");
    yylex();
    return 0;
}
