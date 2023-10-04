.global _timeTest
.section __TEXT,__text,regular,pure_instructions

.align 2
_timeTest:
mov w8, w0              // store argument

.align 2
loop_start:
    sub w8, w8, #1      // w8--
    cbnz w8, loop_start // jnz 
    ret
