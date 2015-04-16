# TITLE Add and Subtract           (AddSub.s)
# This program adds and subtracts 32-bit integers.

	.data
# variables
Num1:   .word   0x1000
Num2:   .word   0x5000
Num3:   .word   0x3000
Sum:    .word   0
OutStr:          .asciiz "\nYour input was "

	.text
	# start of the main procedure
	lw   $t0, Num1      		# Put Num1 into $t0
	lw   $t1, Num2      		# Put Num2 into $t1
	lw   $t2, Num3      		# Put Num3 into $t2
	add  $t4, $t0, $t1  		# Add first two numbers, put in $t4
	sub  $t4, $t4, $t2  		# Subtract third number from result
	sw   $t4, Sum			#Put result in sum
	
	la      $a0, OutStr           #point to OutStr
	li      $v0, 4                #print_string
	syscall
	
	la	$a0, Sum
	li	$v0, 4
	syscall

	li $v0, 10 
	syscall
	
	