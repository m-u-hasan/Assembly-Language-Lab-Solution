org 100h

.data
     ;
     string db 'We are DUETins $'
     
 .code
    main proc
           mov ax, @data
           mov ds, ax
           
           mov cx, 10
           
        
           
           loop1:
           mov dx, offset string
           mov ah, 09
           int 21h
           
           mov ah, 02
           mov dl, 13
           int 21h
           
           mov ah, 02
           mov dl, 10
           int 21h
           
           loop loop1
           
           main endp
    end main
    ret