#Compute x raised to n using procedure
		.data
x:		.word 3
n:		.word 5
		.text

main:
		lw $s0, x
		lw $s1, n
		jal power_func	
		move $a0, $s3
		li $v0, 1
		syscall		
		li $v0, 10
		syscall
		
power_func:
		move $t0, $s0
		move $t1, $s1
		li $t2, 0
		li $s3, 1
		loop_start:
			mul $s3, $s3, $t0
			addi $t2, $t2, 1
			beq $t1, $t2, loop_end
			j loop_start
		loop_end:
		jr $ra