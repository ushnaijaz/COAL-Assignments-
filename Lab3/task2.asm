# Author: Ushna Ijaz
# Copyright © 2021 Ushna Ijaz . All rights reserved.
# Date: June 9,2021  
# Description: Lab 3 task 2

.data
	prompt: .asciiz "Enter value of p:" 
	p: .asciiz "p="
	prompt2: .asciiz "Enter value of q:" 
	q: .asciiz "q="
	prompt3: .asciiz "Enter value of r:" 
	r: .asciiz " r="
	w: .word 12
	x: .word 5
	y: .word 15
	z:.word 0
	
	
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


lw $t3,w
lw $t4,x
lw $t5,y

#equation

mul $t6,$t0,$t2		# p * r
div $t6,$t6,$t1		#(p * r / q)
div $t7,$t3,$t4		# w / x
add $t8,$t6,$t7		#(p * r / q) + (w / x)
sub $t8,$t8,$t5		#(p * r / q) + (w / x) – y

#storing final answer in variable z, in t9

sw $t8, z


