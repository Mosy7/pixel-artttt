name "hi-world"

; this example prints out  "hello world!"
; by writing directly to video memory.
; in vga memory: first byte is ascii character, byte that follows is character attribute.
; if you change the second byte, you can change the color of
; the character even after it is printed.
; character attribute is 8 bit value,
; high 4 bits set background color and low 4 bits set foreground color.

; hex    bin        color
; 
; 0      0000      black
; 1      0001      blue
; 2      0010      green
; 3      0011      cyan
; 4      0100      red
; 5      0101      magenta
; 6      0110      brown
; 7      0111      light gray
; 8      1000      dark gray
; 9      1001      light blue
; a      1010      light green
; b      1011      light cyan
; c      1100      light red
; d      1101      light magenta
; e      1110      yellow
; f      1111      white
 


org 100h


mov     ax, 0b800h
mov     ds, ax


mov cx, 3  
mov di, 09h 

c:  mov [di], 10101100b   
    add di, 2 
    loop c


mov cx, 5  
mov di, 0adh 

d:  mov [di], 10101100b   
    add di, 2 
    loop d 
    
mov cx, 4
mov di, 0153h 

e:  mov [di], 10101100b   
    add di, 2 
    loop e

mov cx, 5
mov di, 01f9h 
f:  mov [di], 10101100b   
    add di, 2 
    loop f

mov cx, 2
mov di, 0299h 
g:  mov [di], 10101100b   
    add di, 2 
    loop g  

mov cx, 2
mov di, 0339h 
h:  mov [di], 10101100b   
    add di, 2 
    loop h 

mov cx, 2
mov di, 03D9h 
i:  mov [di], 10101100b   
    add di, 2 
    loop  i
    
mov cx, 2
mov di, 0479h 
j:  mov [di], 10101100b   
    add di, 2 
    loop  j

mov cx, 2
mov di, 0519h 
k:  mov [di], 10101100b   
    add di, 2 
    loop  k
    
mov cx, 2
mov di, 05b9h 
l:  mov [di], 10101100b   
    add di, 2 
    loop  l               

mov cx, 2
mov di, 065bh 
m:  mov [di], 10101100b   
    add di, 2 
    loop  m

mov cx, 2
mov di, 06fdh 
n:  mov [di], 10101100b   
    add di, 2 
    loop  n
mov cx, 7
mov di, 079fh 
o:  mov [di], 10101100b   
    add di, 2 
    loop  o

mov cx, 6  
mov di, 03bh 

c1:  mov [di], 10101100b   
    add di, 2 
    loop c1
mov cx, 3
mov di, 01fbh 
f1:  mov [di], 10101100b   
    add di, 2 
    loop f1



















mov ah, 0
int 16h

ret

