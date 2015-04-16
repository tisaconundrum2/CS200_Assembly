# TITLE Iodemo	(IOdemo.s)
# This program demonstrates some system I/O.

	.data
# variables
IntPrompt:       .asciiz "Enter a integer: "
OutStr:          .asciiz "\nYour input was "
NewLine:         .asciiz "\n"

	.text
	.globl   main

main:   # start of the main procedure

	# Get and print an integer
	la        $a0, IntPrompt           # point to IntPrompt
	li        $v0, 4                   # print_string
	syscall
	li        $v0, 5                   # read_integer
        move      $a0, $v0                 # move input before it gets changed
	syscall
	la        $a0, OutStr              # point to OutStr
	li        $v0, 4                   # print_string
	syscall
	li        $v0, 1                   # print_integer
	syscall
	la        $a0, NewLine             # point to NewLine
	li        $v0, 4                   # print_string
	syscall

	li        $v0, 10                  # Exit the prograrm
	syscall

