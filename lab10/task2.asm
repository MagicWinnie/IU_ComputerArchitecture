.data
	const3: .double 3.0
	const4PI: .double 12.56636
.text
main:
	# surface area of sphere
	# read double
	li a7, 7
	ecall
	fmv.d ft0, fa0 # ft0 -- radius
	# process
	# multiply by itself (square)
	fmul.d ft1, ft0, ft0
	# multiply by 4PI
	fld ft2, const4PI, t0
	fmul.d ft1, ft1, ft2
	fmv.d fa0, ft1
	# print double
	li a7, 3
	ecall
	# print newline
	addi a0, zero, 10
	li a7, 11
	ecall
	# volume of sphere
	# multiply by itself (cube)
	fmul.d ft1, ft0, ft0
	fmul.d ft1, ft1, ft0
	# multiply by 4PI
	fld ft2, const4PI, t0
	fmul.d ft1, ft1, ft2
	# divide by 3
	fld ft2, const3, t0
	fdiv.d ft1, ft1, ft2
	fmv.d fa0, ft1
	# print double
	li a7, 3
	ecall
	# exit
	li a7, 10
	ecall
