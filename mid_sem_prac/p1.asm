#print "HELLO WORLD!"
		.data
out_str:.asciiz "\nHELLO WORLD!\n"
		.text
main:
		li $v0, 4
		la $a0, out_str
		syscall
		
		li $v0, 10
		syscall