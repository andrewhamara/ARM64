.global _start
.align 2                ; align to a multiple of 2 bytes

_start:
    mov X0, #1          ; move stdout (1) to file descriptor (X0)
    adr X1, helloworld  ; load &helloworld into X1
    mov X2, #13         ; move length of helloworld (13) to X2 (GP reg)
    mov X16, #4         ; move write (4) to syscall reg (X16)
    svc #0x80           ; system call

    mov X0, #0          ; move exit status (0) to exit status (X0)
    mov X16, #1         ; move exit (1) to syscall number (X16)
    svc #0x80           ; system call

helloworld: .ascii "Hello World!\n"
