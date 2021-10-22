
.data
less: .asciiz "a is less than b"
greater: .asciiz "a is greater than b "
eq: .asciiz "a is equal to b"

.text
#a
li $v0, 5
syscall
move $t0, $v0
#b
li $v0, 5
syscall
move $t1, $v0

# if (a < b)
blt $t0, $t1, lessBlock 
#else if(a>b)
bgt $t0, $t1, greaterBlock
#else
j equal

lessBlock: 
li $v0, 4     #print string    
la $a0, less       
syscall
li $v0, 10             
syscall

greaterBlock: 
li $v0, 4        
la $a0, greater      
syscall
li $v0, 10         
syscall

equal:
li $v0, 4        
la $a0, eq    
syscall
li $v0, 10     
syscall
