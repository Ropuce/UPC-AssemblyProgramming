; SAMPLE ASM PROGRAM
.686
.model flat

.stack 1000h

.data
; << DATA HERE >>

uarray word 1000h, 2000h, 3000h, 4000h
sarray sword -1, -2, -3, -4

i dword 42
pi dword ?
j dword ?

.code
_main proc
; << CODE HERE >>
_main endp

_directUarray proc
;no eax perque word es 16 bits
mov ax, [uarray]
mov bx, [uarray+2]
mov cx, uarray[4]
mov dx, 6[uarray]
_directUarray endp

_directSarray proc
;no eax perque word es 16 bits
mov ax, [sarray]
mov bx, [sarray+2]
mov cx, sarray[4]
mov dx, 6[sarray]
_directSarray endp

_indirect proc
lea ESI, uarray
mov ax, [ESI]
mov bx, [ESI+2]
mov cx, [ESI[4]] ; ESI[4] no es valid
mov dx, 6[ESI]
_indirect endp

_pointers proc
lea EAX, i
mov [pi], EAX
mov EBX, i
mov j, EBX
mov [EAX], -1

_pointers endp

end _main