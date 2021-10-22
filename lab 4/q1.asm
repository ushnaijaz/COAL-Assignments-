# Author: Ushna Ijaz
# Date: July 26,2021  
# Description: Lab 4 question 1 

.data 

prompt: .asciiz "Enter a valur for length:" 
	a: .asciiz "/n length="
	prompt2: .asciiz "Enter the value for integer:" 
	b: .asciiz "/n integer="
	array: .space 40 #initializing array

.text
la $a0,a
lw $t0,($a0) 
lw $t1,4($a0)
add $t0,$t0,$t1  
lw $t1,8($a0)
add $t0,$t0,$t1
lw $t1,12($a0)
add $t0,$t0,$t1
lw $t1,16($a0)
add $t0,$t0,$t1
div $t0,$t0,5
