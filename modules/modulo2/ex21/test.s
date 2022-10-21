.section .text
	.global	func
func:
	movl	i(%rip), %eax	# copy variable i to register
	subl	$15, %eax	# subtract from eax
	cmpl	$8, %eax	# compare (set flags)
	ja	.L2		# if > jump to L2
	movl	%eax, %eax	# 
	leaq	.L4(%rip), %rdx		# set rdx to jumpt table base address
					# addresses are 64 bit, use rdx
	movslq	(%rdx,%rax,4), %rax	# copy to rax
					# indirect displacement address
					# base is L4 (rdx)
					# index is i (rax)
					# scale is 4 bits (long)
					# rax currently has the displacement
	addq	%rdx, %rax		# add displacement to base address
	notrack jmp	*%rax		# jump to the address
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L10-.L4
	.long	.L11-.L4
	.long	.L11-.L4
	.long	.L8-.L4
	.long	.L7-.L4
	.long	.L7-.L4
	.long	.L6-.L4
	.long	.L5-.L4
	.long	.L3-.L4
	.text
.L10:
	movl	$10, %eax
	ret
.L8:
	movl	$-5, %eax
	ret
.L7:
	movl	$23, %eax
	ret
.L6:
	movl	$16, %eax
	ret
.L5:
	movl	$100, %eax
	ret
.L3:
	movl	$1000, %eax
	ret
.L2:
	movl	$0, %eax
	ret
.L11:
	movl	$9, %eax
	ret

