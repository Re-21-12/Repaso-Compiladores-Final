Codigo intermedio

1. Alto nivel: AST
2. Nivel Medio: TAC
3. Bajo nivel: Código ensamblador

Optimizacion codigo intermedio

1. Locales
2. Globales
3. Interprocedurales
4. Independientes

Tecnicas de optimizacion

1. Eliminacion de codigo muerto
2. Propagacion de constantes
3. Optimizacion de bucles
4. Eliminacion de subexpresiones comunes

Generacion de codigo ensamblador

1. Traduccion desde IR
2. Asignacion de registros
3. Optimizacion a nivel de ensamblador

GCC
Usa GIMPLE y RTL. Compilador estandar de Linux

LLVM
usa LLVM IR para multiples lenguajes de entrada y varias arquitecturas de salida

JVM
Usa Bytecode como representacion intermedia

Garbage collection
Gestión automática de memoria. Recolecta objetos no referenciados.

JVM
Serial Collector: un solo hilo
Parallel Collector: Varios hilos
Concurrent Collectors: Alta disponibilidad
