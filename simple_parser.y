%{
#include <stdio.h>
extern int yylex();
void yyerror(const char *s) { fprintf(stderr, "Error: %s\n", s); }
%}

%token ZERO ONE UNKNOWN
%nonassoc ZERO ONE

%%

s:
    /* empty */     { printf("...nada..."); }
    | ZERO s ZERO   { printf("ZsZ!\n"); }
    | ONE s ONE     { printf("OsO!\n"); }
    | ZERO          { printf("Z\n"); }
    | ONE           { printf("O\n"); }
    ;

%%

int main() {
    yyparse();
    return 0;
}

