li $v0,6 #reads
syscall
li $v0,2 #writes
mov.s $f12,$f0 #transfering , mov.s used for f.p (for single precison for f12)
syscall
