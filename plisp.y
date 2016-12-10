%{
    #include <stdio.h>
    int yylex(void);
    void yyerror(char *);
%}


%token INTEGER OPAREN CPAREN

%%

program:
        program OPAREN expr CPAREN '\n' { printf("%d\n", $3); }
        |
        ;

expr:
        INTEGER                   { $$ = $1; }
        | '+' expr expr           { $$ = $2 + $3; }
        | '-' expr expr           { $$ = $2 - $3; }
        ;

%%

void yyerror(char *s) {
    fprintf(stderr, "%s\n", s);
}

int main(void) {
    yyparse();
    return 0;
}
