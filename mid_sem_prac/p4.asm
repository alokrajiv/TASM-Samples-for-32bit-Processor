#Accept 2 floating point numbers and print their sum and difference
		.data
prompt1:.asciiz "Please enter first floating point number: "
prompt2:.asciiz "Please enter second floating point number: "
prompt3:.asciiz "\nThe sum is: "
prompt4:.asciiz "\nThe difference is: "
		.text
main:
		li $v0, 4
		la $a0, prompt1
		syscall
		
		li $v0, 6
		syscall
		mov.s $f1, $f0
		
		li $v0, 4
		la $a0, prompt2
		syscall
		
		li $v0, 6
		syscall
		mov.s $f2, $f0
		
		li $v0, 4
		la $a0, prompt3
		syscall
		
		li $v0, 2
		add.s $f12, $f1, $f2
		syscall
		
		li $v0, 4
		la $a0, prompt4
		syscall
		
		li $v0, 2
		sub.s $f12, $f1, $f2
		syscall
		
		li $v0, 10
		syscall
		