data segement
   a dw 0004H
   b dw 0002H
   c dd ?
data ends
code segment
assume cs:code, ds:data
start:
   mov ax, data
   mov ds, ax
   mov ax, a
   mov bx, b
   mul bx
   mov word ptr c, ax
   mov word ptr c+2, dx
   int 3
code ends
end start
