.model small
.stack 100h
.data
var1 db "Enter First number: $"
var2 db "Enter Second number: $"
var3 db "Sum = $"
var4 db "Subtraction = $"
.code

main proc

mov ax,@data
mov ds,ax


lea dx,var1   ;First msg
mov ah,09
int 21h


mov ah,01     ;input
int 21h


mov bl,al    ;for sum    
mov bh,al    ;for subtraction

mov dl,10
mov ah,02
int 21h


lea dx,var2    ;second msg
mov ah,09
int 21h


mov ah,01    ;input
int 21h



add bl,al    ;addition
sub bh,al    ;subtraction



mov dl,10
mov ah,02     ;new line
int 21h

lea dx,var3   ;msg3
mov ah,09
int 21h

mov dl,10
mov ah,02     ;new line
int 21h

mov dl,bl
sub dl,48
mov ah,02     ;print sum
int 21h

mov dl,10    ;new line
mov ah,02
int 21h

lea dx,var4
mov ah,09h
int 21h

mov dl,10
mov ah,02     ;new line
int 21h


mov dl,bh 
add dl,48
mov ah,02     ;print sub
int 21h

mov ah,4ch
int 21h

main endp
end main