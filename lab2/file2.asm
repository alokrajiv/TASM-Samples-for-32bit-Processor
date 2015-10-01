	# Add 2 floating numbers and print the result..
	.text
	
	.globl	main
main:
	# Print string msg1
	li	$v0,4		# print_string syscall code = 4
	la	$a0, msg1	# load the address of msg
	syscall

	# Get input A from user and save
	li	$v0,6		# read_int syscall code = 5
	syscall	
	mov.s	$f1,$f0		# syscall results returned in $v0

	# Print string msg2
	li	$v0,4		# print_string syscall code = 4
	la	$a0, msg2	# load the address of msg2
	syscall

	# Get input B from user and save
	li	$v0,6		# read_int syscall code = 5
	syscall	
	mov.s	$f0,$f0		# syscall results returned in $v0

	# Math!
	add.s	$f0, $f0, $f1	# A = A + B

	# Print string msg3
	li	$v0, 4
	la	$a0, msg3
	syscall

	# Print sum
	li	$v0,2		# print_int syscall code = 1
	mov.s	$f12, $f0	# int to print must be loaded into $a0
	syscall

	# Print \n
	li	$v0,4		# print_string syscall code = 4
	la	$a0, newline
	syscall

	li	$v0,10		# exit
	syscall

	# Start .data segment (data!)
	.data
msg1:	.asciiz	"Enter A:   "
msg2:	.asciiz	"Enter B:   "
msg3:	.asciiz	"A + B = "
newline:   .asciiz	"\n"