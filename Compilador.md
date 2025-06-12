# Compiladores - Resumen

## Fases de compilación

### 1. Lenguaje fuente

### 2. Fases de análisis

#### a. Analizador léxico (Scanner)

- **Contiene:** Manejo de errores
- **Función:** Convertir el código fuente en una secuencia de tokens
  1. Identificadores
  2. Delimitadores
  3. Palabras clave
  4. Operadores

#### b. Analizador sintáctico (Parsing)

- **Contiene:** Manejo de errores
- **Función:** Organiza los tokens en un árbol sintáctico

#### c. Analizador semántico

- **Contiene:**
  - Tabla de símbolos
  - Manejo de errores
- **Función:** Verificar que tenga sentido semántico
  1. Tipos de datos
  2. Declaraciones
  3. Variables

### 3. Fases de síntesis

#### a. Generador de código intermedio

- **Función:** Convertir el árbol sintáctico en código de tres direcciones TAC (Three Address Code)

#### b. Optimización de código

- **Función:** Mejorar el código intermedio para que sea más eficiente

#### c. Generación de código máquina

- **Función:** Traducir el código intermedio optimizado a código máquina específico para la arquitectura de destino

### 4. Lenguaje objeto

---

## Componentes del compilador

### Manejo de errores

- **Modo pánico:** Obvia hasta encontrar un token válido
- **Trata de arreglar la entrada:** Borrar, insertar o reemplazar un carácter extraño

### Tabla de símbolos

### Generación de código

### Tabla de identificadores

#### Tipos de almacenamiento

- Fija
- Dinámica

#### Dirección de memoria

- Los valores que referencian a esta variable deben saber dónde encontrar el valor

#### Consideraciones en la tabla de símbolos

- **Constantes**
- **Funciones de librería**
- **Palabras reservadas**
  - Requiere de un patrón para identificar cuando es una palabra clave
  - No pueden ser usadas como identificadores

---

## Estructura interna del compilador

### Frontend

1. Incluye las fases de análisis léxico, sintáctico y semántico
2. Se encarga de entender el código fuente y construir una representación intermedia

### Optimizador

1. Recibe el código intermedio y aplica técnicas de optimización para mejorar su eficiencia

### Backend

1. Incluye la generación de código máquina
2. Se encarga de producir el código ejecutable para la arquitectura de destino

### Tabla de símbolos

1. Una estructura de datos que almacena información sobre las variables, funciones, tipos, etc.

### Manejo de errores

1. Detecta y reporta errores en todas las fases del proceso de compilación
