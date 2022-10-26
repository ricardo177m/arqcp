.section .data
    .global ptr1    # char*
    .global ptr2    # char*

.section .text
    .global str_copy_porto2 # void str_copy_porto2(void)

str_copy_porto2:
    movq	ptr1(%rip), %rcx    # 
    movq	ptr2(%rip), %rdx    # 
loop:
    movb	(%rcx), %al # 


