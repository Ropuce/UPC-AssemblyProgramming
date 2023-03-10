; SAMPLE ASM PROGRAM
.686
.model flat

.stack 1000h

.data





.code

_suma:

inc EAX
ret

_main proc
inici:
mov EAX, 1
call _suma
inc EAX
dec EAX
jmp inici

_main endp

end _main