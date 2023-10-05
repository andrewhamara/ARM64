.global _start
.align 2

.align 2
_start:
    cmp X0, #1    ; Compare number of arguments to 1
    b.le .ERR     ; Exit if the executable is the only argument

    ldr X2, [X1, #8]
    ldr X1, [X2]
    b .WRITE
    b .GRACE
    cmp X0, #0
#    b.eq .RED
#
#    adr X3, green_str
#    cmp X0, #0
#    b.eq .GREEN
#
#    adr X3, blue_str
#    cmp X0, #0
#    b.eq .BLUE
#
#    adr X3, yellow_str
#    cmp X0, #0
#    b.eq .YELLOW


#.align 2
#.RED:
#    adr X1, _ASCII_RED_STR
#    ldr X2, =_ASCII_RED_LEN
#    b .WRITE
#
#.align 2
#.GREEN:
#    adr X1, _ASCII_GREEN_STR
#    ldr X2, =_ASCII_GREEN_LEN
#    b .WRITE
#
#.align 2
#.BLUE:
#    adr X1, _ASCII_BLUE_STR
#    ldr X2, =_ASCII_BLUE_LEN
#    b .WRITE
#
#.align 2
#.YELLOW:
#    adr X1, _ASCII_YELLOW_STR
#    ldr X2, =_ASCII_YELLOW_LEN
#    b .WRITE

.align 2
.WRITE:
    mov X0, #1  ; Set output type to stdout
    mov X16, #4 ; Set syscall mode to write
    svc #0x80   ; system call
    b .GRACE     ; exit with return code 0

.align 2
.ERR:             ; No arguments were given
    mov X0, #0    ; Put 5 in return code
    mov X16, #1   ; Move exit to syscall option
    svc #0x80     ; System call

.align 2
.GRACE:
    mov X0, #0
    mov X16, #1
    svc #0x80

.align 2
_ASCII_RED_STR: .asciz "REDD"
.align 2
_ASCII_RED_LEN: .word 4

.align 2
_ASCII_GREEN_STR: .asciz "GREENN"
.align 2
_ASCII_GREEN_LEN: .word 6

.align 2
_ASCII_BLUE_STR: .asciz "BLUEE"
.align 2
_ASCII_BLUE_LEN: .word 5

.align 2
_ASCII_YELLOW_STR: .asciz "YELLOWW"
.align 2
_ASCII_YELLOW_LEN: .word 7


.align 2
red_str:    .asciz "red"

.align 2
green_str:  .asciz "green"

.align 2
blue_str:   .asciz "blue"

.align 2
yellow_str: .asciz "yellow"
