#Print biggest of elements of an array 
		.data
list:	.word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
size:	.word 10

		.text
main:
		li $t0, 0
		li $t1, 0
		li $t5, 0
		lw $t5, list($t5)
		lw $t3, size
		
		loop_start:
				sll $t2, $t0, 2
				addi $t1, $t2, 0
				lw $t6, list($t1)
				bgt $t5, $t6, skip
				move $t5, $t6
				skip:
			addi $t0, $t0, 1
			beq $t0, $t3, loop_end
			j loop_start
		loop_end:
		li $v0, 1
		move $a0, $t5
		syscall
		li $v0, 10
		syscall