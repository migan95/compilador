%{
#include "sintactico.tab.h"
%}

%%
"entero"    { return ENTERO; }
"caracter"  { return CARACTER; }
"mostrar"   { return MOSTRAR; }
"="         { return '='; }
";"         { return ';'; }
"("         { return '('; }
")"         { return ')'; }
"{"         { return '{'; }
"}"         { return '}'; }

[a-zA-Z][a-zA-Z0-9]* {
    yylval.strval = strdup(yytext);
    return ID;
}

\".*\" {
    yylval.strval = strdup(yytext);
    return CARACTER;
}

[\t\r\n]    { /* ignore whitespace */ }
.           { printf("Unrecognized character: %s\n", yytext); }

%%

int yywrap() {
    return 1;
}
