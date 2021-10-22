#1.Write a program to print out a random number from 1 to 255.

.text
    li $v0, 42  #this generates the random number.
    li $a0, 1  # lower bound.
    li $a1, 255  # upper bound.
    
    syscall
    
    li $v0, 1   #1 means print integer
    syscall