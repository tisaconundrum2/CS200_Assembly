.data

insert_random:	.word 4
insert_min:	.word 4
insert_max:	.word 4
Ask_Number:	.asciiz "Enter the number of random numbers\n"
Output_Num:	.asciiz "shit was"
Ask_Min:	.asciiz "Enter the minimum number\n"
Output_Min:	.asciiz "Shit was "
Ask_Max:	.asciiz "Enter the maximum number\n"
Output_Max:	.asciiz "shit was "
Tell_Output:	.asciiz "You typed in : "
NewLine:        .asciiz "\n"

	.text
main:
	# Get and print an integer
	la        $a0, Ask_Number	# point to IntPrompt
	li        $v0, 4                   # print_string
	syscall
	li        $v0, 5                   # read_integer
        move      $a0, $v0                 # move input before it gets changed
	syscall
	la        $a0, Output_Num	# point to OutStr
	li        $v0, 4                   # print_string
	syscall
	li        $v0, 1                   # print_integer
	syscall
	la        $a0, NewLine             # point to NewLine
	li        $v0, 4                   # print_string
	syscall
	
	# Get and print an integer
	la        $a0, Ask_Min		# point to IntPrompt
	li        $v0, 4                   # print_string
	syscall
	li        $v0, 5                   # read_integer
        move      $a0, $v0                 # move input before it gets changed
	syscall
	la        $a0, Output_Min	# point to OutStr
	li        $v0, 4                   # print_string
	syscall
	li        $v0, 1                   # print_integer
	syscall
	la        $a0, NewLine             # point to NewLine
	li        $v0, 4                   # print_string
	syscall


	# Get and print an integer
	la        $a0, Ask_Max		# point to IntPrompt
	li        $v0, 4                   # print_string
	syscall
	li        $v0, 5                   # read_integer
        move      $a0, $v0                 # move input before it gets changed
	syscall
	la        $a0, Output_Max	# point to OutStr
	li        $v0, 4                   # print_string
	syscall
	li        $v0, 1                   # print_integer
	syscall
	la        $a0, NewLine             # point to NewLine
	li        $v0, 4                   # print_string
	syscall
	
	li $v0, 10			# Exit the Program
	syscall