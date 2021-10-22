#a NOR subprogram - take two input parameters and return the NOR operation on those two parameter. 
#b NAND- take two input parameters and return the NAND operation on those two parameter.
#c NOT- take one input parameters and return the NOT operation on that parameter.

.text
main:
 
 jal NOT #jump and link instruction

# Sub Program 3 : NOT

.text
NOT:

 li $v0, 5 #read int
 syscall
 move $t0, $v0 #move int value to t0

 not $t1,$t0 #not operation


 li $v0, 1 #print int
 move $a0, $t1 
 syscall
 jr $ra # function jump to the address stored in $ra


 