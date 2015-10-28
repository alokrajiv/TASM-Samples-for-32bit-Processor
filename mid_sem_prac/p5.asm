#Print elements of an array in existing order
		.data
list:	.word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
size:	.word 10

		.text
main:
		li $t0, 0
		li $t1, 0
		lw $t3, size
		loop_start:
				sll $t2, $t0, 2
				addi $t1, $t2, 0
				li $v0, 1
				lw $a0, list($t1)
				syscall
			addi $t0, $t0, 1
			beq $t0, $t3, loop_end
			j loop_start
		loop_end:
		li $v0, 10
		syscall