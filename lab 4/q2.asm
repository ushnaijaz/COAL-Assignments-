#2.Write a program which sleeps for 5 seconds then print a  random number


    li $v0,32
    li $a0, 5000
    syscall 	
    li $v0, 42  #this generates the random number.
    li $a0, 1  # lower bound.
    li $a1, 255  # upper bound.
    
    syscall
    
    li $v0, 1   #1 means print integer
    syscall