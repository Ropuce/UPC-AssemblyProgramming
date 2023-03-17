.686
.model flat
.stack 1000h

.code

_main proc

mov EAX, 10
mov EBX, 3
xor ECX, ECX

loop_start:
cmp EAX, EBX
jle loop_end

sub EAX, EBX
inc ECX
jmp loop_start


loop_end:

xor EBX, EBX ; aquesta instruccio no es necessaria, la utilitzo per posar un breakpoint despres del loop

; Un cop arribat a aquest punt EAX conté la resta i ECX conté el quocient

_main endp

end _main