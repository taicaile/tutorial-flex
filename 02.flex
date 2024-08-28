%%
username    printf( "%s", getlogin() );
%%
int main( )
{
    yylex();
}
int yywrap(){}
