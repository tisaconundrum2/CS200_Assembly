	.data
	#the_array
##my_list = []
myArray:	.space 40
cont:		.word 0

	#The Prompt
Prompt1: 	.asciiz  "Numbers: "
Prompt1_0:	.asciiz  "Continue? (1/0): "
Prompt1_1: 	.asciiz  "\nYou have exceeded the maximum amount of numbers"
Prompt1_2: 	.asciiz  "\nYour data will now sort"

Prompt2:	.asciiz  "\nYou input"
Prompt3:	.asciiz  ""
Prompt4:	.asciiz  "numbers"
	
	.text
#=============================================================================================
_start:		la	$t0, myArray		#  load base address of array into register $t0
#+++++++++++++++++++++++++ myArray is now loaded with t0 +++++++++++++++++++++++++++++++++++++
		
thePrompt:
	#==========================================================================#
	# li load immediate
	# la load addres
	# syscall system call
	# sw save word
	# lw load word
	# j jump to a label
	# v0, 5 read an int
	# v0, 4 print string
	# beq branch to target if
	# get all the variables into their proper addresses
		
	# t0 belongs to myArray
	# t1 is a temporary
	# t2 belongs to num_count
	# t3 belongs to count
	# t4 belongs to cont



##user_ans = '1'
li $t4, 1
##count = 0
li	$t3, 0
## loop:	
##     s = input("Numbers: ")
#=============	
	li	$v0, 4
	la	$a0, Prompt1		# ("Numbers: ")
	syscall
	li 	$v0, 5
	syscall
##     my_list.append(s)	
	sw 	$v0, 0($t0)
	addi	$t0, $t0, 1		#increment index by 1
##     user_ans = raw_input("Continue? (y/n): ")
#=============	
	li	$v0, 4
	la	$a0, Prompt1_0		# ("Continue? (1/0): ")
	syscall
	li 	$v0, 5
	syscall	
	sw	$v0, cont	



##     count += 4
	add 	$t3, $t3, 4		# count += 4

##     if count < 36:
	blt 	$t3, 36, thePrompt	# if count < 36:
##         print "\nYou have exceeded the maximum amount of numbers"
	li	$v0, 4
	la	$a0, Prompt1_1
	syscall
##         print "\nYour data will now sort"
	li	$v0, 4
	la	$a0, Prompt2		# ("Numbers: ")
	syscall
##	   goto sort:
	j sort
## if user_ans == 'y' or user_ans == '':
##	goto loop:
	beq	$t4, 1, thePrompt	# if 1 continue asking for numbers
##    
## print "\nyour input %d numbers" %len(my_list)
## print "\ndata byte array is %d" %count



#=============	
	





sort:
##break
##	la	$a0, Prompt2		# load address of string to be printed into $a0
##	li	$v0, 4			# load appropriate system call code into register $v0;
##	syscall
##	
##	la	$a0, Prompt3		# load address of string to be printed into $a0
##	li	$v0, 4			# load appropriate system call code into register $v0;
##	syscall				# print the string
##	move	$a0, $t2		# move integer to be printed into $a0:  $a0 = $t4
##	li 	$v0, 1			# print the integer
##	syscall
##	
##	la	$a0, Prompt4		# load address of string to be printed into $a0
##	li	$v0, 4			# load appropriate system call code into register $v0;
##	syscall
##
##
##
##	li	$t1, 5			#  $t1 = 5   ("load immediate")
##	sw 	$t1, ($t0)		#  first array element set to 5; indirect addressing
##	li 	$t1, 13			#   $t1 = 13
##	sw 	$t1, 4($t0)		#  second array element set to 13
##	li 	$t1, -7			#   $t1 = -7
##	sw 	$t1, 8($t0)		#  third array element set to -7

