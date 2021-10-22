.text
addi $t1, $t1, 20
j JUMP1

END:
mul $t3, $t1, $t2
j EXIT


JUMP1:
addi $t2, $t1, 24
j END

EXIT:
move $t0, $ra