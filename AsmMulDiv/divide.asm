// if D=0 block
@R1
D=M
@IFDEQZERO
D;JEQ
// else

// if N=0 block
@R0
D=M
@IFNEQZERO
D;JEQ

// else
@DIVIDE
0;JMP
@ENDIFNEQZERO
0;JMP

(IFNEQZERO)
// Sets Q=0 and R=0
@R2
M=0
@R3
M=0

@ENDIFDEQZERO
0;JMP

(IFDEQZERO)
// if body (division_by_zero function)
// Sets Q=0 and R=32767

@R2
M=0
@32767
D=A
@R3
M=D

(ENDIFNEQZERO)
(ENDIFDEQZERO)

(MAIN_END)
@MAIN_END
0;JMP


(DIVIDE)

@R1
D=M
@IF1
D;JLT

// Else IF1

// If N<0 block

@R0
D=M
@IF2
D;JLT

// Else IF2

@DIVIDE_UNSIGNED
0;JMP

@ENDIF2
0;JMP

// IF2
(IF2)

@R0
M=-M

// Sets a Flag
@flagNLTZERO
M=1
@DIVIDE


(ENDIF2)

@ENDIF1
0;JMP

// IF1
(IF1)

@R1
M=-M
// Set a Flag
@flagDLTZERO
M=1
@DIVIDE

(ENDIF1)

//Verify Flags

@R5
M=1

@flagDLTZERO
D=M
@R5
D=D-M
@IF_FLAG_D
D;JEQ

@ENDIF_FLAG_D
0;JMP

(IF_FLAG_D)
@R1
M=-M
@R2
M=-M
(ENDIF_FLAG_D)

@flagNLTZERO
D=M
@R5
D=D-M
@IF_FLAG_N
D;JEQ

@ENDIF_FLAG_N
0;JMP

(IF_FLAG_N)

@R0
M=-M

// If R = 0
@R3
D=M
@IF3
D;JEQ

//Else IF3

@R2
M=-M
@R1
D=M
@R3
M=D-M


@ENDIF3
0;JMP

//IF3
(IF3)

@R2
M=-M

(ENDIF_FLAG_N)

@END_DEVIDE
0;JMP

(DIVIDE_UNSIGNED)
// Sets Q=0 and R=N
@R2
M=0
@R0
D=M
@R3
M=D

// While R>=D

(WHILE_UNSIGNED_FUNCTION)
@R3
D=M
@R1
D=D-M
@WHILE_UNSIGNED_FUNCTION_BODY
D;JGE

@ENDWHILE_UNSIGNED_FUNCTION
0;JMP

(WHILE_UNSIGNED_FUNCTION_BODY)

// Body (Q=Q+1)

@R2
M=M+1

// Decrements R by D units

@R3
D=M
@R1
D=D-M
@R3
M=D
@WHILE_UNSIGNED_FUNCTION
0;JMP

(ENDWHILE_UNSIGNED_FUNCTION)


(END_DEVIDE)
@MAIN_END
0;JMP