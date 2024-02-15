# Primera práctica: Lógica Booleana

En esta práctica se implementó el uso de compuertas lógicas básicas utilizando el software nand2tetris, con el apoyo de Visual Studio. El objetivo es comprender y diseñar compuertas lógicas fundamentales, como NOT, AND, OR, XOR, entre otras, utilizando únicamente la puerta lógica NAND como base. Para comenzar, descargamos el software nand2tetris, que nos proporciona una plataforma interactiva, incluyendo hardware y software.

Con la ayuda de Visual Studio, un entorno de desarrollo integrado (IDE), editaremos y escribiremos el código necesario para implementar las compuertas lógicas. Visual Studio ofrece herramientas poderosas para la escritura de código, depuración y gestión de proyectos, lo que facilita enormemente el proceso de desarrollo.

Una vez que tenemos el entorno preparado, comenzamos a diseñar nuestras compuertas lógicas. La elección de la puerta NAND como base se debe a su capacidad para implementar cualquier otra compuerta lógica. Utilizamos el lenguaje de descripción de hardware (HDL) proporcionado por nand2tetris para escribir el código que define el comportamiento de nuestras compuertas. Después de escribir el código en Visual Studio, lo probamos en el entorno de simulación de nand2tetris. Esta fase es importante para verificar que nuestras compuertas funcionen correctamente según las especificaciones lógicas esperadas. Si hay errores, volvemos al código en Visual Studio para corregirlos y luego repetimos el proceso de prueba.

# AND

La compuerta AND, también llamada "todo o nada", se representa en el álgebra Booleana mediante una operación de multiplicación. Esto significa que para que la salida de la compuerta sea activa, todas sus entradas deben estar en estado binario 1. Si alguna entrada está inactiva (en estado "0"), la salida será 0.

# NOT
El resultado de una compuerta NOT será 1 si su entrada es 0, y será 0 si su entrada es 1. La siguiente figura interactiva presenta un diagrama de una compuerta NOT junto con su tabla de verdad correspondiente.

# OR

Esta compuerta, conocida como OR, activa su salida a un estado 1 si alguna de sus entradas está en estado binario 1. No todas las entradas necesitan estar activadas para que la salida sea 1, pero tampoco hay ningún problema si lo están.

# XOR

La compuerta XOR, también llamada OR exclusiva, es una puerta lógica digital que implementa la operación de o exclusivo. Esto significa que la salida será verdadera (1/ALTO) únicamente si una y solo una de las entradas de la puerta es verdadera. Si ambas entradas son falsas (0/BAJO) o ambas son verdaderas, la salida será falsa.

# MUX

Un multiplexor, comúnmente abreviado como "Mux", es un dispositivo que tiene dos entradas de datos y una entrada de selector. Cuando el selector está en 0, el multiplexor devuelve la información proveniente de la primera entrada de datos. Por otro lado, cuando el selector es 1, el multiplexor devuelve la información proveniente de la segunda entrada de datos. Esta funcionalidad es esencial ya que permite a la computadora seleccionar entre dos valores posibles.

# DMUX

Los demultiplexores realizan la función opuesta a la del multiplexor. Toman una señal de entrada única y la dirigen hacia uno de los N canales de salida. El selector elige el canal de salida por el cual se enviará la señal de entrada.

# NOT16


Lo que estás describiendo es un inversor de 16 bits, que es simplemente un circuito que toma una señal de entrada y la invierte, es decir, si la entrada es 0, la salida será 1, y viceversa. Este inversor se implementa 16 veces para manejar un bus de 16 bits. Cada uno de los inversores en esta implementación invertirá la señal de entrada individualmente.

# AND16


Se utiliza una compuerta AND en 16 instancias, es decir, se repite el proceso de implementar la compuerta AND 16 veces.

# OR16


De igual manera, se emplea la operación lógica OR en 16 ocasiones para formar la compuerta Or16.

# MUX16

Así mismo, se repite el proceso del multiplexor en 16 ocasiones.

# OR8WAY

La compuerta Or8Way tiene 8 entradas y produce una única salida.

# MUX4WAY16

En esencia, se utiliza un multiplexor con 4 opciones de entrada, y este mismo proceso se repite 16 veces en total.

# DMUX4WAY

La implementación se basa en un concepto similar al utilizado en el Mux4Way16, pero en este caso, el problema se presenta de manera inversa.D

# DMUX8WAY


Al igual que en la implementación del Mux8Way16, se optó por utilizar dos demultiplexores de 4 vías (DMux4Way), un demultiplexor de 16 vías (DMux16) y una compuerta XOR de 3 entradas para controlar el selector
