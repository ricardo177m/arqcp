.section .data
  .global ptr1
  .global ptr2
.section .text
  .global str_copy_porto # char str_copy_porto(void)

str_copy_porto:
  movq ptr1(%rip), %rax 
  movq ptr2(%rip), %rsi

  _loop:
    movb (%rax), %dl

    cmpb $0, %dl # check for string end
    je _end

    cmpb $'o', %dl # if is a 'o' replace by 'u'
    je _replace
    
    _continue:
      movb %dl, (%rsi) # move char to ptr2

      incq %rax # next character ptr1
      incq %rsi # next character ptr2
      jmp _loop

_replace:
  movb $'u', %dl
  jmp _continue

_end:
  movb $0, (%rsi)
  ret
