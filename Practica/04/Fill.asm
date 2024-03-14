// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//Almacenar Blanco o negro
(inicio)
@color 
M=0



//Almacenamos la posicion en el Screen
@SCREEN
D=A
@pos
M=D



//Oprimir tecla y almacena el color
(presionar)
@KBD
D=M
//Negro
@negro
D; JGT 
//Blanco
@blanco
D; JEQ
//Volver
@presionar
0; JMP





(negro)
@color
M=-1
@mostrar
0; JMP

(blanco)
@color
M=0
@mostrar
0; JMP

(mostrar)
//colocamos en D el color
@color
D = M




//posicion almacenada  aplicamos color
@pos
A=M
M=D
//aumentamos la posicion en uno
@pos
M=M+1




//verifiacmos la siguiente posicion para no finalizar
@KBD
D=A
@pos
D=D-M
@mostrar
D; JGT





//Regresar a Inicio
@inicio
0; JMP