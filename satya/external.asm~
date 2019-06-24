ORG 00H
MOV A,#38H
ACALL COMNWRT
acall delay
acall delay
MOV A,#0EH
ACALL COMNWRT
acall delay
acall delay
MOV A,#06h
ACALL COMNWRT
acall delay
acall delay
MOV A,#01H
ACALL COMNWRT
acall delay
acall delay
MOV A,#80H
ACALL COMNWRT
acall delay
acall delay
start:
clr tf0
here: jb tf0, clr0
     MOV A,#80h
ACALL COMNWRT
mov a,tl0
mov b,#10d
div ab
mov r0,b
mov b,#10d
div ab
add a,#30h
ACALL DATAWRT
mov a,b
add a,#30h
ACALL DATAWRT
mov a,r0
add a,#30h
ACALL DATAWRT
inc tl0
sjmp here
clr0:clr tf0
sjmp here
delay: mov r0,#50d
here1:djnz r0,here1
ret
COMNWRT:
MOV P0, A
CLR P2.0
CLR P2.1
SETB P2.2
CLR P2.2
acall delay
acall delay
RET
DATAWRT:
MOV P0,A
SETB P2.0
CLR P2.1
SETB P2.2
CLR P2.2
RET
end
