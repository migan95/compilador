%{
#include <stdio.h>
#include <stdlib.h>
%}

%token ENTERO CARACTER MOSTRAR ID

%%

programa: inicio cuerpo fin
        ;

inicio: "inicio" "(" ")" "{"
        ;

cuerpo: declaraciones asignaciones llamadas
        ;

declaraciones: ENTERO declaracion_entero ";"
             | CARACTER declaracion_caracter ";"
             | declaraciones ENTERO declaracion_entero ";"
             | declaraciones CARACTER declaracion_caracter ";"
             ;

declaracion_entero: ID
                   ;

declaracion_caracter: ID
                     ;

asignaciones: ID "=" expresion ";"
            | asignaciones ID "=" expresion ";"
            ;

expresion: ID
         | CARACTER
         ;

llamadas: MOSTRAR "(" expresion ")" ";"
        | llamadas MOSTRAR "(" expresion ")" ";"
        ;

fin: "}"
    ;

%%

int main() {
    yyparse();
    return 0;
}

int yyerror(char *msg) {
    printf("Error: %s\n", msg);
    exit(1);
}
