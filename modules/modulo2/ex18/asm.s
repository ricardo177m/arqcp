.section .data
  A:
    .quad A
  B:
    .quad B
  .global i

.section .text
  .global sum # int sum(void)
  
sum:
  movl A(%rip), %eax
  movl B(%rip), %ecx
  movl i(%rip), %edi

  
