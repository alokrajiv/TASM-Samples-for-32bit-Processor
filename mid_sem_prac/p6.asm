#Print elements of an array in reverse order
		.data
list:	.word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
size:	.word 10

		.text
main:
		lw $t0, size
		li $t4, 1
		loop_start:
			sub $t0, $t0, $t4
			sll $t1, $t0, 2
				li $v0, 1
				lw $a0, list($t1)
				syscall
			beq $t0, $zero, loop_end
			j loop_start
		loop_end:
		
		li $v0, 10
		syscall