# Author: Ushna Ijaz
# Date: June 3,2021  
# Description: Lab 2 tasks ques 2 part a 

.data
	prompt: .asciiz "Enter the value for a:" 
	a: .asciiz "/n a="
	prompt2: .asciiz "Enter the value for b:" 
	b: .asciiz "/n b="
	prompt3: .asciiz "Enter the value for x:" 
	x: .asciiz "/n x="
	prompt4: .asciiz "Enter the value for y:" 
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

#displaying message
li $v0,4
la $a0, prompt3 
syscall

#get input from user
li $v0,5
syscall

move $t2,$v0

li $v0,1
move $a0,$t2
syscall

#displaying message
li $v0,4
la $a0, prompt4 
syscall

#get input from user
li $v0,5
syscall

move $t3,$v0

li $v0,1
move $a0,$t3
syscall


add $t5,$t0,$t1
div $t6,$t2,$t3
add $t7,$t5,$t6
subi $t5,$t7,7
