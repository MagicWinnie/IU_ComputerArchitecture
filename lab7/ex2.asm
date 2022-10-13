.data
	enterInt: .asciz "Enter your integer: "
.text
main:
	# read first int
	call askInt
	li a7, 5
	ecall
	mv t3, a0
	# read second int
	call askInt
	li a7, 5
	ecall
	mv t4, a0
	# read third int
	call askInt
	li a7, 5
	ecall
	mv t5, a0
	# calculate sum
	add t6, t3, t4
	add t6, t6, t5
	# print sum
	call printInt
	# exit
	li a7, 10
	ecall
askInt:
	li a7, 4
	la a0, enterInt
	ecall
	ret
printInt:
	mv a0, t6
	li a7, 1
	ecall
	ret
