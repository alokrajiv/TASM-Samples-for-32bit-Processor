#String input and the output after removing newline.
		.data
out_str1:.asciiz "Please enter your name (max 30 chars) :\n"
out_str2:.asciiz "\nHello "
out_str3:.asciiz ", how are you doing today?\n"
buffer: .space 30

		.text
main:
		li $v0, 4
		la $a0, out_str1
		syscall
		
		li $v0, 8
		la $a0, buffer
		li $a1, 30
		syscall
		
		li $s0,0
		remove:
			lb $a3,buffer($s0)
			addi $s0,$s0,1
			bnez $a3,remove
			beq $a1,$s0,skip
			li $s1, 2
			subu $s0,$s0,$s1
			sb $0, buffer($s0)		
		skip:

		li $v0, 4
		la $a0, out_str2
		syscall
		
		li $v0, 4
		la $a0, buffer
		syscall
		
		li $v0, 4
		la $a0, out_str3
		syscall
		
		li $v0, 10
		syscall