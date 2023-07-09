// if M[i] = 0 *AND* M[j] = 0;

// IF BLOCK

@i
D=M
@AND
D;JEQ

@ELSE
0;JMP

(AND)
@j
D=M
@IF
D;JEQ

(ELSE)

// ELSE BODY

@ENDIF
0;JMP

(IF)

// IF BODY

(ENDIF)