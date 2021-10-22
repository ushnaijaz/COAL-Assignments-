.data
    prompt: .asciiz "Enter Number:" 
    result: .asciiz "Factorial:" 
    space: .asciiz "\n"

.text
    start:
        li $v0, 4       
        la $a0, prompt
        syscall

        li $v0,5            
        syscall
        move $s0, $v0
        li $t0, 1     #i 
        li $t1,1      #result

    
    forLoop:
        bgt $t0, $s0, exit     
        mul $t1,$t1,$t0   
        li $v0,1
        move $a0,$t1
        syscall 
        li $v0, 4    
        la $a0, space 
        syscall
        addi $t0, $t0, 1   
        j forLoop
   
    exit:
        li $v0, 4       
        la $a0, result
        syscall
        li $v0,1
        move $a0,$t1
        syscall
        li $v0, 10     
        syscall
