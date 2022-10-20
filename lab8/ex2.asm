.data
	enterString: .asciz "Enter the string: "
	amountWords: .asciz "Amount of words: "
	inputStr: .space 32
.text
main:
	# t1 -- address of first element of string
	# t2 -- iterator i
	# t3 -- counter with number of words
	# t4 -- char at i
	# print enterString
	la a0, enterString
	li a7, 4
	ecall
	# enter string
	li a7, 8
	la a0, inputStr
	li a1, 32
	la t1, inputStr
	ecall
	# at least 1 word
	addi t3, t3, 1
# string loop
iterateString:
	lb t4, 0(t1)
	addi t1, t1, 1
	beqz t4, exit
	addi t4, t4, -32
	bnez t4, iterateString
	addi t3, t3, 1
	j iterateString
exit:
# ###########
	# print amountWords
	la a0, amountWords
	li a7, 4
	ecall
	# print number of words
	mv a0, t3
	li a7, 1
	ecall
	# exit program
	li a7, 10
	ecall