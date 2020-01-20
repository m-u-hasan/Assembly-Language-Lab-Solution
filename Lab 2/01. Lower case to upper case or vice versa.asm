
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
 .data
 
 .code
 main proc
    mov ah, 01
    int 21h  
    
    mov bl, al
    
    ;new line
    mov ah, 02
    mov dl, 13
    int 21h
    
    mov ah, 02
    mov dl, 10
    int 21h
    
    
   cmp bl, 97
    jge small_to_capital
    
   capital_to_small:
    
    add bl, 32
    
    mov ah, 02
    mov dl, bl
    int 21h
    jmp exit
    
    
    small_to_capital:
        sub bl, 32
        
        mov ah, 02
        mov dl, bl
        int 21h
        
    exit:
    
        mov ah, 4ch
        int 21h
    
    
  main endp
 end main
 

ret




