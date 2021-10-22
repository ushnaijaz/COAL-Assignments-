# Author: Ushna Ijaz
# Date: June 3,2021  
# Description: Lab 2 tasks question 1


.text 					

li $t1,10 #store 10
li $t2,9 #store 9
mul $t2,$t1,$t2 #multiply 10 and 9 
addi $t2,$t2,13 #add 13 to ans
li $t3,8 #store 8
li $t4,4 #store 4
mul $t4, $t3, $t4 #multiply 8 and 4
sub $t4,$t4,9 #subt 9 from ans 
div $t4,$t2,$t4	#divide 103 by 23 

#total registers uses: 4
