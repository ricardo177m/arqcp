.section .data
  .global num
  .global ptrvec
.section .text
  .global vec_add_two # void vec_add_two(void)

vec_add_two:
  movq ptrvec(%rip), %rax # pointer to array
  movl num(%rip), %ecx # number of elements of array

  testl %ecx, %ecx # test if num is 0
  je _end

  _loop:
    leaq -4(%rax, %rcx, 4), %rdx # as %ecx starts in num

    addl $2, (%rdx) # move char to ptr2

    loop _loop # while num is greater than 0

_end:
  ret
