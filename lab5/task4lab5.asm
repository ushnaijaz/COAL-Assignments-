#4.Write a program to open an input dialog box and read a string value. Write the string back to the user using a message box.
.data
textbox: .space 32
string1: .asciiz "Enter your message \n"
string2: .asciiz "your message:\n"
.text
li $v0,54  #used for input dialogue box
la $a0,string1
la $a1,textbox
li $a2,32 #a2 max string length
move $t0,$a1
syscall

la $a0,string2
la $a1,textbox
move $a1,$t0
li $v0,59
syscall
