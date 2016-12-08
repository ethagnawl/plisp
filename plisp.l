%{
    #include "y.tab.h"
    extern int yylval;
%}

%%

[0-9]+	{
            yylval = atoi(yytext);
            return INTEGER;
        }
[-+\n]  return *yytext;
[ \t]   ; /* skip whitespace */
[()]    ; /* ignore parens - for now */
.	yyerror("invalid character");
%%

int yywrap(void) {
    return 1;
}
