.data
array: .ascii "a","e","i","o","u"

.text
la $a0,array
li $v0,4
lw $t0,0($a0)
add $a1,$a1,1
lw $t0,4($a0)
add $a1,$a1,1
lw $t0,8($a0)
add $a1,$a1,1
lw $t0,12($a0)
add $a1,$a1,1
lw $t0,16($a0)
add $a1,$a1,1
syscall

li $v0,4
lw $t0,0($a0)
add $a1,$a1,1
lw $t0,4($a0)
add $a1,$a1,1
lw $t0,8($a0)
add $a1,$a1,1
lw $t0,12($a0)
add $a1,$a1,1
lw $t0,16($a0)
add $a1,$a1,1
syscall

li $v0,4
lw $t0,0($a0)
add $a1,$a1,1
lw $t0,4($a0)
add $a1,$a1,1
lw $t0,8($a0)
add $a1,$a1,1
lw $t0,12($a0)
add $a1,$a1,1
lw $t0,16($a0)
add $a1,$a1,1
syscall

li $v0,4
lw $t0,0($a0)
add $a1,$a1,1
lw $t0,4($a0)
add $a1,$a1,1
lw $t0,8($a0)
add $a1,$a1,1
lw $t0,12($a0)
add $a1,$a1,1
lw $t0,16($a0)
add $a1,$a1,1
syscall
