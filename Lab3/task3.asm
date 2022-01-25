# Author: Ushna Ijaz
# Copyright © 2021 Ushna Ijaz . All rights reserved.
# Date: June 9,2021  
# Description: Lab 3 task 3

li $t0,80		#marks of A
div $t1,$t0,2		#marks of B
div $t2,$t0,4		#marks of C


#average marks

add $t3,$t0,$t1
add $t3,$t3,$t2
div $t3,$t3,3

#final answer stored in t3, which is 46. 140/3
