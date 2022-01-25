# Author: Ushna Ijaz
# Copyright © 2021 Ushna Ijaz . All rights reserved.
# Date: June 9,2021  
# Description: Lab 3 task 1

.data
	prompt: .asciiz "Enter the height:" 
	a: .asciiz "/n height="
	prompt2: .asciiz "Enter the width:" 
	b: .asciiz "/n width="
	
	
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


#area of triangle

mul $t2,$t0,$t1
div $t2,$t2,2


