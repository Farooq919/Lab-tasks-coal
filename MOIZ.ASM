.model small 
.stack 100h
.data    



var1 db "enter first number: $"
var2 db "enter second number: $" 
var3 db "sum is= $"
var4 db "subtraction is= $"
.code     



main proc

mov ax,@data
mov ds,ax

lea dx,var1    ;   "enter first number: $"
mov ah,09
int 21h

mov ah,01      ;input 1                       9
int 21h     

mov bl,al   
    
mov bh,al           ;sub-------------------------------
                 
mov dl,10      ; newline   
mov ah,02
int 21h

lea dx,var2    ;   "enter second number: $"
mov ah,09
int 21h

mov ah,01      ;input 2                               2
int 21h

add bl,al      ;add                                9+2

sub bh,al      ;sub-------------------------------       9-2

mov dl,10      ; newline
mov ah,02
int 21h

lea dx,var3    ;   "sum is= $"
mov ah,09
int 21h



mov dl,bl
sub dl,48

mov ah,02                    ;display add
int 21h 

mov dl,10      ; newline   
mov ah,02
int 21h

lea dx,var4   ;   "sub is= $"
mov ah,09
int 21h

mov dl,bh
add dl,48

mov ah,02
int 21h

mov ah,4ch 
int 21h

main endp 
end main
