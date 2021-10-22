# Author: Ushna Ijaz
# Date: June 3,2021  
# Description: Lab 2 tasks q2 part b

.data
	prompt: .asciiz "Enter the value for x:" 
	x: .asciiz "/n x="
	prompt2: .asciiz "Enter the value for y:" 
	y: .asciiz "/n y="
	
.text 					

#displaying message
li $v0,4
la $a0, prompt 
syscall

#get input from user
li $v0,5
syscall

move $t0,$v0

li $v0,1
move $a0,$t0
syscall
#displaying message
li $v0,4
la $a0, prompt2 
syscall

#get input from user
li $v0,5
syscall

move $t1,$v0

li $v0,1
move $a0,$t1
syscall

li $t2,8
mul $t2,$t1,$t2
div $t2,$t0,$t2
mul $t3,$t1,10
sub $t2,$t2,$t3


#total registers used: 4
