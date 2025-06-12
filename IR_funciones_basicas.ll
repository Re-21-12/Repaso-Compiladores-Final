; ========== CARGA DE MEMORIA ==========
%value = load i32, i32* %ptr    ; cargar valor desde memoria

; ========== COMPARACIONES ADICIONALES ==========
%cmp1 = icmp eq i32 %a, %b     ; igual (==)
%cmp2 = icmp ne i32 %a, %b     ; no igual (!=)
%cmp3 = icmp slt i32 %a, %b    ; menor que (<)
%cmp4 = icmp sle i32 %a, %b    ; menor o igual (<=)
%cmp5 = icmp sge i32 %a, %b    ; mayor o igual (>=)

; ========== OPERACIONES LÓGICAS ==========
%and_result = and i1 %bool1, %bool2    ; AND lógico
%or_result = or i1 %bool1, %bool2      ; OR lógico
%not_result = xor i1 %bool, true       ; NOT lógico

; ========== CONVERSIONES DE TIPO ==========
%int_to_float = sitofp i32 %int_val to float    ; int a float
%float_to_int = fptosi float %float_val to i32  ; float a int
%extend = sext i8 %small_int to i32             ; extender signo
%truncate = trunc i32 %big_int to i8            ; truncar

; ========== OPERACIONES CON FLOTANTES ==========
%fadd_result = fadd float %f1, %f2      ; suma flotante
%fsub_result = fsub float %f1, %f2      ; resta flotante
%fmul_result = fmul float %f1, %f2      ; multiplicación flotante
%fdiv_result = fdiv float %f1, %f2      ; división flotante
; ========== OPERACIONES ARITMÉTICAS BÁSICAS ==========
%add = add i32 %a, %b                     ; suma
%sub = sub i32 %a, %b                     ; resta
%mul = mul i32 %a, %b                     ; multiplicación
%div = sdiv i32 %a, %b                    ; división entera
; ========== COMPARACIONES FLOTANTES ==========
%fcmp1 = fcmp oeq float %f1, %f2        ; flotante igual
%fcmp2 = fcmp ogt float %f1, %f2        ; flotante mayor que
%fcmp3 = fcmp olt float %f1, %f2        ; flotante menor que
; ========== COMPARACIONES ENTERAS ==========
%cmp1 = icmp eq i32 %f1, %f2        ; entero igual
%cmp2 = icmp sgt i32 %f1, %f2        ; entero mayor que
%cmp3 = icmp slt i32 %f1, %f2        ; entero menor que
; ========== ARRAYS Y PUNTEROS ==========
%arr = alloca [10 x i32]                 ; array de 10 enteros
%ptr = getelementptr [10 x i32], [10 x i32]* %arr, i32 0, i32 5  ; acceso al índice 5

; ========== FUNCIONES ==========
define i32 @mi_funcion(i32 %param1, i32 %param2) {
    ; código de la función
    ret i32 %resultado
}

%call_result = call i32 @mi_funcion(i32 %arg1, i32 %arg2)  ; llamada a función

; ========== CONDICIONALES COMPLEJAS ==========
; Equivalente a: if (a > b && c < d) goto L1 else goto L2
%cond1 = icmp sgt i32 %a, %b
%cond2 = icmp slt i32 %c, %d
%final_cond = and i1 %cond1, %cond2
br i1 %final_cond, label %L1, label %L2

; ========== SWITCH/CASE ==========
switch i32 %valor, label %default [
    i32 1, label %case1
    i32 2, label %case2
    i32 3, label %case3
]

; ========== PHI NODES (para fusionar valores) ==========
L3:
%resultado = phi i32 [ %valor1, %L1 ], [ %valor2, %L2 ]
; si venimos de L1, usa %valor1; si venimos de L2, usa %valor2

; ========== TIPOS BÁSICOS ==========
; i1    - booleano (1 bit)
; i8    - byte (8 bits)
; i16   - short (16 bits)
; i32   - int (32 bits)
; i64   - long (64 bits)
; float - flotante 32 bits
; double - flotante 64 bits
; void  - sin retorno