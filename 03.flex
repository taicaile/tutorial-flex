%{
int num_lines = 0, num_chars = 0; /*note this line is intended*/
%}
%%
\n      ++num_lines; ++num_chars;
.       ++num_chars;
%%

int main()
{
    yylex();
    printf( "# of lines = %d, # of chars = %d\n", num_lines, num_chars );
}
int yywrap(){}
