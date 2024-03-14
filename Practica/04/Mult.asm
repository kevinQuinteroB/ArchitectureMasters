// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

@2
M=0

@contador
M=0

(BUCLE)

@contador
D=M
@0
D=D-M


@FIN
D;JGE



@1
D=M
@2
M=M+D

@contador
M=M+1

@BUCLE
0;JMP

(FIN)

@2
D=M