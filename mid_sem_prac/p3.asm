#Accept 2 integers and print their sum and difference
		.data
prompt1:.asciiz "Please enter first integer: "
prompt2:.asciiz "Please enter second integer: "
prompt3:.asciiz "\nThe sum is: "
prompt4:.asciiz "\nThe difference is: "
		.text
main:
		li $v0, 4
		la $a0, prompt1
		syscall
		
		li $v0, 5
		syscall
		move $t0, $v0
		
		li $v0, 4
		la $a0, prompt2
		syscall
		
		li $v0, 5
		syscall
		move $t1, $v0
		
		add $t2, $t0, $t1
		sub $t3, $t0, $t1
		
		li $v0, 4
		la $a0, prompt3
		syscall
		
		li $v0, 1
		move $a0, $t2
		syscall
		
		li $v0, 4
		la $a0, prompt4
		syscall
		
		li $v0, 1
		move $a0, $t3
		syscall
		
		li $v0, 10
		syscall
		
		