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

# Proyecto 03

## BIT
Un componente conocido como Bit o celda binaria se utiliza para almacenar un único bit de información, que puede ser un 0 o un 1. Este componente tiene una interfaz que incluye un pin de entrada para recibir el bit de datos, un pin de carga para permitir la escritura en la celda, y un pin de salida para mostrar el estado actual de la celda.

Para leer lo que está almacenado en el registro, simplemente observamos lo que se emite en su salida. En cuanto a la escritura, se utiliza un mecanismo llamado flip flop, que ya está integrado en el diseño básico del proyecto.

## RAM
El objetivo es desarrollar una memoria RAM que estará compuesta por registros de 16 bits cada uno. Utilizaremos el componente BIT previamente creado para permitir 16 entradas y obtener 16 salidas.

## RAM8
En la RAM8, contamos con 8 registros, cada uno de ellos de 16 bits. Para escribir en la RAM, se activa el bit de carga (load), mientras que para leer de la RAM, se establece el bit de carga en 0. El direccionamiento se realiza mediante un conjunto de 3 bits de dirección, permitiendo 8 direcciones distintas para leer o escribir datos.

## RAM64
La RAM64 se compone de 8 módulos RAM8. Esto proporciona un total de 64 direcciones de memoria disponibles, cada una con una longitud de 16 bits

## RAM512
La RAM 512 sigue una estructura similar a la RAM64, pero a una escala más amplia. Emplea una dirección de 9 bits para acceder a cada registro, lo que permite un total de 512 direcciones de memoria disponibles. Cada dirección almacena datos de 16 bits de longitud

## RAM4K
La RAM 4K se construye con una estructura semejante a la del chip anterior a diferencia que esta vez se aumenta la RAM en escala.
Ahora emplea una dirección de 12 bits para acceder en cada registro. 

## RAM16K
La RAM 16K es una memoria que consta de 16,384 registros, y cada uno de estos registros tiene una longitud de 16 bits. Utiliza un bus de direcciones de 14 bits para acceder a los registros.

Para implementar este chip, se utiliza un DMux4Way, que divide una señal de entrada en cuatro salidas basadas en la dirección proporcionada. Además, se utilizan cuatro chips RAM4K para almacenar y manejar los datos. Finalmente, se emplea un Mux4Way16 para seleccionar y combinar los datos de salida de los cuatro chips RAM4K en función de la dirección especificada en el bus de direcciones.

## Program Counter
El contador es un dispositivo que consta de 16 bits, lo que significa que puede representar un rango de valores de 0 a 65535. Utiliza buses de 16 bits tanto para la entrada como para la salida de datos. Además, tiene 2 bits de control, uno de los cuales se encarga de definir si se está realizando una operación de lectura de datos, mientras que el otro bit controla la función de reinicio del contador.
