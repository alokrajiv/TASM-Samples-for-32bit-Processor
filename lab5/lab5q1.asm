.data
pi:	.float	3.14159
fourptzero:	.float	4.0
threeptzero:	.float	3.0

radius:	.float	17.25	

surfaceArea:	.float	0.0	
Volume:	.float	0.0

.text
.globl main
main:

#Compute (4.0 * pi) which is used for both equations.

	l.s	$f2, fourptzero
	l.s	$f4, pi
	mul.s	$f4,$f2,$f4	#4.0 * pi

	l.s	$f6, radius	#radius

#Calculate Surface Area of Sphere
# surfaceArea = 4 * pi * radius^2

mul.s	$f7,$f6,$f6	#radius^1
mul.s	$f7,$f7,$f4	#4*pi*radius*2

s.s	$f7, surfaceArea #Store the calculated value

#Calculate Volume of Sphere
# Volume = (4 * pi * radius^3)/3

l.s	$f9, threeptzero
mul.s	$f8,$f4,$f6
div.s	$f8,$f8,$f9
s.s	$f7, Volume

li $v0,2
lw $a0,surfaceArea
syscall

li $v0,2
lw $a0,Volume
syscall

	