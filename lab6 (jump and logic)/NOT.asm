#a NOR subprogram - take two input parameters and return the NOR operation on those two parameter. 
#b NAND- take two input parameters and return the NAND operation on those two parameter.
#c NOT- take one input parameters and return the NOT operation on that parameter.

.text
main:
 jal NOR
 jal NAND
 jal NOT

NOR:

 li $v0, 5
 syscall
 move $t0, $v0

 li $v0, 5
 syscall
 move $t1, $v0
 nor $t2,$t0,$t1

 li $v0, 1
 move $a0, $t2 
 syscall
 jr $ra

.text
NAND:

 li $v0, 5
 syscall
 move $t0, $v0

 li $v0, 5
 syscall
 move $t1, $v0
 and $t2,$t0,$t1
 not $t3,$t2

 li $v0, 1
 move $a0, $t3
 syscall
 jr $ra
# Sub Program 3 : NOT

.text

 # read an input value from the user
 li $v0, 5
 syscall
 move $t0, $v0

 not $t1,$t0


 li $v0, 1
 move $a0, $t2
 syscall
 jr $ra
