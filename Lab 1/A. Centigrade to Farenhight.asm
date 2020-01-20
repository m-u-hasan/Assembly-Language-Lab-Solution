
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
              
    .data   
    
    F dw ?
    C dw ?
    
    .code
    
    main proc    
        
        mov ax, @data
        mov ds, ax
           
           mov ax, 260
           mov bx, 9
           mul bx   
           mov bx, 5
           div bx  
           add ax, 32
           sub ax, 1
           mov F, ax;
           
               
               
               
        
        main endp
    end main
    
 
 
 

ret




