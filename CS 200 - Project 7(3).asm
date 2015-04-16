.globl main

.data
test1:     .word 92
test2:     .word 81
finalExam: .word 90
a_in:         .ascii "Enter value A:\n"
b_in:         .ascii "Enter value B:\n"
grade:     .word 0
result:    .word 0
#More data...

.text
#Program calculates a final grade based off of two midterms and a final. Midterms are
#weighted 30% and the final is weighted 40%. Grade is out of 1000.
final: 
li    $t4, 3 #PCSpim complains here.
li    $t5, 4
la    $t0, test1
lw    $t1, ($t0)
mult  $t1, $t4
mflo  $t1
la    $t0, test2
lw    $t2, ($t0)
mult  $t2, $t4
mflo  $t2
la    $t0, finalExam
lw    $t3, ($t0)
mult  $t3, $t5
mflo  $t3
add   $t4, $t1, $t2
add   $t4, $t4, $t3
la    $t0, grade
sw    $t4, ($t0)
#Print result to console
li    $v0, 1 
move  $a0, $t4
syscall


#Program continues...