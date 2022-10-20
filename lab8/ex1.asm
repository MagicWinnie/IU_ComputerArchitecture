.data
	enterText: .asciz "Enter a number: "
	factorialText: .asciz "Factorial: "
.text
main:
	# print enterText
	la a0, enterText
	li a7, 4
	ecall
	# enter n
	li a7, 5
	ecall
	mv t1, a0
	addi t2, t2, 1
# factorial calculation loop
factorial:
	mul t2, t2, t1
	addi t1, t1, -1
	bgtz t1, factorial	
# ##########################
	# print factorialText
	la a0, factorialText
	li a7, 4
	ecall
	# print factorial
	mv a0, t2
	li a7, 1
	ecall
	# exit program
	li a7, 10
	ecall