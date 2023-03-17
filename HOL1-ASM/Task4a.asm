.686
.model flat
.stack 1000h

.data

EXTERNDEF C n1:DWORD
EXTERNDEF C n2:DWORD

n1 DD 33
n2 DD 25

.code

_asmMAX proc

mov EAX, [n1]
cmp EAX, [n2]
jge done
mov EAX, [n2]

done:
ret

_asmMAX endp

END