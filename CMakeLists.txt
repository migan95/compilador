cmake_minimum_required(VERSION 3.24)
project(Compilador)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_C_STANDARD 11)

add_executable(Compilador main.cpp analizador_lexico/gestionErrores.c analizador_lexico/gestionErrores.h analizador_lexico/Definiciones.h analizador_lexico/TablaSimbolos.h analizador_lexico/TablaSimbolos.c analizador_lexico/main.c analizador_lexico/lex.yy.h analizador_lexico/lex.yy.c analizador_lexico/ArbolBinario.h analizador_lexico/ArbolBinario.c analizador_lexico/AnalizadorSintactico.h analizador_lexico/AnalizadorSintactico.c)
