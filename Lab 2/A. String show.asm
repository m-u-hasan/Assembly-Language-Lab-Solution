
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
   .data
   string db "Hello World$"
   
   
   
   main proc                             
   .code
        mov ax, @data
        mov ds, ax
        
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
        
        mov ah, 02
        mov dl, bl
        int 21h
                        
        
        ;new line
        mov ah, 02
        mov dl, 13
        int 21h
        
        mov ah, 02
        mov dl, 10
        int 21h            
                    
        mov ah, 09
        lea dx, string
        int 21h
        
      main endp
   end main

ret




