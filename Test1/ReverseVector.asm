; SAMPLE ASM PROGRAM
.686
.model flat

.stack 1000h

.data

uarray dd 1,2,3,4,5
mida dd 5


.code

_reverse:

mov ECX, 0 ;int i = 0
mov EAX, mida
imul EAX, 4 ; 4 bytes per cada numero
mov EBX, 2
mov EDX, 0
idiv EBX ; mida/2
mov EDX, mida ;evita haver d'accedir a memoria molt sovint per aquest valor (int copiaMida = mida)
imul EDX, 4
loop_start:
cmp ECX, EAX ; compara "i" i "mida/2"
jge loop_end ; si (i >= mida/2) surt del bucle
mov EBX, uarray[ECX]
sub EDX, 4 ;copiaMida--
mov ESI, uarray[EDX]
mov uarray[ECX], ESI
mov uarray[EDX], EBX

add ECX, 4
jmp loop_start


loop_end:

ret

_main proc
call _reverse

mov EAX, 1

_main endp

end _main