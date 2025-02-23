mov ecx, 10 ;Example value for ecx
mov ebx, array ; Base address of the array
mov edi, 0 ; Index
checkBounds:
cmp edi, ecx ; compare index with size
jge endLoop ; jump if index exceeds size
mov eax, [ebx+edi*4] ; Access memory location safely
; ... process the data in eax ...
add edi, 1 ; Increment index
jmp checkBounds ; Jump back to the beginning of the loop
endLoop:
; The loop has finished safely
; ... continue with the program ...
array times 100 dw 0 ; Reserve memory for 100 DWORDs