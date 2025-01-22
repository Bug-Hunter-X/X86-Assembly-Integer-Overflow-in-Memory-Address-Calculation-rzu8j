mov esi, [some_var] ; get the value from some location

;check for potential overflow
mov eax, esi
cmp eax, 0x7FFFFFFF ; check if esi is less than 2^31
jge overflow_handling ; jump to overflow handler if overflow is detected

mov eax, [ebx+esi*4+0x10] ; access memory only if no overflow
jmp next_instruction ; jump to next instruction

overflow_handling:
; handle the overflow appropriately (e.g., display an error message, return an error code, etc.)
next_instruction: