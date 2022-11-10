.data
	constK: .double 1.8
	const32: .double 32.0
.text
main:
	# celsius to fahrenheit
	# read double
	li a7, 7
	ecall
	fmv.d ft0, fa0
	# process
	# multiply by 9
	fld ft1, constK, t0
	fmul.d ft0, ft0, ft1
	# add 32
	fld ft1, const32, t0
	fadd.d ft0, ft0, ft1
	fmv.d fa0, ft0
	# print double
	li a7, 3
	ecall
	# exit
	li a7, 10
	ecall
