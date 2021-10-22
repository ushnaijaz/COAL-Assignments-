.data
    prompt: .asciiz "Enter Number:" 
    newLine: .asciiz "\n"
    character: .asciiz "*"

.text
    start:
        li $v0, 4       
        la $a0, prompt
        syscall

        li $v0,5            
        syscall
        move $s0, $v0
        li $t0, 0     #i   

    outer:
        beq $t0, $s0, end         
        addi $t0, $t0, 1   
        li $t1, 1      #k 
        jal changeLine   

    inner:
        bgt $t1, $t0, outer 
                    

        li $v0, 4    
        la $a0,  character
        syscall 
    
        addi $t1, $t1, 1    

        j inner     

    changeLine: 
        li $v0, 4    
        la $a0, newLine
        syscall 
        jr $ra          

    end:
        li $v0, 10     
        syscall