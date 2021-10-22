# Author: Ushna Ijaz
# Date: May 26,2021  
# Description: First Task 


.text 					

addi $t1, $zero, 10		#stores 10 in t1	
addi $t2, $zero, 7		#stores 7 in t2
sub $t0, $t1,$t2
				#t0=10-7

move $t7,$t0
move $t0, $zero
addi $t1, $zero, 5
addi $t2, $zero, 6
add $t0,$t1,$t2 

move $t6,$t0
move $t0, $zero
mul $t1,$t7,$t6
addi $t2,$zero,9
mul $t0,$t1,$t2




