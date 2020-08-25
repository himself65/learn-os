@Assembly language for ARM Architecture

.text
start:
    mov r0, #5
    mov r1, #4
    add r1, r1, r0
stop:
    b stop
