#include <stdio.h>
#include <stdlib.h>
#include "sintactico.tab.h"

// Define global variables to store the values of variables
int enteros[100];
char caracteres[100];

int main() {
    // Call the Bison-generated parser
    yyparse();
    return 0;
}

// Implement the Bison-defined functions

int yyerror(char *msg) {
    printf("Error: %s\n", msg);
    exit(1);
}

void asignar_entero(char *id, int valor) {
    int index = atoi(&id[1]);
    enteros[index] = valor;
}

void asignar_caracter(char *id, char valor) {
    int index = atoi(&id[1]);
    caracteres[index] = valor;
}

int obtener_entero(char *id) {
    int index = atoi(&id[1]);
    return enteros[index];
}

char obtener_caracter(char *id) {
    int index = atoi(&id[1]);
    return caracteres[index];
}

void mostrar_entero(int valor) {
    printf("%d\n", valor);
}

void mostrar_caracter(char valor) {
    printf("%c\n", valor);
}
