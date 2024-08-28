%{
/* 识别关键字，while，if，else */
%}
%%
while|if|else {printf("%s keywords in C\n", yytext); }
%%
int main( )
{
yylex();
}
int yywrap(){}
