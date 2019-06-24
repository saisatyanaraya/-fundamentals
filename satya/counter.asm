ORG 00H
mov tmod,#06H
mov dptr,#num1
start: setb tr0
back: mov a,tl0
      movc a,@a+dptr
mov p1,a
jnb tf0, back
clr tr0
clr tf0
sjmp start
org 300h
num1: db 0c0h,0f9h,0a4h,0b0h,99h,92h,82h,0f8h,80h,90h,0c0h
end
