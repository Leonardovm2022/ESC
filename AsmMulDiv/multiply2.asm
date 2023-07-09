@R0
D=M
@IFA
D;JEQ 

@R1
D=M
@IFA
D;JEQ 

//inicio do primeiro else
@R0
D=M
@ANDB
D;JLT

@ELSEB
0;JMP

(ANDB)
@R1
D=M
@IFB
D;JLT

(ELSEB)

//inicio do segundo else
@R0
D=M
@IFC
D;JLT

//inicio do terceiro else
@R1
D=M
@IFD
D;JLT

//inicio do quarto else
@MULTIPLICA
0;JMP
//fim do quarto else

@ENDIFD
0;JMP

(IFD)

//inicio do quarto if
@R1
M=-M
@MULTIPLICA
0;JMP
@R1
M=-M
@R2
M=-M
//fim do quarto if

(ENDIFD)
//fim do terceiro else

@ENDIFC
0;JMP

(IFC)

//inicio do terceiro if
@R0
M=-M
@MULTIPLICA
0;JMP
@R0
M=-M
@R2
M=-M
//fim do terceiro if

(ENDIFC)
//fim do segundo else

@ENDIFB
0;JMP

(IFB)

//inicio do segundo if
@R0
M=-M
@R1
M=-M
@MULTIPLICA
0;JMP
@R0
M=-M
@R1
M=-M
//fim do segundo if

(ENDIFB)
//fim do primeiro else

@ENDIFA
0;JMP

(IFA)

//inicio primeiro if
@R2
M=0
//fim do primeiro if

(ENDIFA)

(END_MAIN)
@END_MAIN
0;JMP

(MULTIPLICA)

@R5
M=1

@R0
D=M
@i
M=D
@R2
M=0

(WHILE)

@R5
M=M+1

@i
D=M
@WHILE_BODY
D;JGT

@ENDWHILE
0;JMP

(WHILE_BODY)

@i
M=M-1
@R1
D=M
@R2
M=D+M

@WHILE
0;JMP

(ENDWHILE)

@END_MAIN
0;JMP