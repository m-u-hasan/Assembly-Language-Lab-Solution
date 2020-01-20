
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.data

str db 'stUdenTs','$'

.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov si, offset str
        mov ah, 09h
        int 21h  
        
        ;compare
        
        cmp [si], '$'
        je exit
                    
        cmp [si], 97
        jge small 
        jmp first_cap
        
         
         small:      
           inc si   
           cmp [si], '$'
           jmp exit
           
           cmp [si], 97
           jge small
           jmp first_cap
           
         
         
         
         first_cap:   
              mov bl, [si]
              mov ah, 02
              int 21h
         
         
         
         last_cap:
        
        
        
        

          exit:
          mov ah, 4ch
          int 21h
          
    main endp
    end main
ret




