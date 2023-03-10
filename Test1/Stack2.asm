.686
.model flat

.stack 1000h


.code

_func proc

;;;; punt 1
push 1
push 2
push 3
;;;; punt 2
pop EAX
pop EBX
pop ECX
;;;; punt 3
push 4
push 5
push 6
;;;; punt 4
mov EAX, [ESP]
mov EBX, [ESP+4]
mov ECX, [ESP+8]
;;;; punt 5
push 7
;;;; punt 6
mov EAX, [ESP+4]
mov EBX, [ESP+8]
mov ECX, [ESP+12]
;;;; punt 7
mov ebp, esp
;;;; punt 8
sub esp, 4 ;;; tmp1
sub esp, 4 ;;; tmp2
;;;; punt 9
push 5
;;;; punt 10
mov dword ptr [EBP-4], 666h
;;;; punt 11
mov dword ptr [EBP-4], 42
;;;; punt 12

mov EAX, [EBP+4]
mov EBX, [EBP+8]
mov ECX, [EBP+12]


_func endp

end _func