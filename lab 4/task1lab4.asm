.data
values:.word 75,60,80,85,83
array: .space 40

.text
la $a0,values
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