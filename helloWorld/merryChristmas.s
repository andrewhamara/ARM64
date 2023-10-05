.global _start
.align 2                ; align to a multiple of 2 bytes

_start:
    mov X0, #1          ; move stdout (1) to file descriptor (X0)
    adr X1, christmas   ; load &christmas into X1
    mov X2, #133        ; move length of christmas (133) to X2 (GP reg)
    mov X16, #4         ; move write (4) to syscall reg (X16)
    svc #0x80           ; system call

    mov X0, #0          ; move exit status (0) to exit status (X0)
    mov X16, #1         ; move exit (1) to syscall number (X16)
    svc #0x80           ; system call

christmas:  .ascii "\033[31m---------------\n"
            .ascii "\033[32mM\033[31me\033[32mr\033[31mr\033[32my "
            .ascii "\033[31mC\033[32mh\033[31mr\033[32mi\033[31ms"
            .ascii "\033[32mt\033[31mm\033[32ma\033[31ms\033[32m!\n"
            .ascii "---------------\n"
