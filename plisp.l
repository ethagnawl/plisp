%{
    #include "y.tab.h"
    extern int yylval;
%}

%%

\(      return OPAREN;
[0-9]+	{
            yylval = atoi(yytext);
            return INTEGER;
        }
[-+\n]  return *yytext;
[ \t]   ; /* skip whitespace */
\)      return CPAREN;
.	yyerror("invalid character");
%%

int yywrap(void) {
    return 1;
}
