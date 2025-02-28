# Debe realizar un programa que indique si el triangulo que se le dio es rectangulo o no
# A usted le daran los tres lados del triangulo, pero estos pueden venir en cualquier orden
# Es decir, usted NO puede pedir que la hipotenusa venga en cierto registro

# Valor: 2 puntos
# Input:
# t0 - lado, t1 - lado, t2 - lado
# Output:
# print en pantalla indicando si es rectangulo o no





    .data

si:     .asciiz     "si es rectangulo"
no:     .asciiz     "no es rectangulo"

    .text

li t0 3                 # lado
li t1 5                 # lado
li t2 4                 # lado


# escriba
# su codigo
# aqui

mul t3 t0 t0
mul t4 t1 t1
mul t5 t2 t2

add t6 t3 t4
beq t6 t5 es_rectangulo
add t6 t3 t5
beq t6 t4 es_rectangulo
add t6 t4 t5
beq t6 t3 es_rectangulo

j no_rectangulo

es_rectangulo:
li a0 4
la a1 si
ecall 
j fin

no_rectangulo:
li a0 4
la a1 no
ecall

fin: 
li a0 9
ecall

