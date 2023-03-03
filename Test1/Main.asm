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

abcdefarray word 1000h, 2000h, 3000h, 4000h, 5000h, 6000h

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
;pi = &i
lea EAX, i
mov [pi], EAX
;j = i
mov EBX, i
mov j, EBX
;*pi = -1
mov dword ptr [EAX], -1
_pointers endp

_arithmetic1 proc
; a = b + c
mov AX, abcdefarray[2]
add AX, abcdefarray[4]

; a = a + b + 5
mov AX, abcdefarray[0]
add AX, abcdefarray[2]
add AX, 5

; a = ((b + c) - (d-e))+(e-f+1)
;TODO acabar per deures

_arithmetic1 endp

_arithmetic2 proc
; a = 2*3
mov EAX, 2
imul EAX, 3

; a = 27 % 2
mov eax, 27
mov edx, 0
mov ebx, 2
idiv ebx

;a << 4, a >> 8
mov EAX, 1234h
shl EAX, 4 ; a = 0x12340
shr EAX, 8 ; a = 0x123

;for(uint b = 0; b < 10; b++) {}
mov EBX, 0
loop1:
;inici loop1


;final loop1
inc EBX
cmp EBX, 10
jl loop1 ; si EBX es menor a 10 continua el bucle

_arithmetic2 endp

end _main