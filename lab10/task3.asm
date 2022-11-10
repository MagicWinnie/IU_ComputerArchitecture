.data
	constK: .double 2.3520084283436096
.text
main:
	# f(x) = e^2 / pi * x
	# read double
	li a7, 7
	ecall
	fmv.d ft0, fa0 # ft0 -- x
	# process
	fld ft1, constK, t0
	# multiply by x
	fmul.d ft1, ft1, ft0
	fmv.d fa0, ft1
	# print double
	li a7, 3
	ecall
	# exit
	li a7, 10
	ecall
