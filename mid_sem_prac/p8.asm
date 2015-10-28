#Sum of squares of first n numbers.
		.data
n:		.word 3
		.text
main:
		lw $t0, n
		li $t1, 1
		li $t7, 0
		
		loop_start:
			move $t5, $t1
			mul $t6, $t5, $t5
			add $t7, $t7, $t6
			beq $t0, $t1, loop_end
			addi $t1, $t1, 1
			j loop_start
		loop_end:
		
		li $v0, 1
		move $a0, $t7
		syscall
		
		li $v0, 10
		syscall