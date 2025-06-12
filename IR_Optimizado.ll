define i32 @main() {
entry:
  ; reserva espacio en memoria
  %t1 = alloca i32
  %t2 = alloca i32
  %t3 = alloca i32
  %a = alloca i32
  %b = alloca i32
  %c = alloca i32
  %result = alloca i32
  
  ; escribe en memoria
  store i32 5, i32* %t1 ; t1 = 5
  store i32 3, i32* %t2 ; t2 = 3
  store i32 2, i32* %t3 ; t3 = 2

  ; lee los valores de t1, t2, t3 y los almacena en a, b, c
  
  ; a = t1
  ; Crea un temporal %1 y carga el t1 luego asigna el valor de %1 a a
  %1 = load i32, i32* %t1
  store i32 %1, i32* %a

  ; b = t2, c = t3
  %2 = load i32, i32* %t2
  store i32 %2, i32* %b
  
  ; c = t3
  %3 = load i32, i32* %t3
  store i32 %3, i32* %c
  
  ; t4 = a > b
  %4 = load i32, i32* %a
  %5 = load i32, i32* %b
  %t4 = icmp sgt i32 %4, %5
  br i1 %t4, label %L1, label %L2

L1:
  ; t5 = a + b
  %6 = load i32, i32* %a ; t6 = a
  %7 = load i32, i32* %b ; t7 = b
  %t5 = add i32 %6, %7 ; t5 = t6 + t7 
  
  ; t6 = t5 * c
  %8 = load i32, i32* %c
  %t6 = mul i32 %t5, %8
  
  ; t7 = a / b
  %9 = load i32, i32* %a
  %10 = load i32, i32* %b
  %t7 = sdiv i32 %9, %10
  
  ; t8 = c * c
  %11 = load i32, i32* %c
  %12 = load i32, i32* %c
  %t8 = mul i32 %11, %12
  
  ; t9 = t6 - t7, t10 = t9 + t8
  %t9 = sub i32 %t6, %t7
  %t10 = add i32 %t9, %t8
  
  ; result = t10
  store i32 %t10, i32* %result
  br label %L3

L2:
  ; t11 = b - c
  %13 = load i32, i32* %b
  %14 = load i32, i32* %c
  %t11 = sub i32 %13, %14
  
  ; t12 = t11 / a
  %15 = load i32, i32* %a
  %t12 = sdiv i32 %t11, %15
  
  ; result = t12
  store i32 %t12, i32* %result
  br label %L3

L3:
 ; result = 
  %16 = load i32, i32* %result
  ret i32 %16
}