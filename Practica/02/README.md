En este proyecto construiremos gradualmente un conjunto de chips que realizan sumas aritméticas, culminando con la construcción de una ALU: el chip ALU del ordenador Hack. Todos los chips construidos en este proyecto son estándar, excepto la ALU, que varía de una arquitectura de ordenador a otra. Nos ayudaremos de algunos chips listados en el proyecto 1

## HalfAdder
Es un circuito lógico digital que hace la suma de dos números binarios de un bit. Para desarrollar su código debemos analizar su tabla de verdad, se puede observar que sum se comporta comporta como una compuerta XOR y carry como una AND

## FullAdder
Este circuito lógico digital es un sumador de tres entradas, las dos primeras entradas (A y B) y la tercera entrada es un acarreo de entrada como C-IN. El acarreo de salida se designa como C-OUT y la salida normal se designa como S que es SUM. C-OUT se pone en alto cuando más de una entrada esta alta.

## Add16
En este circuito sumamos dos entradas de 16 bits, por lo que es esencial utilizar varios chips FullAdder para sumar los bits de dos entradas y el carry nos ayuda a dar la opción que se tiene que llevar a la siguiente operación

## Inc16
Este circuito es un incrementador de 16 bits que aumenta la entrada, la cual es un número de 16 bits en unos. Se tomó ADD16 y una constante b cuyo primer valor se coloca como true y el resto en false.
## ALU
Es un circuito digital en el que se realiza operaciones aritméticas como la suma o la resta y de operaciones lógicas como AND y OR. Se utilizaron MUX16 para zx y zy, la anterior con NOT para nx y ny. Para la parte aritmética un ADD, AND y otra vez MUX y por último compuertas OR y OR8WAY para zr.
