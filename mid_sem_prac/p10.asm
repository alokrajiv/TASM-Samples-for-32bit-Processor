#Reverse a string using stack. (not complete yet. logic done -> manually for 2 characters, use same logic to develop loop
		.data 
inp_str:.asciiz "ABCDEFGHIJ"
out_str:.space 2
		.text
main:
	
	la $t5, inp_str
	lb $t1, ($t5)
	sub $sp, $sp, 1
	sb $t1, ($sp)
	
	li $t5, 1
	lb $t1, inp_str($t5)
	sub $sp, $sp, 1
	sb $t1, ($sp)
	
	lb $t1, ($sp)
	addi $sp, $sp, 1
	li $t5, 0
	sb $t1, out_str($t5)
	
	lb $t1, ($sp)
	addi $sp, $sp, 1
	addi $t5, $t5, 1
	sb $t1, out_str($t5)
	
	li $v0, 4
	la $a0, out_str
	syscall
	
	li $v0, 10
	syscall
	
	