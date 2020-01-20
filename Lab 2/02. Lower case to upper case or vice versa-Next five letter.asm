
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
 .data
 
 .code
 main proc
    mov ah, 01
    int 21h  
    
    mov bl, al  
    mov cx, 5
    
    ;new line
    mov ah, 02
    mov dl, 13
    int 21h
    
    mov ah, 02
    mov dl, 10
    int 21h
    
      ;compare
    cmp bl, 97 
    ;ceck conditon
    jge small_to_capital
                          
        
    add bl, 33                      
    capital_to_small:
 
    
    mov ah, 02
    mov dl, bl
    int 21h 
    inc bl
    
    loop capital_to_small
    jmp exit
    
     
     ;small to capital
    small_to_capital:
       
                sub bl, 31
                
        capital:
        mov ah, 02
        mov dl, bl
        int 21h 
        inc bl 
        
        loop capital
        
        
    exit:
    
        mov ah, 4ch
        int 21h
    
    
  main endp
 end main
 

ret




